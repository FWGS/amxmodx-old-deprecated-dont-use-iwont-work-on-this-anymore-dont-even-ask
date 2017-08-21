	.file	1 "avcall-mips64.c"
	.section .mdebug.abi64
	.previous
	.abicalls
	.text
	.align	2
	.align	3
	.globl	__builtin_avcall
	.ent	__builtin_avcall
	.type	__builtin_avcall, @function
__builtin_avcall:
	.frame	$fp,64,$31		# vars= 0, regs= 3/0, args= 32, gp= 0
	.mask	0xc0010000,-16
	.fmask	0x00000000,0
	daddiu	$sp,$sp,-64
	sd	$fp,40($sp)
	sd	$16,32($sp)
	sd	$31,48($sp)
	ld	$2,40($4)
	daddiu	$3,$4,96
	move	$16,$4
	dsubu	$2,$2,$3
	lw	$4,52($4)
	dsra	$2,$2,3
	move	$fp,$sp
	sll	$2,$2,0
	daddiu	$sp,$sp,-2064
	move	$6,$2
	.set	noreorder
	.set	nomacro
	beq	$4,$0,.L2
	move	$5,$sp
	.set	macro
	.set	reorder

	andi	$2,$4,0x1
	.set	noreorder
	.set	nomacro
	bne	$2,$0,.L144
	andi	$2,$4,0x2
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	bne	$2,$0,.L145
	move	$3,$4
	.set	macro
	.set	reorder

.L6:
	andi	$2,$3,0x4
	.set	noreorder
	.set	nomacro
	bne	$2,$0,.L146
	andi	$2,$3,0x8
	.set	macro
	.set	reorder

.L187:
	.set	noreorder
	.set	nomacro
	bne	$2,$0,.L147
	andi	$2,$3,0x10
	.set	macro
	.set	reorder

.L186:
	.set	noreorder
	.set	nomacro
	bne	$2,$0,.L148
	andi	$2,$3,0x20
	.set	macro
	.set	reorder

.L185:
	.set	noreorder
	.set	nomacro
	bne	$2,$0,.L149
	andi	$2,$3,0x40
	.set	macro
	.set	reorder

.L184:
	.set	noreorder
	.set	nomacro
	bne	$2,$0,.L150
	andi	$2,$3,0x80
	.set	macro
	.set	reorder

.L183:
	bne	$2,$0,.L151
	.align	3
.L2:
	lw	$3,56($16)
.L180:
	.set	noreorder
	.set	nomacro
	beq	$3,$0,.L179
	slt	$2,$6,9
	.set	macro
	.set	reorder

	andi	$2,$3,0x1
	.set	noreorder
	.set	nomacro
	bne	$2,$0,.L152
	andi	$2,$3,0x2
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	bne	$2,$0,.L153
	andi	$2,$3,0x4
	.set	macro
	.set	reorder

.L191:
	.set	noreorder
	.set	nomacro
	bne	$2,$0,.L154
	andi	$2,$3,0x8
	.set	macro
	.set	reorder

.L190:
	.set	noreorder
	.set	nomacro
	bne	$2,$0,.L155
	andi	$2,$3,0x10
	.set	macro
	.set	reorder

.L189:
	.set	noreorder
	.set	nomacro
	bne	$2,$0,.L156
	andi	$2,$3,0x20
	.set	macro
	.set	reorder

.L188:
	.set	noreorder
	.set	nomacro
	bne	$2,$0,.L157
	andi	$2,$3,0x40
	.set	macro
	.set	reorder

.L193:
	.set	noreorder
	.set	nomacro
	bne	$2,$0,.L158
	andi	$2,$3,0x80
	.set	macro
	.set	reorder

.L192:
	bne	$2,$0,.L159
	slt	$2,$6,9
.L179:
	.set	noreorder
	.set	nomacro
	bne	$2,$0,.L37
	move	$4,$16
	.set	macro
	.set	reorder

	li	$3,8			# 0x8
	.align	3
