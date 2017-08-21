#include "asm-hppa.h"
	.LEVEL 1.1
	IMPORT_MILLICODE($$dyncall)
	TEXT1()
	TEXT2()
	.align 4
GLOBL(__builtin_avcall)
		DECLARE_FUNCTION(__builtin_avcall)
DEF(__builtin_avcall)
	.PROC
	.CALLINFO FRAME=1152,CALLS,SAVE_RP,SAVE_SP,ENTRY_GR=5
	.ENTRY
	copy %r3,%r1
	stw %r2,-20(%r30)
	copy %r30,%r3
	stwm %r1,1152(%r30)
	stw %r5,1040(%r3)
	ldo -32(%r30),%r23
	copy %r19,%r5
	stw %r4,1044(%r3)
	stw %r19,-32(%r30)
	ldw 20(%r26),%r20
	sub %r26,%r20,%r20
	ldo 1064(%r20),%r20
	extrs %r20,29,30,%r20
	sub %r0,%r20,%r22
	comib,<= -4,%r22,L(77)
	copy %r26,%r4
	zdep %r22,29,30,%r20
	addl %r20,%r26,%r21
	addl %r20,%r23,%r23
	ldo 1064(%r21),%r21
DEF(L(6))
	ldws,ma 4(%r21),%r20
	ldo 1(%r22),%r22
	comib,> -4,%r22,L(6)
	stws,ma %r20,4(%r23)
DEF(L(77))
	ldw 12(%r4),%r21
	ldi 16,%r20
	comb,=,n %r20,%r21,L(83)
DEF(L(7))
	ldw 1056(%r4),%r25
	ldw 1060(%r4),%r26
	ldw 1052(%r4),%r24
	ldw 1048(%r4),%r23
	ldw 0(%r4),%r22
	.CALL	ARGW0=GR
	bl $$dyncall,%r31
	copy %r31,%r2
	ldw 12(%r4),%r21
	copy %r5,%r19
	comib,= 1,%r21,L(9)
	copy %r28,%r25
	comib,=,n 0,%r21,L(80)
	comib,=,n 2,%r21,L(79)
	comib,=,n 3,%r21,L(79)
	comib,=,n 4,%r21,L(79)
	comib,=,n 5,%r21,L(82)
	comib,=,n 6,%r21,L(82)
	comib,=,n 7,%r21,L(80)
	comib,=,n 8,%r21,L(80)
	comib,=,n 9,%r21,L(80)
	comib,=,n 10,%r21,L(80)
	ldo -11(%r21),%r20
	comib,<<,n 1,%r20,L(30)
	ldw 8(%r4),%r20
	stw %r29,4(%r20)
DEF(L(81))
	stw %r25,0(%r20)
DEF(L(9))
	ldw -20(%r3),%r2
DEF(L(96))
	ldi 0,%r28
DEF(L(97))
	ldw 1040(%r3),%r5
	ldw 1044(%r3),%r4
	ldo 64(%r3),%r30
	bv %r0(%r2)
	ldwm -64(%r30),%r3
DEF(L(30))
	comib,=,n 13,%r21,L(84)
	comib,=,n 14,%r21,L(85)
	comib,=,n 15,%r21,L(80)
	ldi 16,%r20
	comb,<> %r20,%r21,L(96)
	ldw -20(%r3),%r2
	ldw 4(%r4),%r20
	bb,>=,n %r20,31,L(39)
	ldw 16(%r4),%r20
	comib,=,n 1,%r20,L(86)
	comib,=,n 2,%r20,L(87)
	comib,=,n 4,%r20,L(88)
	comib,= 8,%r20,L(89)
	ldo 3(%r20),%r20
	extru %r20,29,30,%r23
	addib,<,n -1,%r23,L(97)
	ldi 0,%r28
	ldw 8(%r4),%r26
DEF(L(51))
	zdep %r23,29,30,%r20
	addl %r20,%r25,%r22
	addl %r20,%r26,%r20
	ldw 0(%r22),%r21
	addib,>= -1,%r23,L(51)
	stw %r21,0(%r20)
	b L(96)
	ldw -20(%r3),%r2
DEF(L(89))
	ldw 8(%r4),%r20
	ldw 0(%r28),%r21
	stw %r21,0(%r20)
	ldw 4(%r28),%r22
	b L(9)
	stw %r22,4(%r20)
DEF(L(88))
	ldw 8(%r4),%r21
	ldw 0(%r28),%r20
	b L(9)
	stw %r20,0(%r21)
DEF(L(87))
	ldw 8(%r4),%r21
	ldh 0(%r28),%r20
	b L(9)
	sth %r20,0(%r21)
DEF(L(86))
	ldw 8(%r4),%r21
	ldb 0(%r28),%r20
	b L(9)
	stb %r20,0(%r21)
DEF(L(39))
	bb,>= %r20,30,L(96)
	ldw -20(%r3),%r2
	bb,>= %r20,28,L(54)
	ldw 16(%r4),%r20
	comib,=,n 1,%r20,L(79)
	comib,=,n 2,%r20,L(82)
	comib,<> 4,%r20,L(97)
	ldi 0,%r28
