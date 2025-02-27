/**
 * vim: set ts=4 :
 * =============================================================================
 * SourceMod
 * Copyright (C) 2004-2010 AlliedModders LLC.  All rights reserved.
 * =============================================================================
 *
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License, version 3.0, as published by the
 * Free Software Foundation.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
 * details.
 *
 * You should have received a copy of the GNU General Public License along with
 * this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 * As a special exception, AlliedModders LLC gives you permission to link the
 * code of this program (as well as its derivative works) to "Half-Life 2," the
 * "Source Engine," the "SourcePawn JIT," and any Game MODs that run on software
 * by the Valve Corporation.  You must obey the GNU General Public License in
 * all respects for all other code used.  Additionally, AlliedModders LLC grants
 * this exception to all derivative works.  AlliedModders LLC defines further
 * exceptions, found in LICENSE.txt (as of this writing, version JULY-31-2007),
 * or <http://www.sourcemod.net/license.php>.
 *
 * Version: $Id: detourhelpers.h 248 2008-08-27 00:56:22Z pred $
 */

#ifndef _INCLUDE_SOURCEMOD_DETOURHELPERS_H_
#define _INCLUDE_SOURCEMOD_DETOURHELPERS_H_

#if defined(__linux__) || defined(__APPLE__)
	#include <sys/mman.h>
	#include <unistd.h>
	#include <stdlib.h>
	#include <string.h>
	#ifndef PAGE_SIZE
		#define	PAGE_SIZE	4096
	#endif
	#define ALIGN(ar) ((long)ar & ~(PAGE_SIZE-1))
	#define	PAGE_EXECUTE_READWRITE	PROT_READ|PROT_WRITE|PROT_EXEC
	#if defined(__linux__)
		#include <malloc.h>
	#endif
#elif defined(WIN32)
	#include <windows.h>
#endif

struct patch_t
{
	patch_t()
	{
		patch[0] = 0;
		bytes = 0;
	}
	unsigned char patch[20];
	size_t bytes;
};

inline void ProtectMemory(void *addr, int length, int prot)
{
#if defined(__linux__) || defined(__APPLE__)
	void *addr2 = (void *)ALIGN(addr);
	mprotect(addr2, sysconf(_SC_PAGESIZE), prot);
#elif defined(WIN32)
	DWORD old_prot;
	VirtualProtect(addr, length, prot, &old_prot);
#endif
}

inline unsigned char *AllocatePageMemory(size_t size)
{
#if defined WIN32
	return (unsigned char *)VirtualAlloc(NULL, size, MEM_COMMIT, PAGE_EXECUTE_READWRITE);
#elif defined __GNUC__
#if defined __APPLE__
	unsigned char *addr = (unsigned char *)valloc(size);
	mprotect(addr, size, PROT_READ | PROT_WRITE | PROT_EXEC);
#else
	unsigned char *addr = (unsigned char *)mmap(nullptr, size, PROT_READ | PROT_WRITE | PROT_EXEC, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
#endif
	return addr;
#endif
}

inline void FreePageMemory(void *addr, size_t size)
{
#if defined(WIN32)
	VirtualFree(addr, 0, MEM_RELEASE);
#elif defined(__linux__)
	munmap(addr, size);
#else
	free(addr);
#endif
}

inline void FlushCache(void *addr, int length)
{
#ifdef __arm__
	__builtin___clear_cache((char*)ALIGN(addr), (char*)(ALIGN(addr) + PAGE_SIZE));
#endif
}

inline void SetMemPatchable(void *address, size_t size)
{
	ProtectMemory(address, (int)size, PAGE_EXECUTE_READWRITE);
}

inline void DoGatePatch(unsigned char *target, void *callback)
{
	SetMemPatchable(target, 20);

#ifdef __arm__
	if( ((unsigned long)target & 3) == 0 )
	{
        // ldr pc, [pc, #0]; .long addr; .long addr
        memcpy(target, "\x00\xf0\x9f\xe5\x00\x00\x00\x00\x00\x00\x00\x00", 12);
        *(unsigned long *)&target[4] = (unsigned long)callback;
        *(unsigned long *)&target[8] = (unsigned long)callback;
    }
    else // Thumb
    {
		target--;
		
        // add r0, pc, #4; ldr r0, [r0, #0]; mov pc, r0; mov pc, r0; .long addr
        memcpy(target, "\x01\xa0\x00\x68\x87\x46\x87\x46\x00\x00\x00\x00", 12);
        *(unsigned long *)&target[8] = (unsigned long)callback;
    }
    
    // clear instruction caches
	FlushCache( target, 20 );
#else
	target[0] = 0xFF;	/* JMP */
	target[1] = 0x25;	/* MEM32 */
	*(void **)(&target[2]) = callback;
#endif
}

inline void ApplyPatch(void *address, int offset, const patch_t *patch, patch_t *restore)
{
	ProtectMemory(address, 20, PAGE_EXECUTE_READWRITE);

	unsigned char *addr = (unsigned char *)address + offset;
	if (restore)
	{
		for (size_t i=0; i<patch->bytes; i++)
		{
			restore->patch[i] = addr[i];
		}
		restore->bytes = patch->bytes;
	}

	for (size_t i=0; i<patch->bytes; i++)
	{
		addr[i] = patch->patch[i];
	}
	FlushCache( address, 20 );
}

#endif //_INCLUDE_SOURCEMOD_DETOURHELPERS_H_