.L36:
	ld	$2,160($4)
	addiu	$3,$3,1
	daddiu	$4,$4,8
	sd	$2,0($5)
	.set	noreorder
	.set	nomacro
	bne	$3,$6,.L36
	daddiu	$5,$5,8
	.set	macro
	.set	reorder

.L37:
#APP
	ld $4,96($16)
	ld $5,104($16)
	ld $6,112($16)
	ld $7,120($16)
	ld $8,128($16)
	ld $9,136($16)
	ld $10,144($16)
	ld $11,152($16)
#NO_APP
	ld	$25,0($16)
	jal	$25
	lw	$4,24($16)
	move	$10,$2
	li	$2,1			# 0x1
	.set	noreorder
	.set	nomacro
	beql	$4,$2,.L181
	move	$sp,$fp
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beql	$4,$0,.L182
	ld	$2,16($16)
	.set	macro
	.set	reorder

	li	$2,2			# 0x2
	.set	noreorder
	.set	nomacro
	beq	$4,$2,.L142
	li	$2,3			# 0x3
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$2,.L142
	li	$2,4			# 0x4
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$2,.L142
	li	$2,5			# 0x5
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$2,.L134
	li	$2,6			# 0x6
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$2,.L134
	li	$2,7			# 0x7
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$2,.L136
	li	$2,8			# 0x8
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$2,.L136
	li	$2,9			# 0x9
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$2,.L141
	li	$2,10			# 0xa
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$2,.L141
	li	$2,11			# 0xb
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$2,.L141
	li	$2,12			# 0xc
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$2,.L141
	li	$2,13			# 0xd
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$2,.L160
	li	$2,14			# 0xe
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$2,.L161
	li	$2,15			# 0xf
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$2,.L141
	li	$2,16			# 0x10
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	bnel	$4,$2,.L181
	move	$sp,$fp
	.set	macro
	.set	reorder

	lw	$4,8($16)
	andi	$2,$4,0x1
	.set	noreorder
	.set	nomacro
	beq	$2,$0,.L71
	andi	$2,$4,0x200
	.set	macro
	.set	reorder

	ld	$3,32($16)
	li	$2,1			# 0x1
	.set	noreorder
	.set	nomacro
	beq	$3,$2,.L162
	li	$2,2			# 0x2
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$3,$2,.L163
	li	$2,4			# 0x4
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$3,$2,.L164
	li	$2,8			# 0x8
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$3,$2,.L165
	daddiu	$2,$3,7
	.set	macro
	.set	reorder

	dsrl	$2,$2,3
	sll	$2,$2,0
	addiu	$5,$2,-1
	.set	noreorder
	.set	nomacro
	bltzl	$5,.L181
	move	$sp,$fp
	.set	macro
	.set	reorder

	ld	$8,16($16)
	move	$6,$0
	addiu	$7,$5,1
.L82:
	subu	$2,$5,$6
	dsll	$2,$2,3
	daddu	$3,$10,$2
	ld	$4,0($3)
	daddu	$2,$8,$2
	addiu	$6,$6,1
	.set	noreorder
	.set	nomacro
	bne	$7,$6,.L82
	sd	$4,0($2)
	.set	macro
	.set	reorder

.L38:
	move	$sp,$fp
.L181:
	ld	$31,48($sp)
	ld	$fp,40($sp)
	ld	$16,32($sp)
	move	$2,$0
	.set	noreorder
	.set	nomacro
	j	$31
	daddiu	$sp,$sp,64
	.set	macro
	.set	reorder

.L71:
	.set	noreorder
	.set	nomacro
	beq	$2,$0,.L38
	andi	$2,$4,0x4
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beql	$2,$0,.L84
	ld	$4,32($16)
	.set	macro
	.set	reorder

	ld	$3,32($16)
	li	$2,1			# 0x1
	.set	noreorder
	.set	nomacro
	beq	$3,$2,.L142
	li	$2,2			# 0x2
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$3,$2,.L134
	li	$2,4			# 0x4
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$3,$2,.L136
	li	$2,8			# 0x8
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	bnel	$3,$2,.L181
	move	$sp,$fp
	.set	macro
	.set	reorder

