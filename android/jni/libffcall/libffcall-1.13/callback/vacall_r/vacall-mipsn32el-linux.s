	.file	1 "vacall-mipsn32.c"
	.section .mdebug.abiN32
	.previous
	.abicalls
	.text
	.align	2
	.align	3
	.ent	__vacall_r
	.type	__vacall_r, @function
__vacall_r:
	.frame	$fp,192,$31		# vars= 144, regs= 5/0, args= 0, gp= 0
	.mask	0xc0070000,-16
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-192
	sd	$fp,168($sp)
	move	$fp,$sp
	sd	$31,176($sp)
	sd	$18,160($sp)
	sd	$17,152($sp)
	sd	$16,144($sp)
	sw	$0,8($fp)
	sd	$4,192($fp)
	lw	$25,0($2)
	lw	$4,4($2)
	addiu	$12,$fp,256
	sw	$12,40($fp)
	addiu	$12,$fp,192
	sd	$5,200($fp)
	sd	$6,208($fp)
	sd	$7,216($fp)
	sd	$8,224($fp)
	sd	$9,232($fp)
	sd	$10,240($fp)
	sd	$11,248($fp)
	sdc1	$f12,80($fp)
	sdc1	$f13,88($fp)
	sdc1	$f14,96($fp)
	sdc1	$f15,104($fp)
	sdc1	$f16,112($fp)
	sdc1	$f17,120($fp)
	sdc1	$f18,128($fp)
	sdc1	$f19,136($fp)
	swc1	$f12,48($fp)
	swc1	$f13,52($fp)
	swc1	$f14,56($fp)
	swc1	$f15,60($fp)
	swc1	$f16,64($fp)
	swc1	$f17,68($fp)
	swc1	$f18,72($fp)
	swc1	$f19,76($fp)
	move	$5,$fp
	sw	$0,0($fp)
	sw	$12,4($fp)
	sw	$0,12($fp)
	jal	$25
	sw	$0,44($fp)

	lw	$13,12($fp)
	beq	$13,$0,.L87
	li	$12,1			# 0x1

	beq	$13,$12,.L88
	li	$12,2			# 0x2

	beq	$13,$12,.L88
	li	$12,3			# 0x3

	beq	$13,$12,.L94
	li	$12,4			# 0x4

	beq	$13,$12,.L95
	li	$12,5			# 0x5

	beq	$13,$12,.L96
	li	$12,6			# 0x6

	beq	$13,$12,.L91
	li	$12,7			# 0x7

	beq	$13,$12,.L90
	li	$12,8			# 0x8

	beq	$13,$12,.L91
	li	$12,9			# 0x9

	beq	$13,$12,.L90
	li	$12,10			# 0xa

	beq	$13,$12,.L92
	li	$12,11			# 0xb

	beq	$13,$12,.L92
	li	$12,12			# 0xc

	beq	$13,$12,.L97
	li	$12,13			# 0xd

	beq	$13,$12,.L98
	li	$12,14			# 0xe

	beq	$13,$12,.L91
	li	$12,15			# 0xf

	bnel	$13,$12,.L119
	move	$sp,$fp

	lw	$18,0($fp)
	andi	$12,$18,0x1
	beq	$12,$0,.L33
	andi	$12,$18,0x400

	lw	$2,8($fp)
	.align	3
.L87:
	move	$sp,$fp
.L119:
	ld	$31,176($sp)
	ld	$fp,168($sp)
	ld	$18,160($sp)
	ld	$17,152($sp)
	ld	$16,144($sp)
	j	$31
	addiu	$sp,$sp,192

	.align	3
.L88:
	move	$sp,$fp
	lb	$2,24($fp)
	ld	$31,176($sp)
	ld	$fp,168($sp)
	ld	$18,160($sp)
	ld	$17,152($sp)
	ld	$16,144($sp)
	j	$31
	addiu	$sp,$sp,192

.L95:
	b	.L87
	lh	$2,24($fp)

.L91:
	b	.L87
	lw	$2,24($fp)

.L94:
	b	.L87
	lbu	$2,24($fp)

.L96:
	b	.L87
	lhu	$2,24($fp)

.L90:
	b	.L87
	lwu	$2,24($fp)

.L92:
	b	.L87
	ld	$2,24($fp)

.L97:
	b	.L87
	lwc1	$f0,24($fp)

.L98:
	b	.L87
	ldc1	$f0,24($fp)

.L33:
	beq	$12,$0,.L87
	andi	$12,$18,0x4

	beq	$12,$0,.L36
	lw	$25,16($fp)

	lw	$13,16($fp)
	li	$12,1			# 0x1
	beq	$13,$12,.L99
	li	$12,2			# 0x2

	beq	$13,$12,.L100
	li	$12,4			# 0x4

	beq	$13,$12,.L101
	li	$12,8			# 0x8

	bnel	$13,$12,.L119
	move	$sp,$fp

	lw	$12,8($fp)
	b	.L87
	ld	$2,0($12)

