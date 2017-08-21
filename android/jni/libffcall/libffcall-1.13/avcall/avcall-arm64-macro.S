#include "asm-arm.h"
	.cpu generic+fp+simd
	.text
	.align	2
	.p2align 3,,7
	.global C(__builtin_avcall)
	.type	__builtin_avcall, %function
FUNBEGIN(__builtin_avcall)
	stp	x29, x30, [sp, -32]!
	add	x12, x0, 240
	mov	x9, 0
	add	x29, sp, 0
	ldr	x11, [x0, 40]
	mov	x10, x12
	stp	x19, x20, [sp, 16]
	sub	x12, x11, x12
	sub	sp, sp, $2064
	sbfx	x12, x12, 3, 32
	mov	x19, x0
	cmp	x12, xzr
	ldr	w15, [x0, 56]
	ldr	w14, [x0, 128]
	mov	x13, sp
	ble	L(6)
	.p2align 2
L(100:)
	ldr	x11, [x10], 8
	str	x11, [x13, x9, lsl 3]
	add	x9, x9, 1
	cmp	x9, x12
	bne	L(100)
L(6:)
	cbz	w15, L(7)
	cmp	w15, 1
	ldr	x0, [x19, 64]
	bls	L(7)
	cmp	w15, 2
	ldr	x1, [x19, 72]
	beq	L(7)
	cmp	w15, 3
	ldr	x2, [x19, 80]
	beq	L(7)
	cmp	w15, 4
	ldr	x3, [x19, 88]
	beq	L(7)
	cmp	w15, 5
	ldr	x4, [x19, 96]
	beq	L(7)
	cmp	w15, 6
	ldr	x5, [x19, 104]
	beq	L(7)
	cmp	w15, 7
	ldr	x6, [x19, 112]
	beq	L(7)
	ldr	x7, [x19, 120]
	.p2align 2
L(7:)
	cbz	w14, L(9)
	ldr	w9, [x19, 136]
	tbz	x9, 0, L(10)
	ldr	d0, [x19, 176]
L(11:)
	cmp	w14, 1
	bls	L(9)
	tbnz	x9, 1, L(135)
	ldr	w10, [x19, 132]
	tbz	x10, 1, L(14)
	ldr	s1, [x19, 144]
L(14:)
	cmp	w14, 2
	beq	L(9)
	tbz	x9, 2, L(15)
	ldr	d2, [x19, 192]
L(16:)
	cmp	w14, 3
	beq	L(9)
	tbz	x9, 3, L(17)
	ldr	d3, [x19, 200]
L(18:)
	cmp	w14, 4
	beq	L(9)
	tbnz	x9, 4, L(136)
	ldr	w10, [x19, 132]
	tbz	x10, 4, L(20)
	ldr	s4, [x19, 156]
L(20:)
	cmp	w14, 5
	beq	L(9)
	tbz	x9, 5, L(21)
	ldr	d5, [x19, 216]
L(22:)
	cmp	w14, 6
	beq	L(9)
	tbz	x9, 6, L(23)
	ldr	d6, [x19, 224]
L(24:)
	cmp	w14, 7
	beq	L(9)
	tbz	x9, 7, L(25)
	ldr	d7, [x19, 232]
	.p2align 2
L(9:)
	ldr	w9, [x19, 24]
	cmp	w9, 13
	beq	L(137)
	cmp	w9, 14
	beq	L(138)
	ldr	x9, [x19]
	blr	x9
	mov	x9, x0
	ldr	w11, [x19, 24]
	cmp	w11, 1
	beq	L(27)
	cbz	w11, L(133)
	cmp	w11, 2
	beq	L(129)
	cmp	w11, 3
	beq	L(129)
	cmp	w11, 4
	beq	L(129)
	cmp	w11, 5
	beq	L(130)
	cmp	w11, 6
	beq	L(130)
	cmp	w11, 7
	beq	L(131)
	cmp	w11, 8
	beq	L(131)
	and	w12, w11, -3
	cmp	w12, 9
	beq	L(133)
	sub	w12, w11, $10
	tst	w12, -3
	beq	L(133)
	cmp	w11, 15
	beq	L(133)
	cmp	w11, 16
	bne	L(27)
	ldr	w11, [x19, 8]
	tbz	x11, 9, L(27)
	ldr	x11, [x19, 32]
	sub	x12, x11, $1
	cmp	x12, 15
	bhi	L(27)
	cmp	x11, 1
	beq	L(129)
	cmp	x11, 2
	beq	L(139)
	cmp	x11, 3
	beq	L(140)
	cmp	x11, 4
	beq	L(141)
	cmp	x11, 5
	beq	L(142)
	cmp	x11, 6
	beq	L(143)
	cmp	x11, 7
	beq	L(144)
	ldr	x11, [x19, 16]
	asr	x17, x0, 8
	asr	x16, x0, 16
	asr	x15, x0, 24
	asr	x14, x0, 32
	asr	x13, x0, 40
	strb	w0, [x11]
	asr	x12, x0, 48
	asr	x9, x0, 56
	ldr	x11, [x19, 16]
	strb	w17, [x11, 1]
	ldr	x11, [x19, 16]
	strb	w16, [x11, 2]
	ldr	x11, [x19, 16]
	strb	w15, [x11, 3]
	ldr	x11, [x19, 16]
	strb	w14, [x11, 4]
	ldr	x11, [x19, 16]
	strb	w13, [x11, 5]
	ldr	x11, [x19, 16]
	strb	w12, [x11, 6]
	ldr	x11, [x19, 16]
	strb	w9, [x11, 7]
	ldr	x9, [x19, 32]
	cmp	x9, 8
	beq	L(27)
	cmp	x9, 9
	beq	L(145)
	cmp	x9, 10
	beq	L(146)
	cmp	x9, 11
	beq	L(147)
	cmp	x9, 12
	beq	L(148)
	cmp	x9, 13
	beq	L(149)
	cmp	x9, 14
	beq	L(150)
	cmp	x9, 15
	beq	L(151)
	cmp	x9, 16
	bne	L(27)
	ldr	x9, [x19, 16]
	asr	x16, x1, 8
	asr	x15, x1, 16
	asr	x14, x1, 24
	asr	x13, x1, 32
	asr	x12, x1, 40
	strb	w1, [x9, 8]
	asr	x11, x1, 48
	asr	x10, x1, 56
	ldr	x9, [x19, 16]
	strb	w16, [x9, 9]
	ldr	x9, [x19, 16]
	strb	w15, [x9, 10]
	ldr	x9, [x19, 16]
	strb	w14, [x9, 11]
	ldr	x9, [x19, 16]
	strb	w13, [x9, 12]
	ldr	x9, [x19, 16]
	strb	w12, [x9, 13]
	ldr	x9, [x19, 16]
	strb	w11, [x9, 14]
	ldr	x9, [x19, 16]
	strb	w10, [x9, 15]
