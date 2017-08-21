#include "asm-hppa.h"
	.LEVEL 1.1
	IMPORT_MILLICODE($$dyncall)
	TEXT1()
	TEXT2()
	.align 4
GLOBL(__vacall)
		DECLARE_FUNCTION(__vacall)
DEF(__vacall)
	.PROC
	.CALLINFO FRAME=192,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=4
	.ENTRY
	copy %r3,%r1
	stw %r2,-20(%r30)
	copy %r30,%r3
	stwm %r1,192(%r30)
	addil LR!vacall_function-$global$,%r27
	ldo -32(%r3),%r2
	ldo 16(%r3),%r22
	sub %r22,%r2,%r20
	ldo 104(%r3),%r19
	stw %r4,96(%r3)
	ldo 72(%r3),%r21
	ldo 80(%r20),%r31
	ldo 64(%r20),%r20
	fstds %fr5,-16(%r19)
	ldo -48(%r3),%r19
	stw %r26,-36(%r3)
	copy %r22,%r26
	stw %r20,56(%r3)
	fstws %fr7L,-8(%r21)
	stw %r19,52(%r3)
	stw %r31,60(%r3)
	stw %r25,-40(%r3)
	stw %r24,-44(%r3)
	stw %r23,-48(%r3)
	fstds %fr7,8(%r21)
	fstws %fr4L,4(%r21)
	fstws %fr5L,0(%r21)
	fstws %fr6L,-4(%r21)
	stw %r0,16(%r3)
	stw %r2,20(%r3)
	stw %r0,24(%r3)
	stw %r0,28(%r3)
	stw %r28,48(%r3)
	ldw RR!vacall_function-$global$(%r1),%r22
	.CALL	ARGW0=GR
	bl $$dyncall,%r31
	copy %r31,%r2
	ldw 28(%r3),%r20
	comib,= 0,%r20,L(73)
	ldw -20(%r3),%r2
	comib,= 1,%r20,L(74)
	ldb 40(%r3),%r19
	comib,=,n 2,%r20,L(74)
	comib,=,n 3,%r20,L(61)
	comib,=,n 4,%r20,L(62)
	comib,=,n 5,%r20,L(63)
	comib,=,n 6,%r20,L(59)
	comib,=,n 7,%r20,L(59)
	comib,=,n 8,%r20,L(59)
	comib,= 9,%r20,L(59)
	ldo -10(%r20),%r19
	comib,<<,n 1,%r19,L(22)
	ldw 40(%r3),%r28
DEF(L(58))
	ldw 44(%r3),%r29
DEF(L(1))
	ldw -20(%r3),%r2
DEF(L(73))
	ldw 96(%r3),%r4
DEF(L(75))
DEF(L(77))
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
DEF(L(22))
	comib,= 12,%r20,L(64)
	ldo 40(%r3),%r19
	comib,=,n 13,%r20,L(65)
	comib,=,n 14,%r20,L(1)
	ldw 40(%r3),%r28
	comib,<> 15,%r20,L(73)
	ldw -20(%r3),%r2
	ldw 16(%r3),%r19
	bb,>=,n %r19,31,L(31)
	ldw 24(%r3),%r28
	b L(77)
	ldw 96(%r3),%r4
DEF(L(31))
	bb,>= %r19,30,L(73)
	ldw -20(%r3),%r2
	bb,>= %r19,28,L(34)
	ldw 32(%r3),%r20
	ldw 32(%r3),%r19
	comib,=,n 1,%r19,L(57)
	comib,=,n 2,%r19,L(66)
	comib,<> 4,%r19,L(75)
	ldw 96(%r3),%r4
	ldw 24(%r3),%r19
	b L(75)
	ldw 0(%r19),%r28
DEF(L(66))
	ldw 24(%r3),%r19
	b L(1)
	ldh 0(%r19),%r28
DEF(L(57))
	ldw 24(%r3),%r19
DEF(L(76))
	b L(1)
	ldb 0(%r19),%r28