.L36:
	addiu	$12,$25,-1
	sltu	$12,$12,16
	beq	$12,$0,.L120
	andi	$12,$18,0x2000

	li	$12,1			# 0x1
	beq	$25,$12,.L102
	li	$12,2			# 0x2

	beq	$25,$12,.L103
	li	$12,3			# 0x3

	beq	$25,$12,.L104
	li	$12,4			# 0x4

	beq	$25,$12,.L105
	li	$12,5			# 0x5

	beq	$25,$12,.L106
	li	$12,6			# 0x6

	beq	$25,$12,.L107
	li	$12,7			# 0x7

	beq	$25,$12,.L108
	addiu	$12,$25,-8

	sltu	$12,$12,9
	beq	$12,$0,.L120
	andi	$12,$18,0x2000

	lw	$24,8($fp)
	lbu	$13,1($24)
	lbu	$12,0($24)
	lbu	$14,2($24)
	lbu	$15,3($24)
	dsll	$13,$13,8
	lbu	$16,4($24)
	or	$12,$12,$13
	dsll	$14,$14,16
	lbu	$17,5($24)
	or	$12,$12,$14
	dsll	$15,$15,24
	lbu	$13,6($24)
	or	$12,$12,$15
	dsll	$16,$16,32
	lbu	$14,7($24)
	or	$12,$12,$16
	dsll	$17,$17,40
	dsll	$13,$13,48
	or	$12,$12,$17
	or	$12,$12,$13
	dsll	$14,$14,56
	li	$13,8			# 0x8
	beq	$25,$13,.L45
	or	$2,$12,$14

	li	$12,9			# 0x9
	beq	$25,$12,.L109
	li	$12,10			# 0xa

	beq	$25,$12,.L110
	li	$12,11			# 0xb

	beq	$25,$12,.L111
	li	$12,12			# 0xc

	beq	$25,$12,.L112
	li	$12,13			# 0xd

	beq	$25,$12,.L113
	li	$12,14			# 0xe

	beq	$25,$12,.L114
	li	$12,15			# 0xf

	beq	$25,$12,.L115
	li	$12,16			# 0x10

	bne	$25,$12,.L120
	andi	$12,$18,0x2000

	lbu	$13,9($24)
	lbu	$12,8($24)
	lbu	$14,10($24)
	lbu	$15,11($24)
	dsll	$13,$13,8
	lbu	$16,12($24)
	or	$12,$12,$13
	dsll	$14,$14,16
	lbu	$17,13($24)
	or	$12,$12,$14
	dsll	$15,$15,24
	lbu	$13,14($24)
	or	$12,$12,$15
	dsll	$16,$16,32
	lbu	$14,15($24)
	or	$12,$12,$16
	dsll	$17,$17,40
	or	$12,$12,$17
	dsll	$13,$13,48
	or	$12,$12,$13
	dsll	$14,$14,56
	or	$3,$12,$14
.L45:
	andi	$12,$18,0x2000
.L120:
	beq	$12,$0,.L121
	andi	$12,$18,0x4000

	li	$12,4			# 0x4
	beq	$25,$12,.L116
	li	$12,8			# 0x8

	beq	$25,$12,.L117
	lw	$12,8($fp)

.L78:
	andi	$12,$18,0x4000
.L121:
	beq	$12,$0,.L87
	li	$12,8			# 0x8

	beq	$25,$12,.L118
	li	$12,16			# 0x10

	bnel	$25,$12,.L119
	move	$sp,$fp

	lw	$12,8($fp)
	ldc1	$f2,8($12)
	b	.L87
	ldc1	$f0,0($12)

.L101:
	lw	$12,8($fp)
	b	.L87
	lwu	$2,0($12)

.L118:
	lw	$12,8($fp)
	b	.L87
	ldc1	$f0,0($12)

.L116:
	lw	$12,8($fp)
	b	.L78
	lwc1	$f0,0($12)

.L100:
	lw	$12,8($fp)
	b	.L87
	lhu	$2,0($12)

.L99:
	lw	$12,8($fp)
	b	.L87
	lbu	$2,0($12)

.L102:
	lw	$12,8($fp)
	b	.L45
	lbu	$2,0($12)

.L115:
	lbu	$13,9($24)
	lbu	$12,8($24)
	lbu	$14,10($24)
	lbu	$15,11($24)
	dsll	$13,$13,8
	lbu	$16,12($24)
	or	$12,$12,$13
	dsll	$14,$14,16
	lbu	$13,13($24)
	or	$12,$12,$14
	dsll	$15,$15,24
	lbu	$14,14($24)
	or	$12,$12,$15
	dsll	$16,$16,32
	or	$12,$12,$16
	dsll	$13,$13,40
	or	$12,$12,$13
	dsll	$14,$14,48
	b	.L45
	or	$3,$12,$14

.L114:
	lbu	$13,9($24)
	lbu	$12,8($24)
	lbu	$14,10($24)
	lbu	$15,11($24)
	dsll	$13,$13,8
	lbu	$16,12($24)
	or	$12,$12,$13
	dsll	$14,$14,16
	lbu	$13,13($24)
	or	$12,$12,$14
	dsll	$15,$15,24
	or	$12,$12,$15
	dsll	$16,$16,32
	or	$12,$12,$16
	dsll	$13,$13,40
	b	.L45
	or	$3,$12,$13

