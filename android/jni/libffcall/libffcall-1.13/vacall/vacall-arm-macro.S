#include "asm-arm.h"
	.text
	.align	2
	.global C(__vacall)
	DECLARE_FUNCTION(__vacall)
FUNBEGIN(__vacall)
	// args = 20, pretend = 16, frame = 32
	// frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	sub	sp, sp, $16
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, $20
	add	lr, fp, $4
	mov	ip, $0
	sub	sp, sp, $32
	stmia	lr, {r0, r1, r2, r3}
	bic	sp, sp, $7
	str	lr, [fp, $-40]
	str	ip, [fp, $-32]
	str	ip, [fp, $-44]
	str	ip, [fp, $-36]
	sub	r0, fp, $44
	ldr	r3, L(42)
	mov	lr, pc
	ldr	pc, [r3, $0]
	ldr	r2, [fp, $-32]
	cmp	r2, $0
	beq	L(1)
	cmp	r2, $1
	beq	L(40)
	cmp	r2, $2
	ldreqsb	r0, [fp, $-20]
	beq	L(1)
	cmp	r2, $3
	beq	L(40)
	cmp	r2, $4
	ldreqsh	r0, [fp, $-20]
	beq	L(1)
	cmp	r2, $5
	ldreqh	r0, [fp, $-20]
	beq	L(1)
	cmp	r2, $6
	beq	L(39)
	cmp	r2, $7
	beq	L(39)
	cmp	r2, $8
	beq	L(39)
	cmp	r2, $9
	beq	L(39)
	sub	r3, r2, $10
	cmp	r3, $1
	bls	L(38)
	cmp	r2, $12
	ldreq	r0, [fp, $-20]	// float
	beq	L(1)
	cmp	r2, $13
	beq	L(38)
	cmp	r2, $14
	beq	L(39)
	cmp	r2, $15
	beq	L(41)
L(1:)
	ldmea	fp, {fp, sp, pc}
L(41:)
	ldr	r3, [fp, $-44]
	tst	r3, $1
	ldrne	r0, [fp, $-36]
	bne	L(1)
	tst	r3, $1024
	beq	L(1)
	ldr	r3, [fp, $-28]
	cmp	r3, $1
	ldreq	r3, [fp, $-36]
	ldreqb	r0, [r3, $0]	// zero_extendqisi2
	beq	L(1)
	cmp	r3, $2
	ldreq	r3, [fp, $-36]
	ldrne	r3, [fp, $-36]
	ldreqh	r0, [r3, $0]
	ldrne	r0, [r3, $0]
	b	L(1)
L(39:)
	ldr	r0, [fp, $-20]
	b	L(1)
L(38:)
	sub	r0, fp, $20
	ldmia	r0, {r0, r1}	// phole ldm
	b	L(1)
L(40:)
	ldrb	r0, [fp, $-20]	// zero_extendqisi2
	b	L(1)
L(43:)
	.align	2
L(42:)
	.word	C(vacall_function)
L(fe1:)
	FUNEND(__vacall)
#if defined __linux__ || defined __FreeBSD__ || defined __FreeBSD_kernel__ || defined __DragonFly__
	.section .note.GNU-stack,"",%progbits
#endif
