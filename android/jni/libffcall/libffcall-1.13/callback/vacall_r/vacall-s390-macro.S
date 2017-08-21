	.file	"vacall-s390.c"
.text
	.align	4
	.type	__vacall_r,@function
__vacall_r:
	stm	%r6,%r15,24(%r15)
	bras	%r13,.LTN0_0
.LT0_0:
.LC0:
	.long	0
.LC1:
	.long	255
.LC2:
	.long	65535
.LC3:
	.long	1
.LTN0_0:
	lr	%r1,%r0
	lr	%r14,%r15
	ahi	%r15,-192
	lr	%r11,%r15
	lr	%r7,%r0
	l	%r8,0(%r1)
	st	%r14,0(%r15)
	la	%r1,136(%r11)
	la	%r9,160(%r11)
	la	%r10,144(%r11)
	mvc	104(4,%r11),.LC0-.LT0_0(%r13)
	st	%r1,128(%r11)
	la	%r1,288(%r11)
	st	%r2,160(%r11)
	st	%r3,164(%r11)
	la	%r3,96(%r11)
	st	%r4,168(%r11)
	st	%r5,172(%r11)
	st	%r6,176(%r11)
	st	%r9,100(%r11)
	st	%r10,132(%r11)
	std	%f2,152(%r11)
	std	%f0,144(%r11)
	ste	%f2,140(%r11)
	ste	%f0,136(%r11)
	mvc	96(4,%r11),.LC0-.LT0_0(%r13)
	st	%r1,180(%r11)
	mvc	184(4,%r11),.LC0-.LT0_0(%r13)
	mvc	108(4,%r11),.LC0-.LT0_0(%r13)
	l	%r2,4(%r7)
	basr	%r14,%r8
	icm	%r4,15,108(%r11)
	je	.L1
	chi	%r4,1
	je	.L45
	chi	%r4,2
	je	.L46
	chi	%r4,3
	je	.L45
	chi	%r4,4
	je	.L47
	chi	%r4,5
	je	.L48
	chi	%r4,6
	je	.L42
	chi	%r4,7
	je	.L42
	chi	%r4,8
	je	.L42
	chi	%r4,9
	je	.L42
	lr	%r1,%r4
	ahi	%r1,-10
	cl	%r1,.LC3-.LT0_0(%r13)
	jh	.L22
	l	%r2,120(%r11)
	l	%r3,124(%r11)
.L1:
	l	%r4,248(%r11)
	lm	%r6,%r15,216(%r11)
	br	%r4
.L22:
	chi	%r4,12
	je	.L49
	chi	%r4,13
	je	.L50
	chi	%r4,14
	je	.L42
	chi	%r4,15
	jne	.L1
	l	%r1,96(%r11)
	tml	%r1,1
	je	.L31
	l	%r2,104(%r11)
	j	.L1
.L31:
	tml	%r1,1024
	je	.L1
	l	%r1,112(%r11)
	chi	%r1,1
	je	.L51
	chi	%r1,2
	je	.L52
	chi	%r1,4
	je	.L53
	chi	%r1,8
	jne	.L1
	l	%r1,104(%r11)
	l	%r3,4(%r1)
.L41:
	l	%r2,0(%r1)
	j	.L1
.L53:
	l	%r1,104(%r11)
	j	.L41
.L52:
	l	%r1,104(%r11)
	lh	%r4,0(%r1)
	lr	%r2,%r4
.L43:
	n	%r2,.LC2-.LT0_0(%r13)
	j	.L1
.L51:
	l	%r1,104(%r11)
	ic	%r4,0(%r1)
	lr	%r2,%r4
.L44:
	n	%r2,.LC1-.LT0_0(%r13)
	j	.L1
.L42:
	l	%r2,120(%r11)
	j	.L1
.L50:
	ld	%f0,120(%r11)
	j	.L1
.L49:
	le	%f0,120(%r11)
	j	.L1
.L48:
	lh	%r1,120(%r11)
	lr	%r2,%r1
	j	.L43
.L47:
	lh	%r2,120(%r11)
	j	.L1
.L45:
	ic	%r1,120(%r11)
	lr	%r2,%r1
	j	.L44
.L46:
	icm	%r1,8,120(%r11)
	lr	%r2,%r1
	sra	%r2,24
	j	.L1
.Lfe1:
	.size	__vacall_r,.Lfe1-__vacall_r
	.align	4
.globl get__vacall_r
	.type	get__vacall_r,@function
get__vacall_r:
	stm	%r11,%r13,44(%r15)
	bras	%r13,.LTN1_0
.LT1_0:
.LC4:
	.long	__vacall_r-.LT1_0
.LTN1_0:
	l	%r1,.LC4-.LT1_0(%r13)
	lr	%r11,%r15
	la	%r2,0(%r13,%r1)
	lm	%r11,%r13,44(%r11)
	br	%r14
.Lfe2:
	.size	get__vacall_r,.Lfe2-get__vacall_r
#if defined __linux__ || defined __FreeBSD__ || defined __FreeBSD_kernel__ || defined __DragonFly__
	.section .note.GNU-stack,"",@progbits
#endif