.L141:
	ld	$2,16($16)
.L182:
	move	$sp,$fp
	sd	$10,0($2)
	ld	$31,48($sp)
	ld	$fp,40($sp)
	ld	$16,32($sp)
	move	$2,$0
	.set	noreorder
	.set	nomacro
	j	$31
	daddiu	$sp,$sp,64
	.set	macro
	.set	reorder

.L159:
#APP
	ldc1 $f19,152($16)
#NO_APP
	.set	noreorder
	.set	nomacro
	b	.L179
	slt	$2,$6,9
	.set	macro
	.set	reorder

.L151:
#APP
	lwc1 $f19,88($16)
#NO_APP
	.set	noreorder
	.set	nomacro
	b	.L180
	lw	$3,56($16)
	.set	macro
	.set	reorder

.L150:
#APP
	lwc1 $f18,84($16)
#NO_APP
	andi	$2,$3,0x80
	.set	noreorder
	.set	nomacro
	beql	$2,$0,.L180
	lw	$3,56($16)
	.set	macro
	.set	reorder

	b	.L151
.L149:
#APP
	lwc1 $f17,80($16)
#NO_APP
	andi	$2,$3,0x40
	.set	noreorder
	.set	nomacro
	beq	$2,$0,.L183
	andi	$2,$3,0x80
	.set	macro
	.set	reorder

	b	.L150
.L148:
#APP
	lwc1 $f16,76($16)
#NO_APP
	andi	$2,$3,0x20
	.set	noreorder
	.set	nomacro
	beq	$2,$0,.L184
	andi	$2,$3,0x40
	.set	macro
	.set	reorder

	b	.L149
.L147:
#APP
	lwc1 $f15,72($16)
#NO_APP
	andi	$2,$3,0x10
	.set	noreorder
	.set	nomacro
	beq	$2,$0,.L185
	andi	$2,$3,0x20
	.set	macro
	.set	reorder

	b	.L148
.L146:
#APP
	lwc1 $f14,68($16)
#NO_APP
	andi	$2,$3,0x8
	.set	noreorder
	.set	nomacro
	beq	$2,$0,.L186
	andi	$2,$3,0x10
	.set	macro
	.set	reorder

	b	.L147
.L145:
#APP
	lwc1 $f13,64($16)
#NO_APP
	andi	$2,$3,0x4
	.set	noreorder
	.set	nomacro
	beq	$2,$0,.L187
	andi	$2,$3,0x8
	.set	macro
	.set	reorder

	b	.L146
.L144:
#APP
	lwc1 $f12,60($16)
#NO_APP
	andi	$2,$4,0x2
	.set	noreorder
	.set	nomacro
	beq	$2,$0,.L6
	move	$3,$4
	.set	macro
	.set	reorder

	b	.L145
.L155:
#APP
	ldc1 $f15,120($16)
#NO_APP
	andi	$2,$3,0x10
	.set	noreorder
	.set	nomacro
	beq	$2,$0,.L188
	andi	$2,$3,0x20
	.set	macro
	.set	reorder

	b	.L156
.L154:
#APP
	ldc1 $f14,112($16)
#NO_APP
	andi	$2,$3,0x8
	.set	noreorder
	.set	nomacro
	beq	$2,$0,.L189
	andi	$2,$3,0x10
	.set	macro
	.set	reorder

	b	.L155
.L153:
#APP
	ldc1 $f13,104($16)
#NO_APP
	andi	$2,$3,0x4
	.set	noreorder
	.set	nomacro
	beq	$2,$0,.L190
	andi	$2,$3,0x8
	.set	macro
	.set	reorder

	b	.L154
.L152:
#APP
	ldc1 $f12,96($16)
#NO_APP
	andi	$2,$3,0x2
	.set	noreorder
	.set	nomacro
	beq	$2,$0,.L191
	andi	$2,$3,0x4
	.set	macro
	.set	reorder

	b	.L153
