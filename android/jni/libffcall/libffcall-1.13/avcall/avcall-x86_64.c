/**
  Copyright 1993 Bill Triggs <Bill.Triggs@inrialpes.fr>
  Copyright 1995-2017 Bruno Haible <bruno@clisp.org>

  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation; either version 2 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program.  If not, see <http://www.gnu.org/licenses/>.
**/
/*----------------------------------------------------------------------
  !!! THIS ROUTINE MUST BE COMPILED gcc -O -fno-omit-frame-pointer !!!

  Foreign function interface for a Linux x86_64 (a.k.a. amd64) with gcc.

  This calls a C function with an argument list built up using macros
  defined in avcall.h.

  x86_64 Argument Passing Conventions are documented in
  http://www.x86-64.org/abi.pdf.

  Up to six words are passed in integer registers (%rdi, %rsi, %rdx, %rcx,
  %r8, %r9). Up to 8 float/double arguments are passed in SSE registers
  (%xmm0..%xmm7). Varargs functions expect an upper bound for the number
  of SSE register arguments in %al (in the range 0..8). All arguments
  are passed on the stack with word alignment. Structure args are passed
  as true structures embedded in the argument stack. 

  Integers are returned in %rax, %rdx. Float/double values are returned
  in %xmm0, %xmm1. To return a structure larger than 16 bytes, the called
  function copies the value to space pointed to by its first argument,
  and all other arguments are shifted down by one.
  ----------------------------------------------------------------------*/
#include "avcall.h.in"

#define RETURN(TYPE,VAL)	(*(TYPE*)l->raddr = (TYPE)(VAL))

register __avword iarg1 __asm__("rdi");
register __avword iarg2 __asm__("rsi");
register __avword iarg3 __asm__("rdx");
register __avword iarg4 __asm__("rcx");
register __avword iarg5 __asm__("r8");
register __avword iarg6 __asm__("r9");

register double farg1 __asm__("xmm0");
register double farg2 __asm__("xmm1");
register double farg3 __asm__("xmm2");
register double farg4 __asm__("xmm3");
register double farg5 __asm__("xmm4");
register double farg6 __asm__("xmm5");
register double farg7 __asm__("xmm6");
register double farg8 __asm__("xmm7");

