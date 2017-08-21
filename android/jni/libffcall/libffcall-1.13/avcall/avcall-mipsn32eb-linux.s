	.file	1 "avcall-mipsn32.c"
	.section .mdebug.abiN32
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
	addiu	$sp,$sp,-64
	sd	$fp,40($sp)
	sd	$16,32($sp)
	sd	$31,48($sp)
	lw	$3,20($4)
	move	$16,$4
	lw	$4,28($4)
	addiu	$2,$16,72
	move	$fp,$sp
	subu	$3,$3,$2
	addiu	$sp,$sp,-2064
	sra	$3,$3,3
	.set	noreorder
	.set	nomacro
	beq	$4,$0,.L2
	move	$5,$sp
	.set	macro
	.set	reorder

	andi	$2,$4,0x1
	.set	noreorder
	.set	nomacro
	bne	$2,$0,.L143
	andi	$2,$4,0x2
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	bne	$2,$0,.L144
	andi	$2,$4,0x4
	.set	macro
	.set	reorder

.L188:
	.set	noreorder
	.set	nomacro
	bne	$2,$0,.L145
	andi	$2,$4,0x8
	.set	macro
	.set	reorder

.L187:
	.set	noreorder
	.set	nomacro
	bne	$2,$0,.L146
	andi	$2,$4,0x10
	.set	macro
	.set	reorder

.L186:
	.set	noreorder
	.set	nomacro
	bne	$2,$0,.L147
	andi	$2,$4,0x20
	.set	macro
	.set	reorder

.L185:
	.set	noreorder
	.set	nomacro
	bne	$2,$0,.L148
	andi	$2,$4,0x40
	.set	macro
	.set	reorder

.L184:
	.set	noreorder
	.set	nomacro
	bne	$2,$0,.L149
	andi	$2,$4,0x80
	.set	macro
	.set	reorder

.L183:
	bne	$2,$0,.L150
	.align	3
.L2:
	lw	$4,32($16)
.L180:
	.set	noreorder
	.set	nomacro
	beq	$4,$0,.L179
	slt	$2,$3,9
	.set	macro
	.set	reorder

	andi	$2,$4,0x1
	.set	noreorder
	.set	nomacro
	bne	$2,$0,.L151
	andi	$2,$4,0x2
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	bne	$2,$0,.L152
	andi	$2,$4,0x4
	.set	macro
	.set	reorder

.L192:
	.set	noreorder
	.set	nomacro
	bne	$2,$0,.L153
	andi	$2,$4,0x8
	.set	macro
	.set	reorder

.L191:
	.set	noreorder
	.set	nomacro
	bne	$2,$0,.L154
	andi	$2,$4,0x10
	.set	macro
	.set	reorder

.L190:
	.set	noreorder
	.set	nomacro
	bne	$2,$0,.L155
	andi	$2,$4,0x20
	.set	macro
	.set	reorder

.L189:
	.set	noreorder
	.set	nomacro
	bne	$2,$0,.L156
	andi	$2,$4,0x40
	.set	macro
	.set	reorder

.L194:
	.set	noreorder
	.set	nomacro
	bne	$2,$0,.L157
	andi	$2,$4,0x80
	.set	macro
	.set	reorder

.L193:
	bne	$2,$0,.L158
	slt	$2,$3,9
.L179:
	.set	noreorder
	.set	nomacro
	bne	$2,$0,.L37
	move	$6,$5
	.set	macro
	.set	reorder

	li	$4,8			# 0x8
	move	$5,$16
	.align	3
.L36:
	ld	$2,136($5)
	addiu	$4,$4,1
	addiu	$5,$5,8
	sd	$2,0($6)
	.set	noreorder
	.set	nomacro
	bne	$3,$4,.L36
	addiu	$6,$6,8
	.set	macro
	.set	reorder

.L37:
#APP
	ld $4,72($16)
	ld $5,80($16)
	ld $6,88($16)
	ld $7,96($16)
	ld $8,104($16)
	ld $9,112($16)
	ld $10,120($16)
	ld $11,128($16)
