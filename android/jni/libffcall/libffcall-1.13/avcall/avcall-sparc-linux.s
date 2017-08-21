	.file	"avcall-sparc.c"
	.section	".text"
	.align 4
	.global __builtin_avcall
	.type	__builtin_avcall,#function
	.proc	04
__builtin_avcall:
	!#PROLOGUE# 0
	save	%sp, -1152, %sp
	ld	[%i0+20], %g3
	add	%sp, 68, %l1
	ld	[%i0+12], %o7
	sub	%g3, %i0, %g3
	add	%g3, -40, %g3
	mov	%o7, %l2
	cmp	%o7, 16
	be	.LL68
	sra	%g3, 2, %g4
.LL2:
	mov	6, %g1
	cmp	%g1, %g4
	bge	.LL77
	cmp	%l2, 16
.LL7:
	sll	%g1, 2, %g3
	add	%g3, %i0, %o7
	ld	[%o7+40], %l0
	add	%g1, 1, %g1
	cmp	%g1, %g4
	bl	.LL7
	st	%l0, [%l1+%g3]
	cmp	%l2, 16
.LL77:
	be,a	.LL69
	ld	[%i0+4], %g3
	ld	[%i0], %g3
.LL79:
	ldd	[%i0+40], %o0
	ldd	[%i0+48], %o2
	call	%g3, 0
	ldd	[%i0+56], %o4
	nop
	ld	[%i0+12], %o7
	cmp	%o7, 1
	be	.LL10
	mov	%o0, %l0
	cmp	%o7, 0
	be,a	.LL78
	ld	[%i0+8], %g3
	cmp	%o7, 2
	be	.LL67
	cmp	%o7, 3
	be	.LL67
	cmp	%o7, 4
	be	.LL67
	cmp	%o7, 5
	be	.LL66
	cmp	%o7, 6
	be	.LL66
	cmp	%o7, 7
	be	.LL65
	cmp	%o7, 8
	be	.LL65
	cmp	%o7, 9
	be	.LL65
	cmp	%o7, 10
	be	.LL65
	add	%o7, -11, %g3
	cmp	%g3, 1
	bgu	.LL31
	cmp	%o7, 13
	ld	[%i0+8], %g3
	st	%o0, [%g3]
	b	.LL10
	st	%o1, [%g3+4]
.LL31:
	be	.LL70
	cmp	%o7, 14
	be	.LL71
	cmp	%o7, 15
	be	.LL65
	cmp	%o7, 16
	bne	.LL10
	nop
	ld	[%i0+4], %g3
	andcc	%g3, 1, %g0
	be	.LL42
	andcc	%g3, 2, %g0
	ld	[%i0+16], %g3
	cmp	%g3, 1
	be	.LL72
	cmp	%g3, 2
	be	.LL73
	cmp	%g3, 4
	be	.LL74
	cmp	%g3, 8
	be	.LL75
	add	%g3, 3, %g3
	srl	%g3, 2, %l1
	addcc	%l1, -1, %l1
	bneg	.LL10
	nop
	ld	[%i0+8], %i0
.LL54:
	sll	%l1, 2, %g3
	ld	[%l0+%g3], %o7
	addcc	%l1, -1, %l1
	bpos	.LL54
	st	%o7, [%i0+%g3]
	b,a	.LL10
.LL75:
	ld	[%i0+8], %g3
	ld	[%o0], %o7
	st	%o7, [%g3]
	ld	[%o0+4], %l0
	b	.LL10
	st	%l0, [%g3+4]
.LL74:
	ld	[%i0+8], %o7
	ld	[%o0], %g3
	b	.LL10
	st	%g3, [%o7]
.LL73:
	ld	[%i0+8], %o7
	lduh	[%o0], %g3
	b	.LL10
	sth	%g3, [%o7]
.LL72:
	ld	[%i0+8], %o7
	ldub	[%o0], %g3
	b	.LL10
	stb	%g3, [%o7]
.LL42:
	be	.LL10
	nop
	ld	[%i0+16], %g3
	cmp	%g3, 1
	be	.LL67
	cmp	%g3, 2
	be	.LL66
	cmp	%g3, 4
	bne	.LL10
	nop
.LL65:
	ld	[%i0+8], %g3
.LL78:
	b	.LL10
	st	%l0, [%g3]
.LL66:
	ld	[%i0+8], %g3
	b	.LL10
	sth	%l0, [%g3]
.LL67:
	ld	[%i0+8], %g3
	b	.LL10
	stb	%l0, [%g3]
.LL71:
	ld	[%i0+8], %g3
	b	.LL10
	std	%f0, [%g3]
.LL70:
	ld	[%i0+4], %g3
	andcc	%g3, 32, %g0
	bne,a	.LL34
	fdtos	%f0, %f0
.LL34:
	ld	[%i0+8], %g3
	b	.LL10
	st	%f0, [%g3]
.LL69:
	andcc	%g3, 16, %g0
	be,a	.LL79
	ld	[%i0], %g3
	b	.LL76
	ld	[%i0+16], %l0
.LL68:
	ld	[%i0+8], %g3
	b	.LL2
	st	%g3, [%sp+64]
.LL76:
	sethi	%hi(-1614774272), %g3
	sethi	%hi(16777216), %o7
	st	%g3, [%fp-32]
	st	%o7, [%fp-28]
	sethi	%hi(-1341120512), %o7
	sethi	%hi(-2117607424), %g3
	st	%o7, [%fp-20]
	or	%g3, 8, %g3
	and	%l0, 4095, %l0
	st	%g3, [%fp-16]
	sethi	%hi(-2115502080), %o7
	st	%l0, [%fp-24]
	st	%o7, [%fp-12]
	add	%fp, -32, %g3
	iflush %g3
	add	%fp, -24, %o7
	iflush %o7
	add	%fp, -16, %g3
	iflush %g3
	add	%fp, -12, %o7
	iflush %o7
	ld	[%i0], %g2
	ldd	[%i0+40], %o0
	ldd	[%i0+48], %o2
	jmp	%fp-32
	ldd	[%i0+56], %o4
.LL10:
	ret
	restore %g0, 0, %o0
.LLfe1:
	.size	__builtin_avcall,.LLfe1-__builtin_avcall
	.ident	"GCC: (GNU) 3.1"