int
__builtin_avcall(av_alist* l)
{
  register __avword*	sp	__asm__("rsp");	/* C names for registers */
  register __avword	iret	__asm__("rax");
  register __avword	iret2	__asm__("rdx");
  register double	dret	__asm__("xmm0");

  __avword* argframe = __builtin_alloca(__AV_ALIST_WORDS * sizeof(__avword)); /* make room for argument list */
  int arglen = l->aptr - l->args;
  int farglen = l->faptr - l->fargs;
  __avword i, i2;

  for (i = 0; i < arglen; i++)		/* push function args onto stack */
    argframe[i] = l->args[i];

  /* put 6 integer args into registers */
  iarg1 = l->iargs[0];
  iarg2 = l->iargs[1];
  iarg3 = l->iargs[2];
  iarg4 = l->iargs[3];
  iarg5 = l->iargs[4];
  iarg6 = l->iargs[5];

  /* Call function.  It's OK to pass 8 values in SSE registers even if the
     called function takes less than 8 float/double arguments. Similarly
     for the integer arguments. */
  if (l->rtype == __AVfloat) {
    *(float*)l->raddr =
      (*(float(*)())l->func)(farglen > 0 ? l->fargs[0] : 0.0,
                             farglen > 1 ? l->fargs[1] : 0.0,
                             farglen > 2 ? l->fargs[2] : 0.0,
                             farglen > 3 ? l->fargs[3] : 0.0,
                             farglen > 4 ? l->fargs[4] : 0.0,
                             farglen > 5 ? l->fargs[5] : 0.0,
                             farglen > 6 ? l->fargs[6] : 0.0,
                             farglen > 7 ? l->fargs[7] : 0.0);
  } else
  if (l->rtype == __AVdouble) {
    *(double*)l->raddr =
      (*(double(*)())l->func)(farglen > 0 ? l->fargs[0] : 0.0,
                              farglen > 1 ? l->fargs[1] : 0.0,
                              farglen > 2 ? l->fargs[2] : 0.0,
                              farglen > 3 ? l->fargs[3] : 0.0,
                              farglen > 4 ? l->fargs[4] : 0.0,
                              farglen > 5 ? l->fargs[5] : 0.0,
                              farglen > 6 ? l->fargs[6] : 0.0,
                              farglen > 7 ? l->fargs[7] : 0.0);
  } else {
    i = (*l->func)(farglen > 0 ? l->fargs[0] : 0.0,
                   farglen > 1 ? l->fargs[1] : 0.0,
                   farglen > 2 ? l->fargs[2] : 0.0,
                   farglen > 3 ? l->fargs[3] : 0.0,
                   farglen > 4 ? l->fargs[4] : 0.0,
                   farglen > 5 ? l->fargs[5] : 0.0,
                   farglen > 6 ? l->fargs[6] : 0.0,
                   farglen > 7 ? l->fargs[7] : 0.0);
    i2 = iret2;

    /* save return value */
    if (l->rtype == __AVvoid) {
    } else
    if (l->rtype == __AVword) {
      RETURN(__avword, i);
    } else
    if (l->rtype == __AVchar) {
      RETURN(char, i);
    } else
    if (l->rtype == __AVschar) {
      RETURN(signed char, i);
    } else
    if (l->rtype == __AVuchar) {
      RETURN(unsigned char, i);
    } else
    if (l->rtype == __AVshort) {
      RETURN(short, i);
    } else
    if (l->rtype == __AVushort) {
      RETURN(unsigned short, i);
    } else
    if (l->rtype == __AVint) {
      RETURN(int, i);
    } else
    if (l->rtype == __AVuint) {
      RETURN(unsigned int, i);
    } else
    if (l->rtype == __AVlong) {
      RETURN(long, i);
    } else
    if (l->rtype == __AVulong) {
      RETURN(unsigned long, i);
    } else
    if (l->rtype == __AVlonglong) {
      RETURN(long long, i);
    } else
    if (l->rtype == __AVulonglong) {
      RETURN(unsigned long long, i);
    } else
  /* see above
    if (l->rtype == __AVfloat) {
    } else
    if (l->rtype == __AVdouble) {
    } else
  */
    if (l->rtype == __AVvoidp) {
      RETURN(void*, i);
    } else
    if (l->rtype == __AVstruct) {
      if (l->flags & __AV_PCC_STRUCT_RETURN) {
        /* pcc struct return convention: need a  *(TYPE*)l->raddr = *(TYPE*)i;  */
        if (l->rsize == sizeof(char)) {
          RETURN(char, *(char*)i);
        } else
        if (l->rsize == sizeof(short)) {
          RETURN(short, *(short*)i);
        } else
        if (l->rsize == sizeof(int)) {
          RETURN(int, *(int*)i);
        } else
        if (l->rsize == sizeof(long)) {
          RETURN(long, *(long*)i);
        } else {
          int n = (l->rsize + sizeof(__avword)-1)/sizeof(__avword);
          while (--n >= 0)
            ((__avword*)l->raddr)[n] = ((__avword*)i)[n];
        }
      } else {
        /* normal struct return convention */
        if (l->flags & __AV_REGISTER_STRUCT_RETURN) {
          /* Return structs of size <= 16 in registers. */
          if (l->rsize > 0 && l->rsize <= 16) {
            if (l->rsize == 1) {
              ((unsigned char *)l->raddr)[0] = (unsigned char)(i);
            } else
            if (l->rsize == 2) {
              ((unsigned char *)l->raddr)[0] = (unsigned char)(i);
              ((unsigned char *)l->raddr)[1] = (unsigned char)(i>>8);
            } else
            if (l->rsize == 3) {
              ((unsigned char *)l->raddr)[0] = (unsigned char)(i);
              ((unsigned char *)l->raddr)[1] = (unsigned char)(i>>8);
              ((unsigned char *)l->raddr)[2] = (unsigned char)(i>>16);
            } else
            if (l->rsize == 4) {
              ((unsigned char *)l->raddr)[0] = (unsigned char)(i);
              ((unsigned char *)l->raddr)[1] = (unsigned char)(i>>8);
              ((unsigned char *)l->raddr)[2] = (unsigned char)(i>>16);
              ((unsigned char *)l->raddr)[3] = (unsigned char)(i>>24);
            } else
            if (l->rsize == 5) {
              ((unsigned char *)l->raddr)[0] = (unsigned char)(i);
              ((unsigned char *)l->raddr)[1] = (unsigned char)(i>>8);
              ((unsigned char *)l->raddr)[2] = (unsigned char)(i>>16);
              ((unsigned char *)l->raddr)[3] = (unsigned char)(i>>24);
              ((unsigned char *)l->raddr)[4] = (unsigned char)(i>>32);
            } else
            if (l->rsize == 6) {
              ((unsigned char *)l->raddr)[0] = (unsigned char)(i);
              ((unsigned char *)l->raddr)[1] = (unsigned char)(i>>8);
              ((unsigned char *)l->raddr)[2] = (unsigned char)(i>>16);
              ((unsigned char *)l->raddr)[3] = (unsigned char)(i>>24);
              ((unsigned char *)l->raddr)[4] = (unsigned char)(i>>32);
              ((unsigned char *)l->raddr)[5] = (unsigned char)(i>>40);
            } else
            if (l->rsize == 7) {
              ((unsigned char *)l->raddr)[0] = (unsigned char)(i);
              ((unsigned char *)l->raddr)[1] = (unsigned char)(i>>8);
              ((unsigned char *)l->raddr)[2] = (unsigned char)(i>>16);
              ((unsigned char *)l->raddr)[3] = (unsigned char)(i>>24);
              ((unsigned char *)l->raddr)[4] = (unsigned char)(i>>32);
              ((unsigned char *)l->raddr)[5] = (unsigned char)(i>>40);
              ((unsigned char *)l->raddr)[6] = (unsigned char)(i>>48);
            } else
            if (l->rsize >= 8 && l->rsize <= 16) {
              ((unsigned char *)l->raddr)[0] = (unsigned char)(i);
              ((unsigned char *)l->raddr)[1] = (unsigned char)(i>>8);
              ((unsigned char *)l->raddr)[2] = (unsigned char)(i>>16);
              ((unsigned char *)l->raddr)[3] = (unsigned char)(i>>24);
              ((unsigned char *)l->raddr)[4] = (unsigned char)(i>>32);
              ((unsigned char *)l->raddr)[5] = (unsigned char)(i>>40);
              ((unsigned char *)l->raddr)[6] = (unsigned char)(i>>48);
              ((unsigned char *)l->raddr)[7] = (unsigned char)(i>>56);
              if (l->rsize == 8) {
              } else
              if (l->rsize == 9) {
                ((unsigned char *)l->raddr)[8+0] = (unsigned char)(i2);
              } else
              if (l->rsize == 10) {
                ((unsigned char *)l->raddr)[8+0] = (unsigned char)(i2);
                ((unsigned char *)l->raddr)[8+1] = (unsigned char)(i2>>8);
              } else
              if (l->rsize == 11) {
                ((unsigned char *)l->raddr)[8+0] = (unsigned char)(i2);
                ((unsigned char *)l->raddr)[8+1] = (unsigned char)(i2>>8);
                ((unsigned char *)l->raddr)[8+2] = (unsigned char)(i2>>16);
              } else
              if (l->rsize == 12) {
                ((unsigned char *)l->raddr)[8+0] = (unsigned char)(i2);
                ((unsigned char *)l->raddr)[8+1] = (unsigned char)(i2>>8);
                ((unsigned char *)l->raddr)[8+2] = (unsigned char)(i2>>16);
                ((unsigned char *)l->raddr)[8+3] = (unsigned char)(i2>>24);
              } else
              if (l->rsize == 13) {
                ((unsigned char *)l->raddr)[8+0] = (unsigned char)(i2);
                ((unsigned char *)l->raddr)[8+1] = (unsigned char)(i2>>8);
                ((unsigned char *)l->raddr)[8+2] = (unsigned char)(i2>>16);
                ((unsigned char *)l->raddr)[8+3] = (unsigned char)(i2>>24);
                ((unsigned char *)l->raddr)[8+4] = (unsigned char)(i2>>32);
              } else
              if (l->rsize == 14) {
                ((unsigned char *)l->raddr)[8+0] = (unsigned char)(i2);
                ((unsigned char *)l->raddr)[8+1] = (unsigned char)(i2>>8);
                ((unsigned char *)l->raddr)[8+2] = (unsigned char)(i2>>16);
                ((unsigned char *)l->raddr)[8+3] = (unsigned char)(i2>>24);
                ((unsigned char *)l->raddr)[8+4] = (unsigned char)(i2>>32);
                ((unsigned char *)l->raddr)[8+5] = (unsigned char)(i2>>40);
              } else
              if (l->rsize == 15) {
                ((unsigned char *)l->raddr)[8+0] = (unsigned char)(i2);
                ((unsigned char *)l->raddr)[8+1] = (unsigned char)(i2>>8);
                ((unsigned char *)l->raddr)[8+2] = (unsigned char)(i2>>16);
                ((unsigned char *)l->raddr)[8+3] = (unsigned char)(i2>>24);
                ((unsigned char *)l->raddr)[8+4] = (unsigned char)(i2>>32);
                ((unsigned char *)l->raddr)[8+5] = (unsigned char)(i2>>40);
                ((unsigned char *)l->raddr)[8+6] = (unsigned char)(i2>>48);
              } else
              if (l->rsize == 16) {
                ((unsigned char *)l->raddr)[8+0] = (unsigned char)(i2);
                ((unsigned char *)l->raddr)[8+1] = (unsigned char)(i2>>8);
                ((unsigned char *)l->raddr)[8+2] = (unsigned char)(i2>>16);
                ((unsigned char *)l->raddr)[8+3] = (unsigned char)(i2>>24);
                ((unsigned char *)l->raddr)[8+4] = (unsigned char)(i2>>32);
                ((unsigned char *)l->raddr)[8+5] = (unsigned char)(i2>>40);
                ((unsigned char *)l->raddr)[8+6] = (unsigned char)(i2>>48);
                ((unsigned char *)l->raddr)[8+7] = (unsigned char)(i2>>56);
              }
            }
          }
        }
      }
    }
  }
  return 0;
}