.L157:
#APP
	ldc1 $f17,136($16)
#NO_APP
	andi	$2,$3,0x40
	.set	noreorder
	.set	nomacro
	beq	$2,$0,.L192
	andi	$2,$3,0x80
	.set	macro
	.set	reorder

	b	.L158
.L156:
#APP
	ldc1 $f16,128($16)
#NO_APP
	andi	$2,$3,0x20
	.set	noreorder
	.set	nomacro
	beq	$2,$0,.L193
	andi	$2,$3,0x40
	.set	macro
	.set	reorder

	b	.L157
.L158:
#APP
	ldc1 $f18,144($16)
#NO_APP
	andi	$2,$3,0x80
	.set	noreorder
	.set	nomacro
	beql	$2,$0,.L179
	slt	$2,$6,9
	.set	macro
	.set	reorder

	b	.L159
.L142:
	ld	$2,16($16)
	move	$sp,$fp
	sb	$10,0($2)
	ld	$31,48($sp)
	ld	$fp,40($sp)
	ld	$16,32($sp)
	move	$2,$0
	.set	noreorder
	.set	nomacro
	j	$31
	daddiu	$sp,$sp,64
	.set	macro
	.set	reorder

.L134:
	ld	$2,16($16)
	.set	noreorder
	.set	nomacro
	b	.L38
	sh	$10,0($2)
	.set	macro
	.set	reorder

.L136:
	ld	$2,16($16)
	.set	noreorder
	.set	nomacro
	b	.L38
	sw	$10,0($2)
	.set	macro
	.set	reorder

.L160:
	ld	$2,16($16)
	.set	noreorder
	.set	nomacro
	b	.L38
	swc1	$f0,0($2)
	.set	macro
	.set	reorder

.L161:
	ld	$2,16($16)
	.set	noreorder
	.set	nomacro
	b	.L38
	sdc1	$f0,0($2)
	.set	macro
	.set	reorder

.L84:
	daddiu	$2,$4,-1
	sltu	$2,$2,16
	.set	noreorder
	.set	nomacro
	beq	$2,$0,.L38
	li	$2,1			# 0x1
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$2,.L142
	li	$2,2			# 0x2
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$2,.L166
	li	$2,3			# 0x3
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$2,.L167
	li	$2,4			# 0x4
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$2,.L168
	li	$2,5			# 0x5
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$2,.L169
	li	$2,6			# 0x6
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$2,.L170
	li	$2,7			# 0x7
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$2,.L171
	daddiu	$2,$4,-8
	.set	macro
	.set	reorder

	sltu	$2,$2,9
	.set	noreorder
	.set	nomacro
	beq	$2,$0,.L38
	dsra	$9,$10,48
	.set	macro
	.set	reorder

	ld	$2,16($16)
	dsra	$5,$10,8
	dsra	$6,$10,16
	sb	$10,0($2)
	ld	$4,16($16)
	dsra	$7,$10,24
	dsra	$8,$10,32
	sb	$5,1($4)
	ld	$2,16($16)
	dsra	$5,$10,40
	sb	$6,2($2)
	ld	$4,16($16)
	dsra	$6,$10,56
	sb	$7,3($4)
	ld	$2,16($16)
	sb	$8,4($2)
	ld	$4,16($16)
	sb	$5,5($4)
	ld	$2,16($16)
	sb	$9,6($2)
	ld	$4,16($16)
	li	$2,8			# 0x8
	sb	$6,7($4)
	ld	$4,32($16)
	.set	noreorder
	.set	nomacro
	beq	$4,$2,.L38
	li	$2,9			# 0x9
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$2,.L172
	li	$2,10			# 0xa
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$2,.L173
	li	$2,11			# 0xb
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$2,.L174
	li	$2,12			# 0xc
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$2,.L175
	li	$2,13			# 0xd
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$2,.L176
	li	$2,14			# 0xe
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$2,.L177
	li	$2,15			# 0xf
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$2,.L178
	li	$2,16			# 0x10
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	bnel	$4,$2,.L181
	move	$sp,$fp
	.set	macro
	.set	reorder

	ld	$2,16($16)
	dsra	$5,$3,8
	dsra	$6,$3,16
	sb	$3,8($2)
	ld	$4,16($16)
	dsra	$7,$3,24
	dsra	$8,$3,40
	sb	$5,9($4)
	ld	$2,16($16)
	dsra	$5,$3,32
	sb	$6,10($2)
	ld	$4,16($16)
	dsra	$6,$3,48
	dsra	$3,$3,56
	sb	$7,11($4)
	ld	$2,16($16)
	sb	$5,12($2)
	ld	$4,16($16)
	sb	$8,13($4)
	ld	$2,16($16)
	sb	$6,14($2)
	ld	$4,16($16)
	.set	noreorder
	.set	nomacro
	b	.L38
	sb	$3,15($4)
	.set	macro
	.set	reorder

