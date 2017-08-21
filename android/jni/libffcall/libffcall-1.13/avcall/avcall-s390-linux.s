	.file	"avcall-s390.c"
.text
	.align	4
.globl __builtin_avcall
	.type	__builtin_avcall,@function
__builtin_avcall:
	stm	%r6,%r15,24(%r15)
	bras	%r13,.LTN0_0
.LT0_0:
.LC0:
	.long	1
.LTN0_0:
	lr	%r10,%r2
	l	%r4,20(%r2)
	sr	%r4,%r2
	lr	%r14,%r15
	ahi	%r15,-1120
	ahi	%r4,-40
	l	%r5,1068(%r2)
	sra	%r4,2
	sr	%r5,%r2
	la	%r1,96(%r15)
	lr	%r2,%r4
	ahi	%r5,-1072
	s	%r2,1064(%r10)
	sra	%r5,2
	chi	%r2,5
	st	%r14,0(%r15)
	lr	%r11,%r15
	jle	.L2
	lhi	%r2,5
.L2:
	cr	%r2,%r4
	jhe	.L74
	lr	%r3,%r1
.L7:
	lr	%r1,%r2
	sll	%r1,2
	ahi	%r2,1
	l	%r0,40(%r1,%r10)
	st	%r0,0(%r3)
	ahi	%r3,4
	cr	%r2,%r4
	jl	.L7
.L74:
	chi	%r5,1
	je	.L91
	chi	%r5,2
	je	.L92
.L11:
	l	%r1,0(%r10)
	l	%r4,48(%r10)
	l	%r2,40(%r10)
	l	%r3,44(%r10)
	l	%r5,52(%r10)
	l	%r6,56(%r10)
	basr	%r14,%r1
	l	%r4,12(%r10)
	chi	%r4,1
	je	.L21
	ltr	%r4,%r4
	je	.L88
	chi	%r4,2
	je	.L89
	chi	%r4,3
	je	.L89
	chi	%r4,4
	je	.L89
	chi	%r4,5
	je	.L90
	chi	%r4,6
	je	.L90
	chi	%r4,7
	je	.L88
	chi	%r4,8
	je	.L88
	chi	%r4,9
	je	.L88
	chi	%r4,10
	je	.L88
	lr	%r1,%r4
	ahi	%r1,-11
	cl	%r1,.LC0-.LT0_0(%r13)
	jle	.L87
	chi	%r4,13
	je	.L93
	chi	%r4,14
	je	.L94
	chi	%r4,15
	je	.L88
	chi	%r4,16
	je	.L95
.L21:
	lhi	%r2,0
	l	%r4,1176(%r11)
	lm	%r6,%r15,1144(%r11)
	br	%r4
.L95:
	l	%r1,4(%r10)
	tml	%r1,1
	je	.L51
	l	%r1,16(%r10)
	chi	%r1,1
	je	.L96
	chi	%r1,2
	je	.L97
	chi	%r1,4
	je	.L98
	chi	%r1,8
	je	.L99
	lr	%r3,%r1
	ahi	%r3,3
	srl	%r3,2
	ahi	%r3,-1
	ltr	%r3,%r3
	jl	.L21
	l	%r4,8(%r10)
.L63:
	lr	%r1,%r3
	sll	%r1,2
	ahi	%r3,-1
	ltr	%r3,%r3
	l	%r5,0(%r1,%r2)
	st	%r5,0(%r1,%r4)
	jhe	.L63
	j	.L21
.L99:
	l	%r1,8(%r10)
	mvc	0(4,%r1),0(%r2)
	mvc	4(4,%r1),4(%r2)
	j	.L21
.L98:
	l	%r1,8(%r10)
	mvc	0(4,%r1),0(%r2)
	j	.L21
.L97:
	l	%r1,8(%r10)
	lh	%r2,0(%r2)
.L80:
	sth	%r2,0(%r1)
	j	.L21
.L96:
	l	%r1,8(%r10)
	ic	%r2,0(%r2)
.L81:
	stc	%r2,0(%r1)
	j	.L21
.L51:
	tml	%r1,512
	je	.L21
	l	%r1,16(%r10)
	chi	%r1,1
	je	.L89
	chi	%r1,2
	je	.L90
	chi	%r1,4
	je	.L88
	chi	%r1,8
	jne	.L21
.L87:
	l	%r1,8(%r10)
	st	%r3,4(%r1)
.L79:
	st	%r2,0(%r1)
	j	.L21
.L88:
	l	%r1,8(%r10)
	j	.L79
.L90:
	l	%r1,8(%r10)
	j	.L80
.L89:
	l	%r1,8(%r10)
	j	.L81
.L94:
	l	%r1,8(%r10)
	std	%f0,0(%r1)
	j	.L21
.L93:
	l	%r1,8(%r10)
	ste	%f0,0(%r1)
	j	.L21
.L92:
	icm	%r1,15,1084(%r10)
	je	.L76
	icm	%r2,15,1088(%r10)
	je	.L13
	le	%f0,1072(%r10)
.L78:
	le	%f2,1076(%r10)
	j	.L11
.L13:
	ltr	%r1,%r1
	je	.L76
	icm	%r5,15,1088(%r10)
	jne	.L15
	le	%f0,1072(%r10)
.L77:
	ld	%f2,1104(%r10)
	j	.L11
.L15:
	ltr	%r1,%r1
	jne	.L11
.L76:
	icm	%r0,15,1088(%r10)
	je	.L17
	ld	%f0,1096(%r10)
	j	.L78
.L17:
	ltr	%r1,%r1
	jne	.L11
	icm	%r1,15,1088(%r10)
	jne	.L11
	ld	%f0,1096(%r10)
	j	.L77
.L91:
	icm	%r1,15,1084(%r10)
	je	.L9
	le	%f0,1072(%r10)
	j	.L11
.L9:
	ld	%f0,1096(%r10)
	j	.L11
.Lfe1:
	.size	__builtin_avcall,.Lfe1-__builtin_avcall
	.ident	"GCC: (GNU) 3.1"
