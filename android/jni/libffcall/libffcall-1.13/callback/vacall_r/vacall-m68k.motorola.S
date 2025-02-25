#include "asm-m68k.h"
	.text
	.align	2
	DECLARE_FUNCTION(__vacall_r)
FUNBEGIN(__vacall_r)
	link.w %a6,#-32
	movm.l #0x3830,-(%sp)
	clr.l -32(%a6)
	lea (8,%a6),%a2
	move.l %a2,-28(%a6)
	clr.l -24(%a6)
	clr.l -20(%a6)
	move.l %a1,-4(%a6)
	pea -32(%a6)
	move.l 4(%a0),-(%sp)
	move.l (%a0),%a2
	jsr (%a2)
	addq.l #8,%sp
	move.l -20(%a6),%a3
	tst.l %a3
	jbeq L(1)
	moveq.l #1,%d2
	cmp.l %a3,%d2
	jbeq L(50)
	moveq.l #2,%d4
	cmp.l %a3,%d4
	jbeq L(50)
	moveq.l #3,%d2
	cmp.l %a3,%d2
	jbeq L(51)
	moveq.l #4,%d4
	cmp.l %a3,%d4
	jbeq L(52)
	moveq.l #5,%d2
	cmp.l %a3,%d2
	jbeq L(53)
	moveq.l #6,%d4
	cmp.l %a3,%d4
	jbeq L(49)
	moveq.l #7,%d2
	cmp.l %a3,%d2
	jbeq L(49)
	moveq.l #8,%d4
	cmp.l %a3,%d4
	jbeq L(49)
	moveq.l #9,%d2
	cmp.l %a3,%d2
	jbeq L(49)
	lea (-10,%a3),%a2
	moveq.l #1,%d4
	cmp.l %a2,%d4
	jbcs L(22)
	move.l -12(%a6),%d0
	move.l -8(%a6),%d1
	jbra L(1)
	.align	2
L(22:)
	moveq.l #12,%d2
	cmp.l %a3,%d2
	jbeq L(54)
	moveq.l #13,%d2
	cmp.l %a3,%d2
	jbeq L(55)
	moveq.l #14,%d4
	cmp.l %a3,%d4
	jbeq L(56)
	moveq.l #15,%d2
	cmp.l %a3,%d2
	jbne L(1)
	move.l -32(%a6),%d3
	btst #10,%d3
	jbeq L(37)
	move.l -16(%a6),%d2
	moveq.l #1,%d4
	cmp.l %d2,%d4
	jbeq L(57)
	moveq.l #2,%d4
	cmp.l %d2,%d4
	jbeq L(58)
	moveq.l #4,%d4
	cmp.l %d2,%d4
	jbeq L(59)
	moveq.l #8,%d4
	cmp.l %d2,%d4
	jbeq L(60)
L(37:)
	btst #0,%d3
	jbeq L(1)
	move.l -24(%a6),%d0
L(48:)
	move.l %d0,%a0
	jbra L(1)
	.align	2
L(60:)
	move.l -24(%a6),%a2
	move.l (%a2),%d0
	move.l 4(%a2),%d1
	jbra L(1)
	.align	2
L(59:)
	move.l -24(%a6),%a2
	move.l (%a2),%d0
	jbra L(1)
	.align	2
L(58:)
	move.l -24(%a6),%a2
	clr.l %d0
	move.w (%a2),%d0
	jbra L(1)
	.align	2
L(57:)
	move.l -24(%a6),%a2
	clr.l %d0
	move.b (%a2),%d0
	jbra L(1)
	.align	2
L(56:)
	move.l -12(%a6),%d0
	jbra L(48)
	.align	2
L(55:)
	btst #6,-29(%a6)
	jbeq L(31)
	fmove.d -12(%a6),%fp0
	jbra L(1)
	.align	2
L(31:)
	move.l -12(%a6),%d0
	move.l -8(%a6),%d1
	jbra L(1)
	.align	2
L(54:)
	move.l -32(%a6),%d2
	btst #6,%d2
	jbeq L(25)
	fmove.s -12(%a6),%fp0
	jbra L(1)
	.align	2
L(25:)
	btst #5,%d2
	jbeq L(27)
	fmove.s -12(%a6),%fp1
	fmove.d %fp1,-(%sp)
	move.l (%sp)+,%d0
	move.l (%sp)+,%d1
	jbra L(1)
	.align	2
L(27:)
	move.l -12(%a6),%d0
	jbra L(1)
	.align	2
L(49:)
	move.l -12(%a6),%d0
	jbra L(1)
	.align	2
L(53:)
	clr.l %d0
	move.w -12(%a6),%d0
	jbra L(1)
	.align	2
L(52:)
	move.w -12(%a6),%d0
	ext.l %d0
	jbra L(1)
	.align	2
L(51:)
	clr.l %d0
	move.b -12(%a6),%d0
	jbra L(1)
	.align	2
L(50:)
	move.b -12(%a6),%d0
	extb.l %d0
L(39:)
L(1:)
	movm.l -52(%a6),#0xc1c
	unlk %a6
	rts
L(fe1:)
	FUNEND(__vacall_r)
	.align	2
	.globl C(get__vacall_r)
	DECLARE_FUNCTION(get__vacall_r)
FUNBEGIN(get__vacall_r)
	link.w %a6,#0
	move.l %a5,-(%sp)
	lea (%pc, _GLOBAL_OFFSET_TABLE_@GOTPC), %a5
	move.l __vacall_r@GOT(%a5),%a0
	move.l %a0,%d0
	move.l (%sp)+,%a5
	unlk %a6
	rts
L(fe2:)
	FUNEND(get__vacall_r)
#if defined __linux__ || defined __FreeBSD__ || defined __FreeBSD_kernel__ || defined __DragonFly__
	.section .note.GNU-stack,"",@progbits
#endif