.L165:
	ld	$3,16($16)
	ld	$2,0($10)
	.set	noreorder
	.set	nomacro
	b	.L38
	sd	$2,0($3)
	.set	macro
	.set	reorder

.L164:
	ld	$3,16($16)
	lw	$2,0($10)
	.set	noreorder
	.set	nomacro
	b	.L38
	sw	$2,0($3)
	.set	macro
	.set	reorder

.L163:
	ld	$3,16($16)
	lhu	$2,0($10)
	.set	noreorder
	.set	nomacro
	b	.L38
	sh	$2,0($3)
	.set	macro
	.set	reorder

.L162:
	ld	$3,16($16)
	lbu	$2,0($10)
	.set	noreorder
	.set	nomacro
	b	.L38
	sb	$2,0($3)
	.set	macro
	.set	reorder

.L178:
	ld	$2,16($16)
	dsra	$5,$3,8
	dsra	$6,$3,16
	sb	$3,8($2)
	ld	$4,16($16)
	dsra	$7,$3,24
	dsra	$8,$3,40
	sb	$5,9($4)
	ld	$2,16($16)
	dsra	$5,$3,32
	dsra	$3,$3,48
	sb	$6,10($2)
	ld	$4,16($16)
	sb	$7,11($4)
	ld	$2,16($16)
	sb	$5,12($2)
	ld	$4,16($16)
	sb	$8,13($4)
	ld	$2,16($16)
	.set	noreorder
	.set	nomacro
	b	.L38
	sb	$3,14($2)
	.set	macro
	.set	reorder

.L177:
	ld	$2,16($16)
	dsra	$6,$3,8
	dsra	$7,$3,16
	sb	$3,8($2)
	ld	$4,16($16)
	dsra	$8,$3,24
	sb	$6,9($4)
	ld	$5,16($16)
	dsra	$6,$3,32
	dsra	$3,$3,40
	sb	$7,10($5)
	ld	$2,16($16)
	sb	$8,11($2)
	ld	$4,16($16)
	sb	$6,12($4)
	ld	$2,16($16)
	.set	noreorder
	.set	nomacro
	b	.L38
	sb	$3,13($2)
	.set	macro
	.set	reorder

.L176:
	ld	$2,16($16)
	dsra	$6,$3,8
	dsra	$7,$3,16
	sb	$3,8($2)
	ld	$5,16($16)
	dsra	$8,$3,24
	dsra	$3,$3,32
	sb	$6,9($5)
	ld	$4,16($16)
	sb	$7,10($4)
	ld	$2,16($16)
	sb	$8,11($2)
	ld	$4,16($16)
	.set	noreorder
	.set	nomacro
	b	.L38
	sb	$3,12($4)
	.set	macro
	.set	reorder

.L175:
	ld	$2,16($16)
	dsra	$5,$3,8
	dsra	$6,$3,16
	sb	$3,8($2)
	ld	$4,16($16)
	dsra	$3,$3,24
	sb	$5,9($4)
	ld	$2,16($16)
	sb	$6,10($2)
	ld	$4,16($16)
	.set	noreorder
	.set	nomacro
	b	.L38
	sb	$3,11($4)
	.set	macro
	.set	reorder

