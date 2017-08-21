#include "asm-m68k.h"
	.text
	.align	2
	.globl C(__builtin_avcall)
	DECLARE_FUNCTION(__builtin_avcall)
FUNBEGIN(__builtin_avcall)
	link.w %a6,#0
	movm.l #0x3820,-(%sp)
	move.l 8(%a6),%a2
	lea (-1024,%sp),%sp
	move.l 20(%a2),%a0
	sub.l %a2,%a0
	moveq.l #-32,%d0
	add.l %a0,%d0
	asr.l #2,%d0
	jble L(69)
	move.l %sp,%a1
	lea (32,%a2),%a0
	move.l %d0,%d2
	.align	2
L(6:)
	move.l (%a0)+,(%a1)+
	subq.l #1,%d2
	jbne L(6)
L(69:)
	moveq.l #16,%d0
	cmp.l 12(%a2),%d0
	jbeq L(75)
L(7:)
	move.l (%a2),%a0
	jsr (%a0)
	move.l %d0,%d2
	move.l %d1,%d3
	move.l 12(%a2),%a1
	moveq.l #1,%d1
	cmp.l %a1,%d1
	jbeq L(9)
	tst.l %a1
	jbeq L(71)
	moveq.l #2,%d4
	cmp.l %a1,%d4
	jbeq L(74)
	moveq.l #3,%d4
	cmp.l %a1,%d4
	jbeq L(74)
	moveq.l #4,%d4
	cmp.l %a1,%d4
	jbeq L(74)
	moveq.l #5,%d4
	cmp.l %a1,%d4
	jbeq L(73)
	moveq.l #6,%d4
	cmp.l %a1,%d4
	jbeq L(73)
	moveq.l #7,%d4
	cmp.l %a1,%d4
	jbeq L(71)
	moveq.l #8,%d4
	cmp.l %a1,%d4
	jbeq L(71)
	moveq.l #9,%d4
	cmp.l %a1,%d4
	jbeq L(71)
	moveq.l #10,%d4
	cmp.l %a1,%d4
	jbeq L(71)
	lea (-11,%a1),%a0
	moveq.l #1,%d4
	cmp.l %a0,%d4
	jbcc L(72)
	moveq.l #13,%d4
	cmp.l %a1,%d4
	jbeq L(76)
	moveq.l #14,%d4
	cmp.l %a1,%d4
	jbeq L(77)
	moveq.l #15,%d0
	cmp.l %a1,%d0
	jbeq L(71)
	moveq.l #16,%d1
	cmp.l %a1,%d1
	jbne L(9)
	move.l 4(%a2),%d1
	btst #9,%d1
	jbeq L(45)
	move.l 16(%a2),%d0
	moveq.l #1,%d4
	cmp.l %d0,%d4
	jbeq L(74)
	moveq.l #2,%d4
	cmp.l %d0,%d4
	jbeq L(73)
	moveq.l #4,%d4
	cmp.l %d0,%d4
	jbeq L(71)
	moveq.l #8,%d4
	cmp.l %d0,%d4
	jbeq L(72)
L(45:)
	btst #0,%d1
	jbeq L(9)
	move.l 16(%a2),%d0
	moveq.l #1,%d1
	cmp.l %d0,%d1
	jbeq L(78)
	moveq.l #2,%d1
	cmp.l %d0,%d1
	jbeq L(79)
	moveq.l #4,%d1
	cmp.l %d0,%d1
	jbeq L(80)
	moveq.l #8,%d1
	cmp.l %d0,%d1
	jbeq L(81)
	move.l %d0,%d1
	addq.l #3,%d1
	lsr.l #2,%d1
	subq.l #1,%d1
	jbmi L(9)
	move.l %d1,%d0
	lsl.l #2,%d0
	move.l %d0,%a1
	add.l 8(%a2),%a1
	move.l %d0,%a0
	add.l %d2,%a0
L(66:)
	move.l (%a0),(%a1)
	subq.l #4,%a0
	subq.l #4,%a1
	subq.l #1,%d1
	jbpl L(66)
	jbra L(9)
	.align	2
L(81:)
	move.l 8(%a2),%a0
	move.l %d2,%a1
	move.l (%a1),(%a0)
	move.l 4(%a1),4(%a0)
	jbra L(9)
	.align	2
L(80:)
	move.l 8(%a2),%a0
	move.l %d2,%a1
	move.l (%a1),(%a0)
	jbra L(9)
	.align	2
L(79:)
	move.l 8(%a2),%a0
	move.l %d2,%a1
	move.w (%a1),(%a0)
	jbra L(9)
	.align	2
L(78:)
	move.l 8(%a2),%a0
	move.l %d2,%a1
	move.b (%a1),(%a0)
	jbra L(9)
	.align	2
L(72:)
	move.l 8(%a2),%a0
	move.l %d2,(%a0)
	move.l %d3,4(%a0)
	jbra L(9)
	.align	2
L(71:)
	move.l 8(%a2),%a0
	move.l %d2,(%a0)
	jbra L(9)
	.align	2
L(73:)
	move.l 8(%a2),%a0
	move.w %d2,(%a0)
	jbra L(9)
	.align	2
L(74:)
	move.l 8(%a2),%a0
	move.b %d2,(%a0)
	jbra L(9)
	.align	2
L(77:)
	btst #6,7(%a2)
	jbeq L(39)
	move.l 8(%a2),%a0
	fmove.d %fp0,(%a0)
	jbra L(9)
	.align	2
L(39:)
	move.l 8(%a2),%a0
	move.l %d0,(%a0)
	move.l %d1,4(%a0)
	jbra L(9)
	.align	2
L(76:)
	move.l 4(%a2),%d2
	btst #6,%d2
	jbeq L(33)
	move.l 8(%a2),%a0
	fmove.s %fp0,(%a0)
	jbra L(9)
	.align	2
L(33:)
	btst #5,%d2
	jbeq L(35)
	move.l 8(%a2),%a0
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	fmove.d (%sp)+,%fp0
	fmove.s %fp0,(%a0)
	jbra L(9)
	.align	2
L(35:)
	move.l 8(%a2),%a0
	move.l %d0,(%a0)
	jbra L(9)
	.align	2
L(75:)
	move.l 8(%a2),%a1
	jbra L(7)
L(47:)
	.align	2
L(9:)
	clr.l %d0
	movm.l -16(%a6),#0x41c
	unlk %a6
	rts
L(fe1:)
	FUNEND(__builtin_avcall)
#if defined __linux__ || defined __FreeBSD__ || defined __FreeBSD_kernel__ || defined __DragonFly__
	.section .note.GNU-stack,"",@progbits
#endif
