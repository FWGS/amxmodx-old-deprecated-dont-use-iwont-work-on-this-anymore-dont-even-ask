/* callback/trampoline_r/trampoline_r.h.  Generated from trampoline_r.h.in by configure.  */
#ifndef _TRAMPOLINE_R_H
#define _TRAMPOLINE_R_H

/*
 * Copyright 1995-2017 Bruno Haible <bruno@clisp.org>
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#if !defined(LIBFFCALL_VERSION)
/* Version number of libffcall: (major<<8) + minor. */
# define LIBFFCALL_VERSION 0x010D
#endif

#ifdef __cplusplus
typedef int (*__TR_function) (...);
#else
typedef int (*__TR_function) ();
#endif
extern __TR_function alloc_trampoline_r (__TR_function, void*, void*);
extern void free_trampoline_r (__TR_function);
extern int is_trampoline_r (void*);
extern __TR_function trampoline_r_address (void*);
extern void* trampoline_r_data0 (void*);
extern void* trampoline_r_data1 (void*);

#endif /* _TRAMPOLINE_R_H */
