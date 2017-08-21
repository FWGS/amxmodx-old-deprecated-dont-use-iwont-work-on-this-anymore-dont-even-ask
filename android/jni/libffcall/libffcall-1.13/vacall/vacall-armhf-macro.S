#include "asm-arm.h"
	.arch armv7-a
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.text
	.align	2
	.global C(__vacall)
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	__vacall, %function
FUNBEGIN(__vacall)
	// args = 20, pretend = 16, frame = 168
	// frame_needed = 1, uses_anonymous_args = 0
	sub	sp, sp, $16
	push	{r4, r5, fp, lr}
	add	fp, sp, $12
	add	ip, fp, $4
	movw	r4, $:lower16:C(vacall_function)
	movt	r4, $:upper16:C(vacall_function)
	mov	lr, $0
	sub	sp, sp, $168
	add	r5, fp, $20
	stm	ip, {r0, r1, r2, r3}
	sub	r0, fp, $180
	vstr.32	s0, [fp, $-140]
	str	ip, [fp, $-176]
	str	lr, [fp, $-180]
	vstr.32	s1, [fp, $-136]
	str	lr, [fp, $-144]
	str	r5, [fp, $-148]
	vstr.32	s2, [fp, $-132]
	vstr.32	s3, [fp, $-128]
	vstr.32	s4, [fp, $-124]
	vstr.32	s5, [fp, $-120]
	vstr.32	s6, [fp, $-116]
	vstr.32	s7, [fp, $-112]
	vstr.32	s8, [fp, $-108]
	vstr.32	s9, [fp, $-104]
	vstr.32	s10, [fp, $-100]
	vstr.32	s11, [fp, $-96]
	vstr.32	s12, [fp, $-92]
	vstr.32	s13, [fp, $-88]
	vstr.32	s14, [fp, $-84]
	vstr.32	s15, [fp, $-80]
	vstr.64	d0, [fp, $-76]
	vstr.64	d1, [fp, $-68]
	vstr.64	d2, [fp, $-60]
	vstr.64	d3, [fp, $-52]
	vstr.64	d4, [fp, $-44]
	vstr.64	d5, [fp, $-36]
	vstr.64	d6, [fp, $-28]
	ldr	r3, [r4]
	str	lr, [fp, $-172]
	vstr.64	d7, [fp, $-20]
	strb	lr, [fp, $-168]
	blx	r3
	ldrb	r3, [fp, $-168]	// zero_extendqisi2
	cmp	r3, $0
	beq	L(1)
	cmp	r3, $1
	beq	L(26)
	cmp	r3, $2
	ldrsbeq	r0, [fp, $-156]
	beq	L(1)
	cmp	r3, $3
	beq	L(26)
	cmp	r3, $4
	ldrsheq	r0, [fp, $-156]
	beq	L(1)
	cmp	r3, $5
	ldrheq	r0, [fp, $-156]
	beq	L(1)
	cmp	r3, $6
	beq	L(30)
	cmp	r3, $7
	beq	L(30)
	cmp	r3, $8
	beq	L(30)
	cmp	r3, $9
	beq	L(30)
	sub	r2, r3, $10
	cmp	r2, $1
	bls	L(32)
	cmp	r3, $12
	vldreq.32	s0, [fp, $-156]
	beq	L(1)
	cmp	r3, $13
	vldreq.64	d0, [fp, $-156]
	beq	L(1)
	cmp	r3, $14
	beq	L(30)
	cmp	r3, $15
	bne	L(1)
	ldr	r3, [fp, $-180]
	tst	r3, $1
	ldrne	r0, [fp, $-172]
	bne	L(1)
	tst	r3, $1024
	beq	L(1)
	ldr	r3, [fp, $-164]
	cmp	r3, $1
	beq	L(33)
	cmp	r3, $2
	ldr	r3, [fp, $-172]
	ldrheq	r0, [r3]
	ldrne	r0, [r3]
L(1:)
	sub	sp, fp, $12
	// sp needed
	pop	{r4, r5, fp, lr}
	add	sp, sp, $16
	bx	lr
L(26:)
	ldrb	r0, [fp, $-156]	// zero_extendqisi2
	sub	sp, fp, $12
	// sp needed
	pop	{r4, r5, fp, lr}
	add	sp, sp, $16
	bx	lr
L(30:)
	ldr	r0, [fp, $-156]
	sub	sp, fp, $12
	// sp needed
	pop	{r4, r5, fp, lr}
	add	sp, sp, $16
	bx	lr
L(32:)
	ldr	r0, [fp, $-156]
	ldr	r1, [fp, $-152]
	b	L(1)
L(33:)
	ldr	r3, [fp, $-172]
	ldrb	r0, [r3]	// zero_extendqisi2
	b	L(1)
	FUNEND(__vacall)
#if defined __linux__ || defined __FreeBSD__ || defined __FreeBSD_kernel__ || defined __DragonFly__
	.section .note.GNU-stack,"",%progbits
#endif