L(27:)
	add	sp, x29, 0
	mov	w0, 0
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 32
	ret
L(10:)
	ldr	w10, [x19, 132]
	tbz	x10, 0, L(11)
	ldr	s0, [x19, 140]
	b	L(11)
L(133:)
	ldr	x10, [x19, 16]
	mov	w0, 0
	str	x9, [x10]
	add	sp, x29, 0
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 32
	ret
L(135:)
	ldr	d1, [x19, 184]
	b	L(14)
L(129:)
	ldr	x10, [x19, 16]
	mov	w0, 0
	strb	w9, [x10]
	add	sp, x29, 0
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 32
	ret
L(138:)
	ldr	x9, [x19]
	ldr	x20, [x19, 16]
	blr	x9
	str	d0, [x20]
	mov	w0, 0
	add	sp, x29, 0
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 32
	ret
L(137:)
	ldr	x20, [x19, 16]
	ldr	x9, [x19]
	blr	x9
	str	s0, [x20]
	b	L(27)
L(15:)
	ldr	w10, [x19, 132]
	tbz	x10, 2, L(16)
	ldr	s2, [x19, 148]
	b	L(16)
L(130:)
	ldr	x10, [x19, 16]
	strh	w9, [x10]
	b	L(27)
L(17:)
	ldr	w10, [x19, 132]
	tbz	x10, 3, L(18)
	ldr	s3, [x19, 152]
	b	L(18)
L(136:)
	ldr	d4, [x19, 208]
	b	L(20)
L(131:)
	ldr	x10, [x19, 16]
	str	w9, [x10]
	b	L(27)
L(23:)
	ldr	w10, [x19, 132]
	tbz	x10, 6, L(24)
	ldr	s6, [x19, 164]
	b	L(24)
	.p2align 3
L(21:)
	ldr	w10, [x19, 132]
	tbz	x10, 5, L(22)
	ldr	s5, [x19, 160]
	b	L(22)
L(25:)
	ldr	w9, [x19, 132]
	tbz	x9, 7, L(9)
	ldr	s7, [x19, 168]
	b	L(9)
L(151:)
	ldr	x9, [x19, 16]
	asr	x15, x1, 8
	asr	x14, x1, 16
	asr	x13, x1, 24
	asr	x12, x1, 32
	asr	x11, x1, 40
	strb	w1, [x9, 8]
	asr	x10, x1, 48
	ldr	x9, [x19, 16]
	strb	w15, [x9, 9]
	ldr	x9, [x19, 16]
	strb	w14, [x9, 10]
	ldr	x9, [x19, 16]
	strb	w13, [x9, 11]
	ldr	x9, [x19, 16]
	strb	w12, [x9, 12]
	ldr	x9, [x19, 16]
	strb	w11, [x9, 13]
	ldr	x9, [x19, 16]
	strb	w10, [x9, 14]
	b	L(27)
L(150:)
	ldr	x9, [x19, 16]
	asr	x15, x1, 8
	asr	x14, x1, 16
	asr	x13, x1, 24
	asr	x12, x1, 32
	asr	x11, x1, 40
	strb	w1, [x9, 8]
	ldr	x9, [x19, 16]
	strb	w15, [x9, 9]
	ldr	x9, [x19, 16]
	strb	w14, [x9, 10]
	ldr	x9, [x19, 16]
	strb	w13, [x9, 11]
	ldr	x9, [x19, 16]
	strb	w12, [x9, 12]
	ldr	x9, [x19, 16]
	strb	w11, [x9, 13]
	b	L(27)
