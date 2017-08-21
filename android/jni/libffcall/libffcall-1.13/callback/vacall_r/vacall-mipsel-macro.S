#include "asm-mips.h"
	.file	1 "vacall-mips.c"
	.text
	.align	2
	.ent	__vacall_r
	DECLARE_FUNCTION(__vacall_r)
__vacall_r:
	.frame	$fp,96,$31		
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	reorder
	addiu	$sp,$sp,-96
	sw	$fp,88($sp)
	move	$fp,$sp
	sw	$31,92($sp)
	.cprestore	16
	sw	$0,32($fp)
	sw	$5,100($fp)
	addiu	$5,$fp,112
	sw	$4,96($fp)
	sw	$5,56($fp)
	lw	$4,4($2)
	addiu	$5,$fp,96
	lw	$25,0($2)
	sw	$5,28($fp)
	sw	$6,104($fp)
	addiu	$5,$fp,24
	sw	$7,108($fp)
	swc1	$f12,72($fp)
	swc1	$f13,76($fp)
	swc1	$f14,80($fp)
	swc1	$f15,84($fp)
	swc1	$f12,64($fp)
	swc1	$f14,68($fp)
	sw	$0,24($fp)
	sw	$0,36($fp)
	sw	$0,60($fp)
	jal	$25
	lw	$5,36($fp)
	.set	noreorder
	.set	nomacro
	beq	$5,$0,$L39
	li	$4,1			
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$5,$4,$L40
	li	$4,2			
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$5,$4,$L40
	li	$4,3			
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$5,$4,$L46
	li	$4,4			
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$5,$4,$L47
	li	$4,5			
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$5,$4,$L48
	li	$4,6			
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$5,$4,$L44
	li	$4,7			
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$5,$4,$L44
	li	$4,8			
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$5,$4,$L44
	li	$4,9			
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$5,$4,$L44
	addiu	$4,$5,-10
	.set	macro
	.set	reorder

	sltu	$4,$4,2
	.set	noreorder
	.set	nomacro
	bne	$4,$0,$L49
	li	$4,12			
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$5,$4,$L50
	li	$4,13			
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$5,$4,$L51
	li	$4,14			
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$5,$4,$L44
	li	$4,15			
	.set	macro
	.set	reorder

	bne	$5,$4,$L39
	lw	$5,24($fp)
	andi	$4,$5,0x1
	.set	noreorder
	.set	nomacro
	beq	$4,$0,$L31
	andi	$4,$5,0x2
	.set	macro
	.set	reorder

	lw	$2,32($fp)
$L39:
	move	$sp,$fp
$L54:
	lw	$31,92($sp)
	lw	$fp,88($sp)
	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,96
	.set	macro
	.set	reorder

$L40:
	move	$sp,$fp
	lb	$2,48($fp)
	lw	$31,92($sp)
	lw	$fp,88($sp)
	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,96
	.set	macro
	.set	reorder

$L47:
	lh	$2,48($fp)
	.set	noreorder
	.set	nomacro
	b	$L54
	move	$sp,$fp
	.set	macro
	.set	reorder

$L44:
	lw	$2,48($fp)
	.set	noreorder
	.set	nomacro
	b	$L54
	move	$sp,$fp
	.set	macro
	.set	reorder

$L46:
	lbu	$2,48($fp)
	.set	noreorder
	.set	nomacro
	b	$L54
	move	$sp,$fp
	.set	macro
	.set	reorder

$L48:
	lhu	$2,48($fp)
	.set	noreorder
	.set	nomacro
	b	$L54
	move	$sp,$fp
	.set	macro
	.set	reorder

$L50:
	lwc1	$f0,48($fp)
	.set	noreorder
	.set	nomacro
	b	$L54
	move	$sp,$fp
	.set	macro
	.set	reorder

$L49:
	lw	$2,48($fp)
	lw	$3,52($fp)
	.set	noreorder
	.set	nomacro
	b	$L54
	move	$sp,$fp
	.set	macro
	.set	reorder

$L51:
	lwc1	$f0,48($fp)
	lwc1	$f1,52($fp)
	.set	noreorder
	.set	nomacro
	b	$L54
	move	$sp,$fp
	.set	macro
	.set	reorder

$L31:
	.set	noreorder
	.set	nomacro
	beq	$4,$0,$L39
	li	$4,1			
	.set	macro
	.set	reorder

	lw	$5,40($fp)
	.set	noreorder
	.set	nomacro
	beq	$5,$4,$L52
	li	$4,2			
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$5,$4,$L53
	li	$4,4			
	.set	macro
	.set	reorder

	bne	$5,$4,$L39
	lw	$4,32($fp)
	lw	$2,0($4)
	.set	noreorder
	.set	nomacro
	b	$L54
	move	$sp,$fp
	.set	macro
	.set	reorder

$L52:
	lw	$4,32($fp)
	lbu	$2,0($4)
	.set	noreorder
	.set	nomacro
	b	$L54
	move	$sp,$fp
	.set	macro
	.set	reorder

$L53:
	lw	$4,32($fp)
	lhu	$2,0($4)
	.set	noreorder
	.set	nomacro
	b	$L54
	move	$sp,$fp
	.set	macro
	.set	reorder

	.end	__vacall_r
	.align	2
	.globl	get__vacall_r
	.ent	get__vacall_r
	DECLARE_FUNCTION(get__vacall_r)
get__vacall_r:
	.frame	$fp,8,$31		
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	reorder
	addiu	$sp,$sp,-8
	sw	$fp,0($sp)
	move	$fp,$sp
	move	$sp,$fp
	lw	$fp,0($sp)
	la	$2,__vacall_r
	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,8
	.set	macro
	.set	reorder

	.end	get__vacall_r