.L117:
	lwc1	$f2,4($12)
	b	.L78
	lwc1	$f0,0($12)

.L103:
	lw	$12,8($fp)
	lbu	$13,1($12)
	lbu	$14,0($12)
	dsll	$13,$13,8
	b	.L45
	or	$2,$14,$13

.L105:
	lw	$12,8($fp)
	lbu	$13,1($12)
	lbu	$15,0($12)
	lbu	$14,2($12)
	lbu	$16,3($12)
	dsll	$13,$13,8
	or	$15,$15,$13
	dsll	$14,$14,16
	or	$15,$15,$14
	dsll	$16,$16,24
	b	.L45
	or	$2,$15,$16

.L104:
	lw	$12,8($fp)
	lbu	$14,1($12)
	lbu	$15,2($12)
	lbu	$13,0($12)
	dsll	$14,$14,8
	dsll	$15,$15,16
	or	$13,$13,$14
	b	.L45
	or	$2,$13,$15

.L113:
	lbu	$13,9($24)
	lbu	$12,8($24)
	lbu	$14,10($24)
	lbu	$15,11($24)
	dsll	$13,$13,8
	lbu	$16,12($24)
	or	$12,$12,$13
	dsll	$14,$14,16
	or	$12,$12,$14
	dsll	$15,$15,24
	or	$12,$12,$15
	dsll	$16,$16,32
	b	.L45
	or	$3,$12,$16

.L112:
	lbu	$12,9($24)
	lbu	$14,8($24)
	lbu	$13,10($24)
	lbu	$15,11($24)
	dsll	$12,$12,8
	or	$14,$14,$12
	dsll	$13,$13,16
	or	$14,$14,$13
	dsll	$15,$15,24
	b	.L45
	or	$3,$14,$15

.L111:
	lbu	$12,9($24)
	lbu	$14,10($24)
	lbu	$13,8($24)
	dsll	$12,$12,8
	dsll	$14,$14,16
	or	$13,$13,$12
	b	.L45
	or	$3,$13,$14

.L110:
	lbu	$12,9($24)
	lbu	$13,8($24)
	dsll	$12,$12,8
	b	.L45
	or	$3,$13,$12

.L109:
	b	.L45
	lbu	$3,8($24)

.L108:
	lw	$12,8($fp)
	lbu	$14,1($12)
	lbu	$13,0($12)
	lbu	$15,2($12)
	lbu	$16,3($12)
	dsll	$14,$14,8
	lbu	$17,4($12)
	or	$13,$13,$14
	dsll	$15,$15,16
	lbu	$14,5($12)
	or	$13,$13,$15
	dsll	$16,$16,24
	lbu	$15,6($12)
	or	$13,$13,$16
	dsll	$17,$17,32
	or	$13,$13,$17
	dsll	$14,$14,40
	or	$13,$13,$14
	dsll	$15,$15,48
	b	.L45
	or	$2,$13,$15

.L107:
	lw	$13,8($fp)
	lbu	$14,1($13)
	lbu	$12,0($13)
	lbu	$15,2($13)
	lbu	$16,3($13)
	dsll	$14,$14,8
	lbu	$17,4($13)
	or	$12,$12,$14
	dsll	$15,$15,16
	lbu	$14,5($13)
	or	$12,$12,$15
	dsll	$16,$16,24
	or	$12,$12,$16
	dsll	$17,$17,32
	or	$12,$12,$17
	dsll	$14,$14,40
	b	.L45
	or	$2,$12,$14

.L106:
	lw	$12,8($fp)
	lbu	$14,1($12)
	lbu	$13,0($12)
	lbu	$15,2($12)
	lbu	$16,3($12)
	dsll	$14,$14,8
	lbu	$17,4($12)
	or	$13,$13,$14
	dsll	$15,$15,16
	or	$13,$13,$15
	dsll	$16,$16,24
	or	$13,$13,$16
	dsll	$17,$17,32
	b	.L45
	or	$2,$13,$17

	.set	macro
	.set	reorder
	.end	__vacall_r
	.align	2
	.align	3
	.globl	get__vacall_r
	.ent	get__vacall_r
	.type	get__vacall_r, @function
get__vacall_r:
	.frame	$fp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-16
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	lui	$13,%hi(%neg(%gp_rel(get__vacall_r)))
	addiu	$sp,$sp,-16
	addu	$13,$13,$25
	sd	$fp,0($sp)
	addiu	$13,$13,%lo(%neg(%gp_rel(get__vacall_r)))
	move	$fp,$sp
	move	$sp,$fp
	lw	$12,%got_page(__vacall_r)($13)
	ld	$fp,0($sp)
	addiu	$sp,$sp,16
	j	$31
	addiu	$2,$12,%got_ofst(__vacall_r)

	.set	macro
	.set	reorder
	.end	get__vacall_r
	.ident	"GCC: (GNU) 4.0.2"