L(149:)
	ldr	x9, [x19, 16]
	asr	x14, x1, 8
	asr	x13, x1, 16
	asr	x12, x1, 24
	asr	x11, x1, 32
	strb	w1, [x9, 8]
	ldr	x9, [x19, 16]
	strb	w14, [x9, 9]
	ldr	x9, [x19, 16]
	strb	w13, [x9, 10]
	ldr	x9, [x19, 16]
	strb	w12, [x9, 11]
	ldr	x9, [x19, 16]
	strb	w11, [x9, 12]
	b	L(27)
L(148:)
	ldr	x9, [x19, 16]
	asr	x13, x1, 8
	asr	x12, x1, 16
	asr	x11, x1, 24
	strb	w1, [x9, 8]
	ldr	x9, [x19, 16]
	strb	w13, [x9, 9]
	ldr	x9, [x19, 16]
	strb	w12, [x9, 10]
	ldr	x9, [x19, 16]
	strb	w11, [x9, 11]
	b	L(27)
L(147:)
	ldr	x9, [x19, 16]
	asr	x12, x1, 8
	asr	x11, x1, 16
	strb	w1, [x9, 8]
	ldr	x9, [x19, 16]
	strb	w12, [x9, 9]
	ldr	x9, [x19, 16]
	strb	w11, [x9, 10]
	b	L(27)
L(146:)
	ldr	x9, [x19, 16]
	asr	x11, x1, 8
	strb	w1, [x9, 8]
	ldr	x9, [x19, 16]
	strb	w11, [x9, 9]
	b	L(27)
L(145:)
	ldr	x9, [x19, 16]
	strb	w1, [x9, 8]
	b	L(27)
L(144:)
	ldr	x10, [x19, 16]
	asr	x15, x0, 8
	asr	x14, x0, 16
	asr	x13, x0, 24
	asr	x12, x0, 32
	asr	x11, x0, 40
	strb	w0, [x10]
	asr	x9, x0, 48
	ldr	x10, [x19, 16]
	strb	w15, [x10, 1]
	ldr	x10, [x19, 16]
	strb	w14, [x10, 2]
	ldr	x10, [x19, 16]
	strb	w13, [x10, 3]
	ldr	x10, [x19, 16]
	strb	w12, [x10, 4]
	ldr	x10, [x19, 16]
	strb	w11, [x10, 5]
	ldr	x10, [x19, 16]
	strb	w9, [x10, 6]
	b	L(27)
L(143:)
	ldr	x15, [x19, 16]
	asr	x14, x0, 8
	asr	x13, x0, 16
	asr	x12, x0, 24
	asr	x11, x0, 32
	asr	x10, x0, 40
	strb	w0, [x15]
	ldr	x9, [x19, 16]
	strb	w14, [x9, 1]
	ldr	x9, [x19, 16]
	strb	w13, [x9, 2]
	ldr	x9, [x19, 16]
	strb	w12, [x9, 3]
	ldr	x9, [x19, 16]
	strb	w11, [x9, 4]
	ldr	x9, [x19, 16]
	strb	w10, [x9, 5]
	b	L(27)
L(142:)
	ldr	x14, [x19, 16]
	asr	x13, x0, 8
	asr	x12, x0, 16
	asr	x11, x0, 24
	asr	x10, x0, 32
	strb	w0, [x14]
	ldr	x9, [x19, 16]
	strb	w13, [x9, 1]
	ldr	x9, [x19, 16]
	strb	w12, [x9, 2]
	ldr	x9, [x19, 16]
	strb	w11, [x9, 3]
	ldr	x9, [x19, 16]
	strb	w10, [x9, 4]
	b	L(27)
L(141:)
	ldr	x13, [x19, 16]
	asr	x12, x0, 8
	asr	x11, x0, 16
	asr	x10, x0, 24
	strb	w0, [x13]
	ldr	x9, [x19, 16]
	strb	w12, [x9, 1]
	ldr	x9, [x19, 16]
	strb	w11, [x9, 2]
	ldr	x9, [x19, 16]
	strb	w10, [x9, 3]
	b	L(27)
L(140:)
	ldr	x12, [x19, 16]
	asr	x11, x0, 8
	asr	x10, x0, 16
	strb	w0, [x12]
	ldr	x9, [x19, 16]
	strb	w11, [x9, 1]
	ldr	x9, [x19, 16]
	strb	w10, [x9, 2]
	b	L(27)
L(139:)
	ldr	x11, [x19, 16]
	asr	x10, x0, 8
	strb	w0, [x11]
	ldr	x9, [x19, 16]
	strb	w10, [x9, 1]
	b	L(27)
	FUNEND(__builtin_avcall)
#if defined __linux__ || defined __FreeBSD__ || defined __FreeBSD_kernel__ || defined __DragonFly__
	.section .note.GNU-stack,"",%progbits
#endif
