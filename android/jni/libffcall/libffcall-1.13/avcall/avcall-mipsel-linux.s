	.file	1 "avcall-mips.c"
	.section .mdebug.abi32
	.previous
	.abicalls
	.text
	.align	2
	.globl	__builtin_avcall
	.ent	__builtin_avcall
	.type	__builtin_avcall, @function
__builtin_avcall:
	.frame	$fp,40,$31		# vars= 0, regs= 3/0, args= 16, gp= 8
	.mask	0xc0010000,-8
	.fmask	0x00000000,0
	addiu	$sp,$sp,-40
	sw	$fp,28($sp)
	move	$fp,$sp
	sw	$31,32($sp)
	sw	$16,24($sp)
	.cprestore	16
	move	$16,$4
	lw	$2,20($4)
	lw	$4,4($4)
	addiu	$3,$16,56
	subu	$2,$2,$3
	addiu	$sp,$sp,-1032
	andi	$3,$4,0x400
	sra	$6,$2,2
	.set	noreorder
	.set	nomacro
	beq	$3,$0,$L2
	move	$5,$sp
	.set	macro
	.set	reorder

#APP
	l.s $f12,28($16)
#NO_APP
$L2:
	andi	$2,$4,0x1000
	.set	noreorder
	.set	nomacro
	beq	$2,$0,$L85
	andi	$2,$4,0x800
	.set	macro
	.set	reorder

#APP
	l.d $f12,40($16)
#NO_APP
	andi	$2,$4,0x800
$L85:
	.set	noreorder
	.set	nomacro
	beq	$2,$0,$L84
	andi	$2,$4,0x2000
	.set	macro
	.set	reorder

	andi	$2,$4,0x1400
	bne	$2,$0,$L74
	andi	$2,$4,0x2000
$L84:
	.set	noreorder
	.set	nomacro
	beq	$2,$0,$L83
	slt	$2,$6,5
	.set	macro
	.set	reorder

	andi	$2,$4,0x1400
	bne	$2,$0,$L75
	slt	$2,$6,5
$L83:
	.set	noreorder
	.set	nomacro
	bne	$2,$0,$L13
	move	$4,$16
	.set	macro
	.set	reorder

	li	$3,4			# 0x4
$L12:
	lw	$2,72($4)
	addiu	$3,$3,1
	sw	$2,16($5)
	addiu	$4,$4,4
	.set	noreorder
	.set	nomacro
	bne	$6,$3,$L12
	addiu	$5,$5,4
	.set	macro
	.set	reorder

$L13:
	lw	$4,56($16)
	lw	$5,60($16)
	lw	$25,0($16)
	lw	$6,64($16)
	lw	$7,68($16)
	jalr	$25
	lw	$4,12($16)
	move	$5,$2
	li	$2,1			# 0x1
	lw	$28,16($fp)
	beq	$4,$2,$L14
	.set	noreorder
	.set	nomacro
	beq	$4,$0,$L72
	li	$2,2			# 0x2
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$2,$L70
	li	$2,3			# 0x3
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$2,$L70
	li	$2,4			# 0x4
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$2,$L70
	li	$2,5			# 0x5
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$2,$L71
	li	$2,6			# 0x6
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$2,$L71
	li	$2,7			# 0x7
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$2,$L72
	li	$2,8			# 0x8
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$2,$L72
	li	$2,9			# 0x9
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$2,$L72
	li	$2,10			# 0xa
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$2,$L72
	addiu	$2,$4,-11
	.set	macro
	.set	reorder

	sltu	$2,$2,2
	.set	noreorder
	.set	nomacro
	bne	$2,$0,$L76
	li	$2,13			# 0xd
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$2,$L77
	li	$2,14			# 0xe
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$2,$L78
	li	$2,15			# 0xf
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$2,$L72
	li	$2,16			# 0x10
	.set	macro
	.set	reorder

	bne	$4,$2,$L14
	lw	$3,4($16)
	#nop
	andi	$2,$3,0x1
	.set	noreorder
	.set	nomacro
	beq	$2,$0,$L45
	andi	$2,$3,0x2
	.set	macro
	.set	reorder

	lw	$3,16($16)
	li	$2,1			# 0x1
	.set	noreorder
	.set	nomacro
	beq	$3,$2,$L79
	li	$2,2			# 0x2
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$3,$2,$L80
	li	$2,4			# 0x4
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$3,$2,$L81
	li	$2,8			# 0x8
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$3,$2,$L82
	addiu	$2,$3,3
	.set	macro
	.set	reorder

	srl	$8,$2,2
	addiu	$2,$8,-1
	bltz	$2,$L14
	sll	$6,$2,2
	lw	$4,8($16)
	addu	$5,$6,$5
	move	$7,$0
