	.file	"avcall-m68k.c"
	.text
	.align	2
	.globl	__builtin_avcall
	.type	__builtin_avcall,@function
__builtin_avcall:
	link.w %a6,#0
	movm.l #0x3820,-(%sp)
	move.l 8(%a6),%a2
	lea (-1024,%sp),%sp
	move.l 20(%a2),%a0
	sub.l %a2,%a0
	moveq.l #-32,%d0
	add.l %a0,%d0
	asr.l #2,%d0
	jble .L69
	move.l %sp,%a1
	lea (32,%a2),%a0
	move.l %d0,%d2
	.align	2
.L6:
	move.l (%a0)+,(%a1)+
	subq.l #1,%d2
	jbne .L6
.L69:
	moveq.l #16,%d0
	cmp.l 12(%a2),%d0
	jbeq .L75
.L7:
	move.l (%a2),%a0
	jsr (%a0)
	move.l %d0,%d2
	move.l %d1,%d3
	move.l 12(%a2),%a1
	moveq.l #1,%d1
	cmp.l %a1,%d1
	jbeq .L9
	tst.l %a1
	jbeq .L71
	moveq.l #2,%d4
	cmp.l %a1,%d4
	jbeq .L74
	moveq.l #3,%d4
	cmp.l %a1,%d4
	jbeq .L74
	moveq.l #4,%d4
	cmp.l %a1,%d4
	jbeq .L74
	moveq.l #5,%d4
	cmp.l %a1,%d4
	jbeq .L73
	moveq.l #6,%d4
	cmp.l %a1,%d4
	jbeq .L73
	moveq.l #7,%d4
	cmp.l %a1,%d4
	jbeq .L71
	moveq.l #8,%d4
	cmp.l %a1,%d4
	jbeq .L71
	moveq.l #9,%d4
	cmp.l %a1,%d4
	jbeq .L71
	moveq.l #10,%d4
	cmp.l %a1,%d4
	jbeq .L71
	lea (-11,%a1),%a0
	moveq.l #1,%d4
	cmp.l %a0,%d4
	jbcc .L72
	moveq.l #13,%d4
	cmp.l %a1,%d4
	jbeq .L76
	moveq.l #14,%d4
	cmp.l %a1,%d4
	jbeq .L77
	moveq.l #15,%d0
	cmp.l %a1,%d0
	jbeq .L71
	moveq.l #16,%d1
	cmp.l %a1,%d1
	jbne .L9
	move.l 4(%a2),%d1
	btst #9,%d1
	jbeq .L45
	move.l 16(%a2),%d0
	moveq.l #1,%d4
	cmp.l %d0,%d4
	jbeq .L74
	moveq.l #2,%d4
	cmp.l %d0,%d4
	jbeq .L73
	moveq.l #4,%d4
	cmp.l %d0,%d4
	jbeq .L71
	moveq.l #8,%d4
	cmp.l %d0,%d4
	jbeq .L72
.L45:
	btst #0,%d1
	jbeq .L9
	move.l 16(%a2),%d0
	moveq.l #1,%d1
	cmp.l %d0,%d1
	jbeq .L78
	moveq.l #2,%d1
	cmp.l %d0,%d1
	jbeq .L79
	moveq.l #4,%d1
	cmp.l %d0,%d1
	jbeq .L80
	moveq.l #8,%d1
	cmp.l %d0,%d1
	jbeq .L81
	move.l %d0,%d1
	addq.l #3,%d1
	lsr.l #2,%d1
	subq.l #1,%d1
	jbmi .L9
	move.l %d1,%d0
	lsl.l #2,%d0
	move.l %d0,%a1
	add.l 8(%a2),%a1
	move.l %d0,%a0
	add.l %d2,%a0
.L66:
	move.l (%a0),(%a1)
	subq.l #4,%a0
	subq.l #4,%a1
	subq.l #1,%d1
	jbpl .L66
	jbra .L9
	.align	2
.L81:
	move.l 8(%a2),%a0
	move.l %d2,%a1
	move.l (%a1),(%a0)
	move.l 4(%a1),4(%a0)
	jbra .L9
	.align	2
.L80:
	move.l 8(%a2),%a0
	move.l %d2,%a1
	move.l (%a1),(%a0)
	jbra .L9
	.align	2
.L79:
	move.l 8(%a2),%a0
	move.l %d2,%a1
	move.w (%a1),(%a0)
	jbra .L9
	.align	2
.L78:
	move.l 8(%a2),%a0
	move.l %d2,%a1
	move.b (%a1),(%a0)
	jbra .L9
	.align	2
.L72:
	move.l 8(%a2),%a0
	move.l %d2,(%a0)
	move.l %d3,4(%a0)
	jbra .L9
	.align	2
.L71:
	move.l 8(%a2),%a0
	move.l %d2,(%a0)
	jbra .L9
	.align	2
.L73:
	move.l 8(%a2),%a0
	move.w %d2,(%a0)
	jbra .L9
	.align	2
.L74:
	move.l 8(%a2),%a0
	move.b %d2,(%a0)
	jbra .L9
	.align	2
.L77:
	btst #6,7(%a2)
	jbeq .L39
	move.l 8(%a2),%a0
	fmove.d %fp0,(%a0)
	jbra .L9
	.align	2
.L39:
	move.l 8(%a2),%a0
	move.l %d0,(%a0)
	move.l %d1,4(%a0)
	jbra .L9
	.align	2
.L76:
	move.l 4(%a2),%d2
	btst #6,%d2
	jbeq .L33
	move.l 8(%a2),%a0
	fmove.s %fp0,(%a0)
	jbra .L9
	.align	2
.L33:
	btst #5,%d2
	jbeq .L35
	move.l 8(%a2),%a0
	move.l %d1,-(%sp)
	move.l %d0,-(%sp)
	fmove.d (%sp)+,%fp0
	fmove.s %fp0,(%a0)
	jbra .L9
	.align	2
.L35:
	move.l 8(%a2),%a0
	move.l %d0,(%a0)
	jbra .L9
	.align	2
.L75:
#APP
	move.l 8(%a2),%a1
#NO_APP
	jbra .L7
.L47:
	.align	2
.L9:
	clr.l %d0
	movm.l -16(%a6),#0x41c
	unlk %a6
	rts
.Lfe1:
	.size	__builtin_avcall,.Lfe1-__builtin_avcall
	.ident	"GCC: (GNU) 3.1"
