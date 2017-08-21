	.set noreorder
	.set volatile
	.set noat
	.set nomacro
	.text
	.align 2
	.align 4
	.globl __builtin_avcall
	.ent __builtin_avcall
__builtin_avcall:
	.frame $15,32,$26,0
	.mask 0x4008200,-32
	ldah $29,0($27)		!gpdisp!1
	lda $29,0($29)		!gpdisp!1
$__builtin_avcall..ng:
	lda $1,48($16)
	cpys $f31,$f31,$f31
	lda $30,-32($30)
	ldq $2,40($16)
	stq $9,8($30)
	mov $16,$9
	subq $2,$1,$2
	stq $15,16($30)
	srl $2,3,$2
	stq $26,0($30)
	mov $30,$15
	.prologue 1
	addl $31,$2,$6
	cmple $6,6,$1
	cpys $f31,$f31,$f31
	lda $30,-2064($30)
	bne $1,$L2
	mov $30,$4
	mov $16,$3
	lda $5,6($31)
	.align 4
$L4:
	lda $5,1($5)
	ldq $1,96($3)
	cmpeq $6,$5,$2
	lda $3,8($3)
	stq $1,0($4)
	lda $4,8($4)
	beq $2,$L4
$L2:
	.set	macro
	ldq $16,48($9)
	ldt $f16,48($9)
	ldq $17,56($9)
	ldt $f17,56($9)
	ldq $18,64($9)
	ldt $f18,64($9)
	ldq $19,72($9)
	ldt $f19,72($9)
	ldq $20,80($9)
	ldt $f20,80($9)
	ldq $21,88($9)
	ldt $f21,88($9)
	.set	nomacro
	ldq $27,0($9)
	jsr $26,($27),0
	ldah $29,0($26)		!gpdisp!2
	lda $29,0($29)		!gpdisp!2
	mov $1,$4
	ldl $2,24($9)
	zapnot $2,15,$3
	cmpeq $3,1,$1
	bne $1,$L5
	beq $2,$L69
	cmpeq $3,2,$1
	bne $1,$L66
	cmpeq $3,3,$1
	bne $1,$L66
	cmpeq $3,4,$1
	bne $1,$L66
	cmpeq $3,5,$1
	bne $1,$L67
	cmpeq $3,6,$1
	bne $1,$L67
	cmpeq $3,7,$1
	bne $1,$L68
	cmpeq $3,8,$1
	bne $1,$L68
	cmpeq $3,9,$1
	bne $1,$L69
	cmpeq $3,10,$1
	bne $1,$L69
	cmpeq $3,11,$1
	bne $1,$L69
	cmpeq $3,12,$1
	bne $1,$L69
	cmpeq $3,13,$1
	bne $1,$L71
	cmpeq $3,14,$1
	bne $1,$L72
	cmpeq $3,15,$1
	bne $1,$L69
	cmpeq $3,16,$1
	beq $1,$L5
	ldl $1,8($9)
	blbc $1,$L38
	ldq $2,32($9)
	cmpeq $2,1,$1
	bne $1,$L73
	cmpeq $2,2,$1
	bne $1,$L74
	cmpeq $2,4,$1
	bne $1,$L75
	cmpeq $2,8,$1
	bne $1,$L76
	lda $1,7($2)
	srl $1,3,$1
	subl $1,1,$1
	blt $1,$L5
	.align 3 #realign
	mov $1,$5
	ldq $16,16($9)
	lda $6,-1($31)
$L49:
	s8addq $5,0,$1
	addq $1,$0,$4
	subl $5,1,$5
	addq $16,$1,$1
	ldq $2,0($4)
	cmpeq $6,$5,$3
	stq $2,0($1)
	beq $3,$L49
$L5:
	mov $15,$30
	mov $31,$0
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $15,16($30)
	lda $30,32($30)
	ret $31,($26),1
$L69:
	mov $15,$30
	ldq $1,16($9)
	stq $0,0($1)
	mov $31,$0
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $15,16($30)
	lda $30,32($30)
	ret $31,($26),1
	bis $31,$31,$31
$L66:
	mov $15,$30
	ldq $1,16($9)
	insbl $0,$1,$3
	ldq_u $2,0($1)
	mov $31,$0
	mskbl $2,$1,$2
	bis $3,$2,$3
	stq_u $3,0($1)
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $15,16($30)
	lda $30,32($30)
	ret $31,($26),1
$L67:
	ldq $1,16($9)
	inswl $0,$1,$3
	ldq_u $2,0($1)
	mskwl $2,$1,$2
	bis $3,$2,$3
	stq_u $3,0($1)
	br $31,$L5
$L68:
	ldq $1,16($9)
	bis $31,$31,$31
	stl $0,0($1)
	br $31,$L5
$L71:
	cvtts $f0,$f0
	ldq $1,16($9)
	sts $f0,0($1)
	br $31,$L5
$L72:
	ldq $1,16($9)
	bis $31,$31,$31
	stt $f0,0($1)
	br $31,$L5
$L38:
	srl $1,9,$1
	blbc $1,$L5
	ldq $2,32($9)
	cmpeq $2,1,$1
	bne $1,$L66
	cmpeq $2,2,$1
	bne $1,$L67
	cmpeq $2,4,$1
	bne $1,$L68
	cmpeq $2,8,$1
	bne $1,$L69
	cmpeq $2,16,$1
	beq $1,$L5
	ldq $1,16($9)
	stq $4,8($1)
	cpys $f31,$f31,$f31
	stq $0,0($1)
	br $31,$L5
$L76:
	ldq $2,16($9)
	ldq $1,0($0)
	stq $1,0($2)
	br $31,$L5
$L73:
	ldq $3,16($9)
	ldq_u $4,0($0)
	ldq_u $2,0($3)
	extbl $4,$0,$1
	mskbl $2,$3,$2
	insbl $1,$3,$1
	bis $1,$2,$1
	cpys $f31,$f31,$f31
	stq_u $1,0($3)
	br $31,$L5
$L75:
	ldq $2,16($9)
	ldl $1,0($0)
	stl $1,0($2)
	br $31,$L5
$L74:
	ldq $3,16($9)
	ldq_u $4,0($0)
	ldq_u $2,0($3)
	extwl $4,$0,$1
	mskwl $2,$3,$2
	inswl $1,$3,$1
	bis $1,$2,$1
	cpys $f31,$f31,$f31
	stq_u $1,0($3)
	br $31,$L5
	.end __builtin_avcall
#if defined __linux__ || defined __FreeBSD__ || defined __FreeBSD_kernel__ || defined __DragonFly__
	.section .note.GNU-stack,"",@progbits
#endif