.L174:
	ld	$2,16($16)
	dsra	$5,$3,8
	sb	$3,8($2)
	ld	$4,16($16)
	dsra	$3,$3,16
	sb	$5,9($4)
	ld	$2,16($16)
	.set	noreorder
	.set	nomacro
	b	.L38
	sb	$3,10($2)
	.set	macro
	.set	reorder

.L173:
	ld	$4,16($16)
	dsra	$5,$3,8
	sb	$3,8($4)
	ld	$2,16($16)
	.set	noreorder
	.set	nomacro
	b	.L38
	sb	$5,9($2)
	.set	macro
	.set	reorder

.L172:
	ld	$2,16($16)
	.set	noreorder
	.set	nomacro
	b	.L38
	sb	$3,8($2)
	.set	macro
	.set	reorder

.L171:
	ld	$2,16($16)
	dsra	$5,$10,8
	dsra	$6,$10,16
	sb	$10,0($2)
	ld	$3,16($16)
	dsra	$7,$10,24
	dsra	$8,$10,32
	sb	$5,1($3)
	ld	$4,16($16)
	dsra	$5,$10,40
	dsra	$9,$10,48
	sb	$6,2($4)
	ld	$2,16($16)
	sb	$7,3($2)
	ld	$3,16($16)
	sb	$8,4($3)
	ld	$2,16($16)
	sb	$5,5($2)
	ld	$3,16($16)
	.set	noreorder
	.set	nomacro
	b	.L38
	sb	$9,6($3)
	.set	macro
	.set	reorder

.L170:
	ld	$2,16($16)
	dsra	$5,$10,8
	dsra	$6,$10,16
	sb	$10,0($2)
	ld	$4,16($16)
	dsra	$7,$10,24
	dsra	$8,$10,32
	sb	$5,1($4)
	ld	$3,16($16)
	dsra	$4,$10,40
	sb	$6,2($3)
	ld	$2,16($16)
	sb	$7,3($2)
	ld	$3,16($16)
	sb	$8,4($3)
	ld	$2,16($16)
	.set	noreorder
	.set	nomacro
	b	.L38
	sb	$4,5($2)
	.set	macro
	.set	reorder

.L169:
	ld	$2,16($16)
	dsra	$4,$10,8
	dsra	$5,$10,16
	sb	$10,0($2)
	ld	$3,16($16)
	dsra	$6,$10,24
	dsra	$7,$10,32
	sb	$4,1($3)
	ld	$2,16($16)
	sb	$5,2($2)
	ld	$3,16($16)
	sb	$6,3($3)
	ld	$2,16($16)
	.set	noreorder
	.set	nomacro
	b	.L38
	sb	$7,4($2)
	.set	macro
	.set	reorder

.L168:
	ld	$2,16($16)
	dsra	$4,$10,8
	dsra	$6,$10,16
	sb	$10,0($2)
	ld	$3,16($16)
	dsra	$5,$10,24
	sb	$4,1($3)
	ld	$2,16($16)
	sb	$6,2($2)
	ld	$3,16($16)
	.set	noreorder
	.set	nomacro
	b	.L38
	sb	$5,3($3)
	.set	macro
	.set	reorder

.L167:
	ld	$3,16($16)
	dsra	$4,$10,8
	dsra	$5,$10,16
	sb	$10,0($3)
	ld	$2,16($16)
	sb	$4,1($2)
	ld	$3,16($16)
	.set	noreorder
	.set	nomacro
	b	.L38
	sb	$5,2($3)
	.set	macro
	.set	reorder

.L166:
	ld	$2,16($16)
	dsra	$4,$10,8
	sb	$10,0($2)
	ld	$3,16($16)
	.set	noreorder
	.set	nomacro
	b	.L38
	sb	$4,1($3)
	.set	macro
	.set	reorder

	.end	__builtin_avcall
	.ident	"GCC: (GNU) 4.0.2"