DEF(L(80))
	b L(81)
	ldw 8(%r4),%r20
DEF(L(82))
	ldw 8(%r4),%r20
	b L(9)
	sth %r25,0(%r20)
DEF(L(79))
	ldw 8(%r4),%r20
DEF(L(98))
	b L(9)
	stb %r25,0(%r20)
DEF(L(54))
	comib,=,n 1,%r20,L(98)
	ldw 8(%r4),%r20
	comib,= 2,%r20,L(90)
	extrs %r28,23,24,%r21
	comib,= 3,%r20,L(91)
	extrs %r28,23,24,%r22
	comib,= 4,%r20,L(92)
	extrs %r28,15,16,%r22
	comib,= 5,%r20,L(93)
	extrs %r29,7,8,%r22
	comib,= 6,%r20,L(94)
	extrs %r29,15,16,%r23
	comib,= 7,%r20,L(95)
	extrs %r29,7,8,%r23
	comib,<> 8,%r20,L(96)
	ldw -20(%r3),%r2
	ldw 8(%r4),%r21
	extrs %r28,7,8,%r20
	stb %r20,0(%r21)
	extrs %r28,15,16,%r22
	ldw 8(%r4),%r20
	extrs %r28,23,24,%r21
	stb %r22,1(%r20)
	extrs %r29,7,8,%r23
	ldw 8(%r4),%r20
	extrs %r29,15,16,%r22
	stb %r21,2(%r20)
	extrs %r29,23,24,%r24
	ldw 8(%r4),%r20
	stb %r28,3(%r20)
	ldw 8(%r4),%r21
	stb %r23,4(%r21)
	ldw 8(%r4),%r20
	stb %r22,5(%r20)
	ldw 8(%r4),%r21
	stb %r24,6(%r21)
	ldw 8(%r4),%r20
	b L(9)
	stb %r29,7(%r20)
DEF(L(95))
	ldw 8(%r4),%r21
	extrs %r28,15,16,%r20
	stb %r20,0(%r21)
	extrs %r28,23,24,%r22
	ldw 8(%r4),%r20
	stb %r22,1(%r20)
	extrs %r29,15,16,%r24
	ldw 8(%r4),%r21
	extrs %r29,23,24,%r22
	stb %r28,2(%r21)
	ldw 8(%r4),%r20
	stb %r23,3(%r20)
	ldw 8(%r4),%r21
	stb %r24,4(%r21)
	ldw 8(%r4),%r20
	stb %r22,5(%r20)
	ldw 8(%r4),%r21
	b L(9)
	stb %r29,6(%r21)
DEF(L(94))
	ldw 8(%r4),%r21
	extrs %r28,23,24,%r20
	stb %r20,0(%r21)
	ldw 8(%r4),%r20
	stb %r28,1(%r20)
	extrs %r29,23,24,%r24
	ldw 8(%r4),%r20
	stb %r22,2(%r20)
	ldw 8(%r4),%r21
	stb %r23,3(%r21)
	ldw 8(%r4),%r20
	stb %r24,4(%r20)
	ldw 8(%r4),%r21
	b L(9)
	stb %r29,5(%r21)
DEF(L(93))
	ldw 8(%r4),%r20
	stb %r28,0(%r20)
	extrs %r29,15,16,%r23
	ldw 8(%r4),%r21
	extrs %r29,23,24,%r24
	stb %r22,1(%r21)
	ldw 8(%r4),%r20
	stb %r23,2(%r20)
	ldw 8(%r4),%r21
	stb %r24,3(%r21)
	ldw 8(%r4),%r20
	b L(9)
	stb %r29,4(%r20)
DEF(L(92))
	ldw 8(%r4),%r21
	extrs %r28,7,8,%r20
	stb %r20,0(%r21)
	ldw 8(%r4),%r21
	extrs %r28,23,24,%r23
	stb %r22,1(%r21)
	ldw 8(%r4),%r20
	stb %r23,2(%r20)
	ldw 8(%r4),%r21
	b L(9)
	stb %r28,3(%r21)
DEF(L(91))
	ldw 8(%r4),%r21
	extrs %r28,15,16,%r20
	stb %r20,0(%r21)
	ldw 8(%r4),%r20
	stb %r22,1(%r20)
	ldw 8(%r4),%r21
	b L(9)
	stb %r28,2(%r21)
DEF(L(90))
	ldw 8(%r4),%r20
	stb %r21,0(%r20)
	ldw 8(%r4),%r22
	b L(9)
	stb %r28,1(%r22)
DEF(L(85))
	ldw 8(%r4),%r20
	b L(9)
	fstds %fr4,0(%r20)
DEF(L(84))
	ldw 8(%r4),%r20
	b L(9)
	fstws %fr4L,0(%r20)
DEF(L(83))
	b L(7)
	ldw 8(%r4),%r28
	.EXIT
	.PROCEND
DEF(L(fe1))
	FUNEND(__builtin_avcall)
#if defined __linux__ || defined __FreeBSD__ || defined __FreeBSD_kernel__ || defined __DragonFly__
	.section .note.GNU-stack,"",@progbits
#endif
