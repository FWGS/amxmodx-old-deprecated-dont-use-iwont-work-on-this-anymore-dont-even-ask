	.file	"avcall-s390x.c"
.text
	.align	8
.globl __builtin_avcall
	.type	__builtin_avcall, @function
__builtin_avcall:
.LFB0:
	.cfi_startproc
	stmg	%r7,%r15,56(%r15)
	.cfi_offset 7, -104
	.cfi_offset 8, -96
	.cfi_offset 9, -88
	.cfi_offset 10, -80
	.cfi_offset 11, -72
	.cfi_offset 12, -64
	.cfi_offset 13, -56
	.cfi_offset 14, -48
	.cfi_offset 15, -40
	larl	%r13,.L76
	aghi	%r15,-168
	.cfi_def_cfa_offset 328
	lgr	%r11,%r15
	.cfi_def_cfa_register 11
	aghi	%r15,-2056
	la	%r0,56(%r2)
	lg	%r1,40(%r2)
	sgr	%r1,%r0
	srag	%r1,%r1,3
	stg	%r2,160(%r11)
	ltr	%r1,%r1
	la	%r9,160(%r15)
	lgr	%r10,%r6
	l	%r8,2104(%r2)
	l	%r7,2152(%r2)
	jle	.L6
	lgfr	%r0,%r1
	sllg	%r0,%r0,3
	aghi	%r0,-8
	srlg	%r0,%r0,3
	aghi	%r0,1
	lghi	%r1,0
.L5:
	lg	%r14,160(%r11)
	lg	%r14,56(%r1,%r14)
	stg	%r14,0(%r1,%r9)
	aghi	%r1,8
	brctg	%r0,.L5
.L6:
	ltr	%r8,%r8
	je	.L7
	lg	%r1,160(%r11)
	cl	%r8,.L77-.L76(%r13)
	lg	%r2,2112(%r1)
	jle	.L7
	chi	%r8,2
	lg	%r3,2120(%r1)
	je	.L7
	chi	%r8,3
	lg	%r4,2128(%r1)
	je	.L7
	chi	%r8,4
	lg	%r5,2136(%r1)
	je	.L7
	lg	%r6,2144(%r1)
.L7:
	ltr	%r7,%r7
	je	.L9
	lg	%r9,160(%r11)
	l	%r1,2160(%r9)
	tmll	%r1,1
	je	.L10
	ld	%f0,2184(%r9)
.L11:
	cl	%r7,.L77-.L76(%r13)
	jle	.L9
	tmll	%r1,2
	lg	%r9,160(%r11)
	jne	.L73
	tm	2159(%r9),2
	je	.L14
	le	%f2,2168(%r9)
.L14:
	chi	%r7,2
	je	.L9
	tmll	%r1,4
	lg	%r9,160(%r11)
	je	.L15
	ld	%f4,2200(%r9)
.L16:
	chi	%r7,3
	je	.L9
	tmll	%r1,8
	lg	%r1,160(%r11)
	je	.L17
	ld	%f6,2208(%r1)
.L9:
	lg	%r1,160(%r11)
	l	%r1,24(%r1)
	chi	%r1,13
	je	.L74
	chi	%r1,14
	je	.L75
	lg	%r9,160(%r11)
	lg	%r1,0(%r9)
	basr	%r14,%r1
	l	%r1,24(%r9)
	chi	%r1,1
	lgr	%r0,%r2
	je	.L19
	ltr	%r1,%r1
	je	.L67
	chi	%r1,2
	je	.L69
	chi	%r1,3
	je	.L69
	chi	%r1,4
	je	.L69
	chi	%r1,5
	je	.L71
	chi	%r1,6
	je	.L71
	chi	%r1,7
	je	.L70
	chi	%r1,8
	je	.L70
	lr	%r9,%r1
	nill	%r9,65533
	chi	%r9,9
	je	.L67
	chi	%r1,10
	je	.L67
	chi	%r1,12
	je	.L67
	chi	%r1,15
	je	.L67
.L19:
	lg	%r4,280(%r11)
	lgr	%r6,%r10
	lghi	%r2,0
	lmg	%r7,%r15,224(%r11)
	.cfi_remember_state
	.cfi_restore 15
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_def_cfa 15, 160
	br	%r4
.L10:
	.cfi_restore_state
	lg	%r9,160(%r11)
	tm	2159(%r9),1
	je	.L11
	le	%f0,2164(%r9)
	j	.L11
.L67:
	lg	%r1,160(%r11)
	lgr	%r6,%r10
	lghi	%r2,0
	lg	%r1,16(%r1)
	stg	%r0,0(%r1)
	lg	%r4,280(%r11)
	lmg	%r7,%r15,224(%r11)
	.cfi_remember_state
	.cfi_restore 7
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 10
	.cfi_restore 11
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	br	%r4
.L73:
	.cfi_restore_state
	ld	%f2,2192(%r9)
	j	.L14
.L69:
	lg	%r1,160(%r11)
	lgr	%r6,%r10
	lghi	%r2,0
	lg	%r1,16(%r1)
	stc	%r0,0(%r1)
	lg	%r4,280(%r11)
	lmg	%r7,%r15,224(%r11)
	.cfi_remember_state
	.cfi_restore 7
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 10
	.cfi_restore 11
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	br	%r4
.L75:
	.cfi_restore_state
	lg	%r0,160(%r11)
	lgr	%r1,%r0
	lgr	%r9,%r0
	lg	%r1,0(%r1)
	lg	%r9,16(%r9)
	basr	%r14,%r1
	lg	%r4,280(%r11)
	std	%f0,0(%r9)
	lgr	%r6,%r10
	lghi	%r2,0
	lmg	%r7,%r15,224(%r11)
	.cfi_remember_state
	.cfi_restore 7
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 10
	.cfi_restore 11
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	.cfi_restore 15
	.cfi_def_cfa 15, 160
	br	%r4
.L74:
	.cfi_restore_state
	lg	%r0,160(%r11)
	lgr	%r1,%r0
	lgr	%r9,%r0
	lg	%r1,0(%r1)
	lg	%r9,16(%r9)
	basr	%r14,%r1
	ste	%f0,0(%r9)
	j	.L19
.L15:
	tm	2159(%r9),4
	je	.L16
	le	%f4,2172(%r9)
	j	.L16
.L71:
	lg	%r1,160(%r11)
	lg	%r1,16(%r1)
	sth	%r0,0(%r1)
	j	.L19
.L17:
	tm	2159(%r1),8
	je	.L9
	le	%f6,2176(%r1)
	j	.L9
.L70:
	lg	%r1,160(%r11)
	lg	%r1,16(%r1)
	st	%r0,0(%r1)
	j	.L19
	.section	.rodata
	.align	8
.L76:
.L77:
	.long	1
	.align	2
	.previous
	.cfi_endproc
.LFE0:
	.size	__builtin_avcall, .-__builtin_avcall
#if defined __linux__ || defined __FreeBSD__ || defined __FreeBSD_kernel__ || defined __DragonFly__
	.section .note.GNU-stack,"",@progbits
#endif
