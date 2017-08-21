	.set noreorder
	.set volatile
	.set noat
	.set nomacro
	.text
	.align 2
	.align 4
	.ent __vacall_r
__vacall_r:
	.frame $15,176,$26,0
	.mask 0x4008000,-176
	ldah $29,0($27)		!gpdisp!1
	lda $29,0($29)		!gpdisp!1
$__vacall_r..ng:
	lda $30,-176($30)
	ldq $27,0($1)
	stq $15,8($30)
	mov $30,$15
	lda $2,128($15)
	stq $26,0($30)
	.prologue 1
	stq $31,32($15)
	stq $16,128($15)
	ldq $16,8($1)
	stq $17,136($15)
	lda $17,16($15)
	stq $2,24($15)
	lda $2,176($15)
	stq $18,144($15)
	stq $19,152($15)
	stq $20,160($15)
	stq $21,168($15)
	stt $f16,80($15)
	stt $f17,88($15)
	stt $f18,96($15)
	stt $f19,104($15)
	stt $f20,112($15)
	stt $f21,120($15)
	stl $31,16($15)
	stl $31,40($15)
	stq $2,72($15)
	jsr $26,($27),0
	ldah $29,0($26)		!gpdisp!2
	lda $29,0($29)		!gpdisp!2
	ldl $2,40($15)
	beq $2,$L45
	zapnot $2,15,$3
	cmpeq $3,1,$2
	bne $2,$L46
	cmpeq $3,2,$2
	bne $2,$L46
	cmpeq $3,3,$2
	bne $2,$L52
	cmpeq $3,4,$2
	bne $2,$L53
	cmpeq $3,5,$2
	bne $2,$L54
	cmpeq $3,6,$2
	bne $2,$L55
	cmpeq $3,7,$2
	bne $2,$L56
	cmpeq $3,8,$2
	bne $2,$L50
	cmpeq $3,9,$2
	bne $2,$L50
	cmpeq $3,10,$2
	bne $2,$L50
	cmpeq $3,11,$2
	bne $2,$L50
	cmpeq $3,12,$2
	bne $2,$L57
	cmpeq $3,13,$2
	bne $2,$L58
	cmpeq $3,14,$2
	bne $2,$L50
	cmpeq $3,15,$2
	beq $2,$L45
	ldl $2,16($15)
	blbc $2,$L33
	ldq $0,32($15)
	.align 4
$L45:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,176($30)
	ret $31,($26),1
	.align 4
$L46:
	mov $15,$30
	ldl $2,56($15)
	ldq $26,0($30)
	sll $2,56,$2
	sra $2,56,$0
	ldq $15,8($30)
	lda $30,176($30)
	ret $31,($26),1
$L53:
	ldl $2,56($15)
	sll $2,48,$2
	sra $2,48,$0
	br $31,$L45
$L52:
	ldl $2,56($15)
	bis $31,$31,$31
	and $2,0xff,$0
	br $31,$L45
$L50:
	ldq $0,56($15)
	br $31,$L45
$L54:
	ldl $2,56($15)
	bis $31,$31,$31
	zapnot $2,3,$0
	br $31,$L45
$L55:
	ldl $3,56($15)
	bis $31,$31,$31
	mov $3,$0
	br $31,$L45
$L56:
	ldl $2,56($15)
	bis $31,$31,$31
	zapnot $2,15,$0
	br $31,$L45
$L57:
	lds $f0,56($15)
	br $31,$L45
$L58:
	ldt $f0,56($15)
	br $31,$L45
$L33:
	srl $2,10,$2
	blbc $2,$L45
	ldq $3,48($15)
	cmpeq $3,1,$2
	bne $2,$L59
	cmpeq $3,2,$2
	bne $2,$L60
	cmpeq $3,4,$2
	bne $2,$L61
	cmpeq $3,8,$2
	bne $2,$L62
	cmpeq $3,16,$2
	beq $2,$L45
	ldq $2,32($15)
	ldq $1,8($2)
	bis $31,$31,$31
	ldq $0,0($2)
	br $31,$L45
$L59:
	ldq $3,32($15)
	ldq_u $2,0($3)
	extbl $2,$3,$0
	br $31,$L45
$L60:
	ldq $3,32($15)
	ldq_u $2,0($3)
	extwl $2,$3,$0
	br $31,$L45
$L62:
	ldq $2,32($15)
	bis $31,$31,$31
	ldq $0,0($2)
	br $31,$L45
$L61:
	ldq $2,32($15)
	ldl $3,0($2)
	zapnot $3,15,$0
	br $31,$L45
	.end __vacall_r
	.align 2
	.align 4
	.globl get__vacall_r
	.ent get__vacall_r
get__vacall_r:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
	ldah $29,0($27)		!gpdisp!3
	lda $29,0($29)		!gpdisp!3
$get__vacall_r..ng:
	lda $30,-16($30)
	ldah $2,__vacall_r($29)		!gprelhigh
	stq $15,8($30)
	mov $30,$15
	stq $26,0($30)
	.prologue 1
	mov $15,$30
	lda $0,__vacall_r($2)		!gprellow
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	ret $31,($26),1
	.end get__vacall_r
	.ident	"GCC: (GNU) 4.0.2"
	.section	.note.GNU-stack,"",@progbits
