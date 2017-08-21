#include "asm-arm.h"
	.text
	.align	2
	.global C(__builtin_avcall)
	DECLARE_FUNCTION(__builtin_avcall)
FUNBEGIN(__builtin_avcall)
	// args = 0, pretend = 0, frame = 1024
	// frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, fp, ip, lr, pc}
	sub	fp, ip, $4
	sub	sp, sp, $1024
	ldr	r3, [r0, $20]
	rsb	r3, r0, r3
	sub	r3, r3, $32
	mov	ip, r3, asr $2
	mov	r5, $4
	bic	sp, sp, $7
	cmp	r5, ip
	mov	r4, r0
	mov	r0, sp
	bge	L(61)
L(6:)
	mov	r3, r5, asl $2
	add	r2, r3, r4
	ldr	r1, [r2, $32]
	add	r5, r5, $1
	add	r3, r0, r3
	cmp	r5, ip
	str	r1, [r3, $-16]
	blt	L(6)
L(61:)
	add	r0, r4, $32
	ldmia	r0, {r0, r1, r2, r3}	// phole ldm
	mov	lr, pc
	ldr	pc, [r4, $0]
	ldr	r2, [r4, $12]
	cmp	r2, $1
	mov	r5, r0
	beq	L(8)
	cmp	r2, $0
	beq	L(72)
	cmp	r2, $2
	beq	L(65)
	cmp	r2, $3
	beq	L(65)
	cmp	r2, $4
	beq	L(65)
	cmp	r2, $5
	beq	L(73)
	cmp	r2, $6
	beq	L(73)
	cmp	r2, $7
	beq	L(72)
	cmp	r2, $8
	beq	L(72)
	cmp	r2, $9
	beq	L(72)
	cmp	r2, $10
	beq	L(72)
	sub	r3, r2, $11
	cmp	r3, $1
	bls	L(71)
	cmp	r2, $13
	ldreq	r3, [r4, $8]
	streq	r0, [r3, $0]	// float
	beq	L(8)
	cmp	r2, $14
	ldreq	r3, [r4, $8]
	stmeqia	r3, {r0-r1}	// double
	beq	L(8)
	cmp	r2, $15
	beq	L(72)
	cmp	r2, $16
	beq	L(74)
L(8:)
	mov	r0, $0
	ldmea	fp, {r4, r5, fp, sp, pc}
L(74:)
	ldr	r3, [r4, $4]
	tst	r3, $1
	beq	L(38)
	ldr	r3, [r4, $16]
	cmp	r3, $1
	ldreq	r2, [r4, $8]
	ldreqb	r3, [r0, $0]
	streqb	r3, [r2, $0]
	beq	L(8)
	cmp	r3, $2
	ldreq	r3, [r4, $8]
	ldreqh	r5, [r0, $0]	// movhi
	beq	L(64)
	cmp	r3, $4
	ldrls	r2, [r4, $8]
	ldrls	r3, [r0, $0]
	strls	r3, [r2, $0]
	bls	L(8)
	cmp	r3, $8
	beq	L(75)
	add	r3, r3, $3
	mov	r2, r3, lsr $2
	subs	r2, r2, $1
	bmi	L(8)
	ldr	r0, [r4, $8]
L(50:)
	ldr	r3, [r5, r2, asl $2]
	str	r3, [r0, r2, asl $2]
	subs	r2, r2, $1
	bpl	L(50)
	b	L(8)
L(75:)
	ldr	r3, [r4, $8]
	ldr	r2, [r0, $0]
	str	r2, [r3, $0]
	ldr	r1, [r0, $4]
	str	r1, [r3, $4]
	b	L(8)
L(64:)
	strh	r5, [r3, $0]	// movhi 
	b	L(8)
L(38:)
	tst	r3, $512
	beq	L(8)
	ldr	r3, [r4, $16]
	cmp	r3, $1
	beq	L(65)
	cmp	r3, $2
	beq	L(73)
	cmp	r3, $4
	bhi	L(57)
L(72:)
	ldr	r3, [r4, $8]
L(63:)
	str	r5, [r3, $0]
	b	L(8)
L(57:)
	cmp	r3, $8
	bne	L(8)
L(71:)
	ldr	r3, [r4, $8]
	str	r1, [r3, $4]
	b	L(63)
L(73:)
	ldr	r3, [r4, $8]
	b	L(64)
L(65:)
	ldr	r3, [r4, $8]
	strb	r5, [r3, $0]
	b	L(8)
L(fe1:)
	FUNEND(__builtin_avcall)
#if defined __linux__ || defined __FreeBSD__ || defined __FreeBSD_kernel__ || defined __DragonFly__
	.section .note.GNU-stack,"",%progbits
#endif