#NO_APP
	lw	$25,0($16)
	jal	$25
	lw	$4,12($16)
	move	$9,$2
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
	lw	$2,8($16)
	.set	macro
	.set	reorder

	li	$2,2			# 0x2
	.set	noreorder
	.set	nomacro
	beq	$4,$2,.L132
	li	$2,3			# 0x3
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$2,.L132
	li	$2,4			# 0x4
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$2,.L132
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
	beq	$4,$2,.L141
	li	$2,8			# 0x8
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$2,.L141
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
	beq	$4,$2,.L140
	li	$2,12			# 0xc
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$2,.L140
	li	$2,13			# 0xd
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$2,.L159
	li	$2,14			# 0xe
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$2,.L160
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

	lw	$4,4($16)
	andi	$2,$4,0x1
	.set	noreorder
	.set	nomacro
	beq	$2,$0,.L71
	andi	$2,$4,0x200
	.set	macro
	.set	reorder

	lw	$3,16($16)
	li	$2,1			# 0x1
	.set	noreorder
	.set	nomacro
	beq	$3,$2,.L161
	li	$2,2			# 0x2
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$3,$2,.L162
	li	$2,4			# 0x4
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$3,$2,.L163
	li	$2,8			# 0x8
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$3,$2,.L164
	addiu	$2,$3,7
	.set	macro
	.set	reorder

	srl	$7,$2,3
	addiu	$2,$7,-1
	.set	noreorder
	.set	nomacro
	bltzl	$2,.L181
	move	$sp,$fp
	.set	macro
	.set	reorder

	lw	$8,8($16)
	sll	$5,$2,3
	sll	$2,$9,0
	addu	$4,$2,$5
	move	$6,$0
.L82:
	ld	$3,0($4)
	addu	$2,$5,$8
	addiu	$6,$6,1
	sd	$3,0($2)
	addiu	$5,$5,-8
	.set	noreorder
	.set	nomacro
	bne	$7,$6,.L82
	addiu	$4,$4,-8
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
	addiu	$sp,$sp,64
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
	lw	$4,16($16)
	.set	macro
	.set	reorder

	lw	$3,16($16)
	li	$2,1			# 0x1
	.set	noreorder
	.set	nomacro
	beq	$3,$2,.L132
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
	beq	$3,$2,.L141
	li	$2,8			# 0x8
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	bnel	$3,$2,.L181
	move	$sp,$fp
	.set	macro
	.set	reorder

.L140:
	lw	$2,8($16)
.L182:
	move	$sp,$fp
	sd	$9,0($2)
	ld	$31,48($sp)
	ld	$fp,40($sp)
	ld	$16,32($sp)
	move	$2,$0
	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,64
	.set	macro
	.set	reorder

.L158:
#APP
	ldc1 $f19,128($16)
#NO_APP
	.set	noreorder
	.set	nomacro
	b	.L179
	slt	$2,$3,9
	.set	macro
	.set	reorder

.L150:
#APP
	lwc1 $f19,64($16)
#NO_APP
	.set	noreorder
	.set	nomacro
	b	.L180
	lw	$4,32($16)
	.set	macro
	.set	reorder

.L149:
#APP
	lwc1 $f18,60($16)
#NO_APP
	andi	$2,$4,0x80
	.set	noreorder
	.set	nomacro
	beql	$2,$0,.L180
	lw	$4,32($16)
	.set	macro
	.set	reorder

	b	.L150
.L148:
#APP
	lwc1 $f17,56($16)
#NO_APP
	andi	$2,$4,0x40
	.set	noreorder
	.set	nomacro
	beq	$2,$0,.L183
	andi	$2,$4,0x80
	.set	macro
	.set	reorder

	b	.L149
.L147:
#APP
	lwc1 $f16,52($16)
#NO_APP
	andi	$2,$4,0x20
	.set	noreorder
	.set	nomacro
	beq	$2,$0,.L184
	andi	$2,$4,0x40
	.set	macro
	.set	reorder

	b	.L148
.L146:
#APP
	lwc1 $f15,48($16)
#NO_APP
	andi	$2,$4,0x10
	.set	noreorder
	.set	nomacro
	beq	$2,$0,.L185
	andi	$2,$4,0x20
	.set	macro
	.set	reorder

	b	.L147
.L145:
#APP
	lwc1 $f14,44($16)
#NO_APP
	andi	$2,$4,0x8
	.set	noreorder
	.set	nomacro
	beq	$2,$0,.L186
	andi	$2,$4,0x10
	.set	macro
	.set	reorder

	b	.L146
.L144:
#APP
	lwc1 $f13,40($16)
#NO_APP
	andi	$2,$4,0x4
	.set	noreorder
	.set	nomacro
	beq	$2,$0,.L187
	andi	$2,$4,0x8
	.set	macro
	.set	reorder

	b	.L145
