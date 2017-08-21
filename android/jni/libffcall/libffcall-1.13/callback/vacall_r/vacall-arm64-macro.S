#include "asm-arm.h"
	.cpu generic+fp+simd
	.text
	.align	2
	.p2align 3,,7
	.type	__vacall_r, %function
FUNBEGIN(__vacall_r)
	stp	x29, x30, [sp, -256]!
	add	x29, sp, 0
	ldr	x10, [x18]
	add	x11, x29, 256
	stp	s0, s1, [x29, 156]
	stp	s2, s3, [x29, 164]
	stp	x0, x1, [x29, 88]
	stp	s4, s5, [x29, 172]
	stp	x11, xzr, [x29, 24]
	stp	s6, s7, [x29, 180]
	str	x8, [x29, 72]
	stp	d0, d1, [x29, 192]
	stp	x2, x3, [x29, 104]
	stp	d2, d3, [x29, 208]
	stp	x4, x5, [x29, 120]
	stp	d4, d5, [x29, 224]
	stp	x6, x7, [x29, 136]
	stp	d6, d7, [x29, 240]
	str	wzr, [x29, 16]
	add	x1, x29, 16
	str	wzr, [x29, 40]
	ldr	x0, [x18, 8]
	str	wzr, [x29, 80]
	str	wzr, [x29, 152]
	blr	x10
	ldr	w9, [x29, 40]
	cbz	w9, L(1)
	cmp	w9, 1
	beq	L(75)
	cmp	w9, 2
	beq	L(78)
	cmp	w9, 3
	beq	L(75)
	cmp	w9, 4
	beq	L(79)
	cmp	w9, 5
	beq	L(80)
	cmp	w9, 6
	beq	L(81)
	cmp	w9, 7
	beq	L(82)
	and	w10, w9, -3
	cmp	w10, 8
	beq	L(76)
	cmp	w10, 9
	beq	L(76)
	cmp	w9, 12
	beq	L(83)
	cmp	w9, 13
	beq	L(84)
	cmp	w9, 14
	beq	L(76)
	cmp	w9, 15
	bne	L(1)
	ldr	w9, [x29, 16]
	tbz	x9, 10, L(1)
	ldr	x9, [x29, 48]
	sub	x10, x9, $1
	cmp	x10, 15
	bhi	L(1)
	ldr	x10, [x29, 32]
	cmp	x9, 1
	ldrb	w12, [x10]
	mov	x0, x12
	beq	L(1)
	ldrb	w11, [x10, 1]
	cmp	x9, 2
	orr	x11, x12, x11, lsl 8
	mov	x0, x11
	beq	L(1)
	ldrb	w12, [x10, 2]
	cmp	x9, 3
	orr	x11, x11, x12, lsl 16
	mov	x0, x11
	beq	L(1)
	ldrb	w12, [x10, 3]
	cmp	x9, 4
	orr	x12, x11, x12, lsl 24
	mov	x0, x12
	beq	L(1)
	ldrb	w11, [x10, 4]
	cmp	x9, 5
	orr	x12, x12, x11, lsl 32
	mov	x0, x12
	beq	L(1)
	ldrb	w11, [x10, 5]
	cmp	x9, 6
	orr	x12, x12, x11, lsl 40
	mov	x0, x12
	beq	L(1)
	ldrb	w11, [x10, 6]
	cmp	x9, 7
	orr	x11, x12, x11, lsl 48
	mov	x0, x11
	beq	L(1)
	ldrb	w12, [x10, 7]
	cmp	x9, 8
	orr	x0, x11, x12, lsl 56
	beq	L(1)
	ldrb	w12, [x10, 8]
	cmp	x9, 9
	mov	x1, x12
	beq	L(1)
	ldrb	w11, [x10, 9]
	cmp	x9, 10
	orr	x12, x12, x11, lsl 8
	mov	x1, x12
	beq	L(1)
	ldrb	w11, [x10, 10]
	cmp	x9, 11
	orr	x12, x12, x11, lsl 16
	mov	x1, x12
	beq	L(1)
	ldrb	w11, [x10, 11]
	cmp	x9, 12
	orr	x12, x12, x11, lsl 24
	mov	x1, x12
	beq	L(1)
	ldrb	w11, [x10, 12]
	cmp	x9, 13
	orr	x12, x12, x11, lsl 32
	mov	x1, x12
	beq	L(1)
	ldrb	w11, [x10, 13]
	cmp	x9, 14
	orr	x12, x12, x11, lsl 40
	mov	x1, x12
	beq	L(1)
	ldrb	w11, [x10, 14]
	cmp	x9, 16
	orr	x9, x12, x11, lsl 48
	mov	x1, x9
	bne	L(1)
	ldrb	w10, [x10, 15]
	orr	x1, x9, x10, lsl 56
L(1:)
	ldp	x29, x30, [sp], 256
	ret
	.p2align 3
L(75:)
	ldrb	w0, [x29, 56]
	ldp	x29, x30, [sp], 256
	ret
	.p2align 3
L(76:)
	ldr	x0, [x29, 56]
	b	L(1)
	.p2align 3
L(78:)
	ldrsb	x0, [x29, 56]
	b	L(1)
	.p2align 3
L(79:)
	ldrsh	x0, [x29, 56]
	b	L(1)
	.p2align 3
L(80:)
	ldrh	w0, [x29, 56]
	b	L(1)
	.p2align 3
L(81:)
	ldrsw	x0, [x29, 56]
	b	L(1)
	.p2align 3
L(82:)
	ldr	w0, [x29, 56]
	b	L(1)
L(83:)
	ldr	s0, [x29, 56]
	b	L(1)
L(84:)
	ldr	d0, [x29, 56]
	b	L(1)
	FUNEND(__vacall_r)
	.align	2
	.p2align 3,,7
	.global C(get__vacall_r)
	.type	get__vacall_r, %function
FUNBEGIN(get__vacall_r)
	adrp	x9, __vacall_r
	add	x0, x9, :lo12:__vacall_r
	ret
	FUNEND(get__vacall_r)
#if defined __linux__ || defined __FreeBSD__ || defined __FreeBSD_kernel__ || defined __DragonFly__
	.section .note.GNU-stack,"",%progbits
#endif
