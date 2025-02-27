/* callback/callback.h.  Generated from callback.h.in by configure.  */
#ifndef _CALLBACK_H
#define _CALLBACK_H

/*
 * Copyright 1997-2017 Bruno Haible <bruno@clisp.org>
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

#include "vacall_r.h"
#include "trampoline_r.h"

typedef void (*__VA_function) (void*, va_alist);

#if 0
extern __TR_function alloc_callback (__VA_function, void*);
extern void free_callback (__TR_function);
extern int is_callback (void*);
extern __VA_function callback_address (void*);
extern void* callback_data (void*);
#else
#define alloc_callback(address,data)  \
  alloc_trampoline_r((__TR_function)get__vacall_r(),(void*)(__VA_function)(address),(void*)(data))
#define free_callback(function)  \
  free_trampoline_r(function)
#define is_callback(function)  \
  (is_trampoline_r(function)                                           \
   && trampoline_r_address(function) == (__TR_function)get__vacall_r() \
  )
#define callback_address(function)  \
  (__VA_function)trampoline_r_data0(function)
#define callback_data(function)  \
  trampoline_r_data1(function)
#endif

#endif /* _CALLBACK_H */