.L143:
#APP
	lwc1 $f12,36($16)
#NO_APP
	andi	$2,$4,0x2
	.set	noreorder
	.set	nomacro
	beq	$2,$0,.L188
	andi	$2,$4,0x4
	.set	macro
	.set	reorder

	b	.L144
.L154:
#APP
	ldc1 $f15,96($16)
#NO_APP
	andi	$2,$4,0x10
	.set	noreorder
	.set	nomacro
	beq	$2,$0,.L189
	andi	$2,$4,0x20
	.set	macro
	.set	reorder

	b	.L155
.L153:
#APP
	ldc1 $f14,88($16)
#NO_APP
	andi	$2,$4,0x8
	.set	noreorder
	.set	nomacro
	beq	$2,$0,.L190
	andi	$2,$4,0x10
	.set	macro
	.set	reorder

	b	.L154
.L152:
#APP
	ldc1 $f13,80($16)
#NO_APP
	andi	$2,$4,0x4
	.set	noreorder
	.set	nomacro
	beq	$2,$0,.L191
	andi	$2,$4,0x8
	.set	macro
	.set	reorder

	b	.L153
.L151:
#APP
	ldc1 $f12,72($16)
#NO_APP
	andi	$2,$4,0x2
	.set	noreorder
	.set	nomacro
	beq	$2,$0,.L192
	andi	$2,$4,0x4
	.set	macro
	.set	reorder

	b	.L152
.L156:
#APP
	ldc1 $f17,112($16)
#NO_APP
	andi	$2,$4,0x40
	.set	noreorder
	.set	nomacro
	beq	$2,$0,.L193
	andi	$2,$4,0x80
	.set	macro
	.set	reorder

	b	.L157
.L155:
#APP
	ldc1 $f16,104($16)
#NO_APP
	andi	$2,$4,0x20
	.set	noreorder
	.set	nomacro
	beq	$2,$0,.L194
	andi	$2,$4,0x40
	.set	macro
	.set	reorder

	b	.L156
.L157:
#APP
	ldc1 $f18,120($16)
#NO_APP
	andi	$2,$4,0x80
	.set	noreorder
	.set	nomacro
	beql	$2,$0,.L179
	slt	$2,$3,9
	.set	macro
	.set	reorder

	b	.L158
.L132:
	lw	$2,8($16)
	move	$sp,$fp
	sb	$9,0($2)
	ld	$31,48($sp)
	ld	$fp,40($sp)
	ld	$16,32($sp)
	move	$2,$0
	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,64
	.set	macro
	.set	reorder

.L141:
	lw	$2,8($16)
	.set	noreorder
	.set	nomacro
	b	.L38
	sw	$9,0($2)
	.set	macro
	.set	reorder

.L134:
	lw	$2,8($16)
	.set	noreorder
	.set	nomacro
	b	.L38
	sh	$9,0($2)
	.set	macro
	.set	reorder

.L159:
	lw	$2,8($16)
	.set	noreorder
	.set	nomacro
	b	.L38
	swc1	$f0,0($2)
	.set	macro
	.set	reorder

.L160:
	lw	$2,8($16)
	.set	noreorder
	.set	nomacro
	b	.L38
	sdc1	$f0,0($2)
	.set	macro
	.set	reorder

.L84:
	addiu	$2,$4,-1
	sltu	$2,$2,16
	.set	noreorder
	.set	nomacro
	beq	$2,$0,.L38
	li	$2,1			# 0x1
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$4,$2,.L165
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
	addiu	$2,$4,-8
	.set	macro
	.set	reorder

	sltu	$2,$2,9
	.set	noreorder
	.set	nomacro
	beq	$2,$0,.L38
	dsra	$2,$9,56
	.set	macro
	.set	reorder

	lw	$4,8($16)
	dsra	$6,$9,48
	sb	$2,0($4)
	lw	$5,8($16)
	dsra	$7,$9,40
	dsra	$8,$9,32
	sb	$6,1($5)
	lw	$2,8($16)
	dsra	$5,$9,24
	dsra	$6,$9,16
	sb	$7,2($2)
	lw	$4,8($16)
	dsra	$7,$9,8
	sb	$8,3($4)
	lw	$2,8($16)
	sb	$5,4($2)
	lw	$4,8($16)
	sb	$6,5($4)
	lw	$2,8($16)
	sb	$7,6($2)
	lw	$4,8($16)
	li	$2,8			# 0x8
	sb	$9,7($4)
	lw	$4,16($16)
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

	lw	$4,8($16)
	dsra	$2,$3,56
	dsra	$6,$3,40
	sb	$2,8($4)
	lw	$5,8($16)
	dsra	$2,$3,48
	dsra	$7,$3,32
	sb	$2,9($5)
	lw	$4,8($16)
	dsra	$8,$3,24
	dsra	$9,$3,8
	sb	$6,10($4)
	lw	$5,8($16)
	dsra	$6,$3,16
	sb	$7,11($5)
	lw	$2,8($16)
	sb	$8,12($2)
	lw	$4,8($16)
	sb	$6,13($4)
	lw	$2,8($16)
	sb	$9,14($2)
	lw	$4,8($16)
	.set	noreorder
	.set	nomacro
	b	.L38
	sb	$3,15($4)
	.set	macro
	.set	reorder