DEF(L(34))
	ldo -1(%r20),%r19
	comib,<< 7,%r19,L(73)
	ldw -20(%r3),%r2
	comib,=,n 1,%r20,L(76)
	ldw 24(%r3),%r19
	comib,=,n 2,%r20,L(67)
	comib,= 3,%r20,L(68)
	ldw 24(%r3),%r21
	comib,= 4,%r20,L(69)
	ldw 24(%r3),%r22
	comib,=,n 5,%r20,L(70)
	comib,=,n 6,%r20,L(71)
	comib,= 7,%r20,L(72)
	ldw 24(%r3),%r19
	comib,<> 8,%r20,L(75)
	ldw 96(%r3),%r4
	ldw 24(%r3),%r19
	ldb 0(%r19),%r21
	ldb 1(%r19),%r22
	ldb 4(%r19),%r20
	ldb 5(%r19),%r31
	ldb 2(%r19),%r2
	ldb 6(%r19),%r4
	zdep %r22,15,16,%r22
	zdep %r31,15,16,%r31
	zdep %r21,7,8,%r21
	zdep %r20,7,8,%r20
	or %r21,%r22,%r21
	or %r20,%r31,%r20
	zdep %r2,23,24,%r2
	zdep %r4,23,24,%r4
	or %r21,%r2,%r21
	ldb 7(%r19),%r31
	or %r20,%r4,%r20
	ldb 3(%r19),%r22
	or %r20,%r31,%r29
	b L(1)
	or %r21,%r22,%r28
DEF(L(72))
	ldb 3(%r19),%r20
	ldb 4(%r19),%r21
	ldb 0(%r19),%r31
	ldb 1(%r19),%r22
	ldb 5(%r19),%r2
	zdep %r21,15,16,%r21
	zdep %r20,7,8,%r20
	or %r20,%r21,%r20
	zdep %r31,15,16,%r31
	zdep %r22,23,24,%r22
	zdep %r2,23,24,%r2
	or %r31,%r22,%r31
	ldb 6(%r19),%r4
	or %r20,%r2,%r20
	ldb 2(%r19),%r21
	or %r20,%r4,%r29
	b L(1)
	or %r31,%r21,%r28
DEF(L(71))
	ldb 2(%r21),%r19
	ldb 3(%r21),%r20
	ldb 4(%r21),%r22
	zdep %r20,15,16,%r20
	zdep %r19,7,8,%r19
	ldb 0(%r21),%r31
	or %r19,%r20,%r19
	zdep %r22,23,24,%r22
	ldb 5(%r21),%r2
	or %r19,%r22,%r19
	ldb 1(%r21),%r20
	zdep %r31,23,24,%r31
	or %r19,%r2,%r29
	b L(1)
	or %r31,%r20,%r28
DEF(L(70))
	ldb 1(%r22),%r19
	ldb 2(%r22),%r20
	ldb 3(%r22),%r21
	zdep %r20,15,16,%r20
	zdep %r19,7,8,%r19
	or %r19,%r20,%r19
	zdep %r21,23,24,%r21
	ldb 4(%r22),%r20
	or %r19,%r21,%r19
	ldb 0(%r22),%r28
	b L(1)
	or %r19,%r20,%r29
DEF(L(69))
	ldb 0(%r22),%r19
	ldb 1(%r22),%r20
	ldb 2(%r22),%r21
	zdep %r20,15,16,%r20
	zdep %r19,7,8,%r19
	or %r19,%r20,%r19
	zdep %r21,23,24,%r21
	ldb 3(%r22),%r20
	or %r19,%r21,%r19
	b L(1)
	or %r19,%r20,%r28
DEF(L(68))
	ldb 0(%r21),%r19
	ldb 1(%r21),%r20
	zdep %r19,15,16,%r19
	zdep %r20,23,24,%r20
	ldb 2(%r21),%r22
	or %r19,%r20,%r19
	b L(1)
	or %r19,%r22,%r28
DEF(L(67))
	ldw 24(%r3),%r19
	ldb 0(%r19),%r20
	ldb 1(%r19),%r21
	zdep %r20,23,24,%r20
	b L(1)
	or %r20,%r21,%r28
DEF(L(59))
	b L(1)
	ldw 40(%r3),%r28
DEF(L(65))
	ldw 40(%r3),%r28
	b L(58)
	fldds 0(%r19),%fr4
DEF(L(64))
	ldw 40(%r3),%r28
	b L(1)
	fldws 0(%r19),%fr4L
DEF(L(63))
	b L(1)
	ldh 40(%r3),%r28
DEF(L(62))
	ldh 40(%r3),%r19
	b L(1)
	extrs %r19,31,16,%r28
DEF(L(61))
	b L(1)
	ldb 40(%r3),%r28
DEF(L(74))
	b L(1)
	extrs %r19,31,8,%r28
	.EXIT
	.PROCEND
DEF(L(fe1))
	FUNEND(__vacall)
IMPORT_DATA(vacall_function)
#if defined __linux__ || defined __FreeBSD__ || defined __FreeBSD_kernel__ || defined __DragonFly__
	.section .note.GNU-stack,"",@progbits
#endif