$L56:
	lw	$3,0($5)
	addu	$2,$6,$4
	addiu	$7,$7,1
	sw	$3,0($2)
	addiu	$6,$6,-4
	.set	noreorder
	.set	nomacro
	bne	$8,$7,$L56
	addiu	$5,$5,-4
	.set	macro
	.set	reorder

$L14:
	move	$sp,$fp
	lw	$31,32($fp)
	lw	$fp,28($sp)
	lw	$16,24($sp)
	move	$2,$0
	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,40
	.set	macro
	.set	reorder

$L45:
	.set	noreorder
	.set	nomacro
	beq	$2,$0,$L14
	li	$2,1			# 0x1
	.set	macro
	.set	reorder

	lw	$3,16($16)
	#nop
	.set	noreorder
	.set	nomacro
	beq	$3,$2,$L70
	li	$2,2			# 0x2
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$3,$2,$L71
	li	$2,4			# 0x4
	.set	macro
	.set	reorder

	bne	$3,$2,$L14
$L72:
	lw	$2,8($16)
	move	$sp,$fp
	sw	$5,0($2)
	lw	$31,32($sp)
	lw	$fp,28($sp)
	lw	$16,24($sp)
	move	$2,$0
	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,40
	.set	macro
	.set	reorder

$L75:
#APP
	l.d $f14,48($16)
#NO_APP
	.set	noreorder
	.set	nomacro
	b	$L83
	slt	$2,$6,5
	.set	macro
	.set	reorder

$L74:
#APP
	l.s $f14,32($16)
#NO_APP
	.set	noreorder
	.set	nomacro
	b	$L84
	andi	$2,$4,0x2000
	.set	macro
	.set	reorder

$L70:
	lw	$2,8($16)
	move	$sp,$fp
	sb	$5,0($2)
	lw	$31,32($sp)
	lw	$fp,28($sp)
	lw	$16,24($sp)
	move	$2,$0
	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,40
	.set	macro
	.set	reorder

$L71:
	lw	$2,8($16)
	.set	noreorder
	.set	nomacro
	b	$L14
	sh	$5,0($2)
	.set	macro
	.set	reorder

$L77:
	lw	$2,8($16)
	.set	noreorder
	.set	nomacro
	b	$L14
	swc1	$f0,0($2)
	.set	macro
	.set	reorder

$L76:
	lw	$2,8($16)
	#nop
	sw	$3,4($2)
	.set	noreorder
	.set	nomacro
	b	$L14
	sw	$5,0($2)
	.set	macro
	.set	reorder

$L78:
	lw	$2,8($16)
	#nop
	swc1	$f0,0($2)
	.set	noreorder
	.set	nomacro
	b	$L14
	swc1	$f1,4($2)
	.set	macro
	.set	reorder

$L80:
	lw	$3,8($16)
	lhu	$2,0($5)
	.set	noreorder
	.set	nomacro
	b	$L14
	sh	$2,0($3)
	.set	macro
	.set	reorder

$L79:
	lw	$3,8($16)
	lbu	$2,0($5)
	.set	noreorder
	.set	nomacro
	b	$L14
	sb	$2,0($3)
	.set	macro
	.set	reorder

$L82:
	lw	$2,8($16)
	lw	$3,0($5)
	#nop
	sw	$3,0($2)
	lw	$4,4($5)
	.set	noreorder
	.set	nomacro
	b	$L14
	sw	$4,4($2)
	.set	macro
	.set	reorder

$L81:
	lw	$3,8($16)
	lw	$2,0($5)
	.set	noreorder
	.set	nomacro
	b	$L14
	sw	$2,0($3)
	.set	macro
	.set	reorder

	.end	__builtin_avcall
	.ident	"GCC: (GNU) 4.0.2"