.L164:
	sll	$2,$9,0
	lw	$4,8($16)
	lw	$3,4($2)
	.set	noreorder
	.set	nomacro
	b	.L38
	sw	$3,0($4)
	.set	macro
	.set	reorder

.L163:
	sll	$2,$9,0
	lw	$4,8($16)
	lw	$3,0($2)
	.set	noreorder
	.set	nomacro
	b	.L38
	sw	$3,0($4)
	.set	macro
	.set	reorder

.L162:
	sll	$2,$9,0
	lw	$4,8($16)
	lhu	$3,0($2)
	.set	noreorder
	.set	nomacro
	b	.L38
	sh	$3,0($4)
	.set	macro
	.set	reorder

.L161:
	sll	$2,$9,0
	lw	$4,8($16)
	lbu	$3,0($2)
	.set	noreorder
	.set	nomacro
	b	.L38
	sb	$3,0($4)
	.set	macro
	.set	reorder

.L178:
	lw	$4,8($16)
	dsra	$2,$3,56
	dsra	$6,$3,40
	sb	$2,8($4)
	lw	$5,8($16)
	dsra	$2,$3,48
	dsra	$7,$3,32
	sb	$2,9($5)
	lw	$4,8($16)
	dsra	$8,$3,24
	sb	$6,10($4)
	lw	$5,8($16)
	dsra	$6,$3,16
	dsra	$3,$3,8
	sb	$7,11($5)
	lw	$2,8($16)
	sb	$8,12($2)
	lw	$4,8($16)
	sb	$6,13($4)
	lw	$2,8($16)
	.set	noreorder
	.set	nomacro
	b	.L38
	sb	$3,14($2)
	.set	macro
	.set	reorder

.L177:
	lw	$4,8($16)
	dsra	$2,$3,56
	dsra	$7,$3,40
	sb	$2,8($4)
	lw	$5,8($16)
	dsra	$2,$3,48
	dsra	$8,$3,24
	sb	$2,9($5)
	lw	$6,8($16)
	dsra	$5,$3,32
	dsra	$3,$3,16
	sb	$7,10($6)
	lw	$4,8($16)
	sb	$5,11($4)
	lw	$2,8($16)
	sb	$8,12($2)
	lw	$4,8($16)
	.set	noreorder
	.set	nomacro
	b	.L38
	sb	$3,13($4)
	.set	macro
	.set	reorder

.L176:
	lw	$4,8($16)
	dsra	$2,$3,56
	dsra	$6,$3,40
	sb	$2,8($4)
	lw	$5,8($16)
	dsra	$2,$3,48
	sb	$2,9($5)
	lw	$4,8($16)
	dsra	$5,$3,32
	dsra	$3,$3,24
	sb	$6,10($4)
	lw	$2,8($16)
	sb	$5,11($2)
	lw	$4,8($16)
	.set	noreorder
	.set	nomacro
	b	.L38
	sb	$3,12($4)
	.set	macro
	.set	reorder

.L175:
	lw	$4,8($16)
	dsra	$2,$3,56
	dsra	$6,$3,40
	sb	$2,8($4)
	lw	$5,8($16)
	dsra	$2,$3,48
	dsra	$3,$3,32
	sb	$2,9($5)
	lw	$4,8($16)
	sb	$6,10($4)
	lw	$2,8($16)
	.set	noreorder
	.set	nomacro
	b	.L38
	sb	$3,11($2)
	.set	macro
	.set	reorder

.L174:
	lw	$4,8($16)
	dsra	$2,$3,56
	sb	$2,8($4)
	lw	$5,8($16)
	dsra	$4,$3,48
	dsra	$3,$3,40
	sb	$4,9($5)
	lw	$2,8($16)
	.set	noreorder
	.set	nomacro
	b	.L38
	sb	$3,10($2)
	.set	macro
	.set	reorder

.L173:
	lw	$5,8($16)
	dsra	$2,$3,56
	dsra	$3,$3,48
	sb	$2,8($5)
	lw	$4,8($16)
	.set	noreorder
	.set	nomacro
	b	.L38
	sb	$3,9($4)
	.set	macro
	.set	reorder

.L172:
	lw	$2,8($16)
	dsra	$3,$3,56
	.set	noreorder
	.set	nomacro
	b	.L38
	sb	$3,8($2)
	.set	macro
	.set	reorder

.L171:
	lw	$3,8($16)
	dsra	$2,$9,56
	dsra	$5,$9,48
	sb	$2,0($3)
	lw	$4,8($16)
	dsra	$6,$9,40
	dsra	$7,$9,32
	sb	$5,1($4)
	lw	$2,8($16)
	dsra	$4,$9,24
	dsra	$5,$9,16
	sb	$6,2($2)
	lw	$3,8($16)
	dsra	$6,$9,8
	sb	$7,3($3)
	lw	$2,8($16)
	sb	$4,4($2)
	lw	$3,8($16)
	sb	$5,5($3)
	lw	$2,8($16)
	.set	noreorder
	.set	nomacro
	b	.L38
	sb	$6,6($2)
	.set	macro
	.set	reorder

.L170:
	lw	$3,8($16)
	dsra	$2,$9,56
	dsra	$5,$9,48
	sb	$2,0($3)
	lw	$4,8($16)
	dsra	$6,$9,40
	dsra	$7,$9,32
	sb	$5,1($4)
	lw	$3,8($16)
	dsra	$4,$9,24
	dsra	$5,$9,16
	sb	$6,2($3)
	lw	$2,8($16)
	sb	$7,3($2)
	lw	$3,8($16)
	sb	$4,4($3)
	lw	$2,8($16)
	.set	noreorder
	.set	nomacro
	b	.L38
	sb	$5,5($2)
	.set	macro
	.set	reorder

.L169:
	lw	$3,8($16)
	dsra	$2,$9,56
	dsra	$5,$9,48
	sb	$2,0($3)
	lw	$4,8($16)
	dsra	$6,$9,40
	dsra	$7,$9,32
	sb	$5,1($4)
	lw	$3,8($16)
	dsra	$4,$9,24
	sb	$6,2($3)
	lw	$2,8($16)
	sb	$7,3($2)
	lw	$3,8($16)
	.set	noreorder
	.set	nomacro
	b	.L38
	sb	$4,4($3)
	.set	macro
	.set	reorder

.L168:
	lw	$3,8($16)
	dsra	$2,$9,56
	dsra	$5,$9,48
	sb	$2,0($3)
	lw	$4,8($16)
	dsra	$6,$9,40
	dsra	$7,$9,32
	sb	$5,1($4)
	lw	$2,8($16)
	sb	$6,2($2)
	lw	$3,8($16)
	.set	noreorder
	.set	nomacro
	b	.L38
	sb	$7,3($3)
	.set	macro
	.set	reorder

.L167:
	lw	$4,8($16)
	dsra	$2,$9,56
	dsra	$5,$9,48
	sb	$2,0($4)
	lw	$3,8($16)
	dsra	$4,$9,40
	sb	$5,1($3)
	lw	$2,8($16)
	.set	noreorder
	.set	nomacro
	b	.L38
	sb	$4,2($2)
	.set	macro
	.set	reorder

.L166:
	lw	$4,8($16)
	dsra	$3,$9,56
	dsra	$5,$9,48
	sb	$3,0($4)
	lw	$2,8($16)
	.set	noreorder
	.set	nomacro
	b	.L38
	sb	$5,1($2)
	.set	macro
	.set	reorder

.L165:
	lw	$3,8($16)
	dsra	$2,$9,56
	.set	noreorder
	.set	nomacro
	b	.L38
	sb	$2,0($3)
	.set	macro
	.set	reorder

	.end	__builtin_avcall
	.ident	"GCC: (GNU) 4.0.2"
