	.file	"vacall-sparc.c"
	.section	".text"
	.align 4
	.global __vacall
	.type	__vacall,#function
	.proc	020
__vacall:
	!#PROLOGUE# 0
	save	%sp, -144, %sp
	!#PROLOGUE# 1
	sethi	%hi(vacall_function), %o0
	ld	[%o0+%lo(vacall_function)], %o2
	st	%i2, [%fp+76]
	add	%fp, 68, %o0
	ld	[%fp+64], %o1
	st	%o0, [%fp-44]
	st	%o1, [%fp-16]
	st	%i3, [%fp+80]
	st	%i4, [%fp+84]
	st	%i5, [%fp+88]
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%g0, [%fp-48]
	st	%g0, [%fp-40]
	st	%g0, [%fp-36]
	call	%o2, 0
	add	%fp, -48, %o0
	ld	[%fp-36], %o1
	cmp	%o1, 0
	be	.LL1
	cmp	%o1, 1
	be	.LL46
	cmp	%o1, 2
	be	.LL46
	cmp	%o1, 3
	be	.LL47
	cmp	%o1, 4
	be	.LL48
	cmp	%o1, 5
	be	.LL49
	cmp	%o1, 6
	be	.LL45
	cmp	%o1, 7
	be	.LL45
	cmp	%o1, 8
	be	.LL45
	cmp	%o1, 9
	be	.LL45
	add	%o1, -10, %o0
	cmp	%o0, 1
	bgu	.LL22
	cmp	%o1, 12
	ld	[%fp-24], %i0
	b	.LL1
	ld	[%fp-20], %i1
.LL22:
	be	.LL50
	cmp	%o1, 13
	be	.LL51
	cmp	%o1, 14
	be	.LL45
	cmp	%o1, 15
	bne	.LL1
	ld	[%fp-48], %o0
	andcc	%o0, 16, %g0
	be	.LL33
	andcc	%o0, 1, %g0
	ld	[%fp-32], %o0
	ld	[%i7+8], %o1
	and	%o0, 4095, %o0
	cmp	%o0, %o1
	bne	.LL1
	ld	[%fp-40], %i0
	b	.LL1
	add	%i7, 4, %i7
.LL33:
	be	.LL36
	andcc	%o0, 2, %g0
	b	.LL1
	ld	[%fp-40], %i0
.LL36:
	be,a	.LL1
	add	%i7, 4, %i7
	ld	[%fp-32], %o0
	cmp	%o0, 1
	be	.LL52
	cmp	%o0, 2
	be	.LL53
	cmp	%o0, 4
	bne,a	.LL1
	add	%i7, 4, %i7
	ld	[%fp-40], %o0
	b	.LL1
	ld	[%o0], %i0
.LL53:
	ld	[%fp-40], %o0
	b	.LL1
	lduh	[%o0], %i0
.LL52:
	ld	[%fp-40], %o0
	b	.LL1
	ldub	[%o0], %i0
.LL45:
	b	.LL1
	ld	[%fp-24], %i0
.LL51:
	b	.LL1
	ldd	[%fp-24], %f0
.LL50:
	ld	[%fp-48], %o0
	andcc	%o0, 32, %g0
	be,a	.LL1
	ld	[%fp-24], %f0
	ld	[%fp-24], %f2
	b	.LL1
	fstod	%f2, %f0
.LL49:
	b	.LL1
	lduh	[%fp-24], %i0
.LL48:
	b	.LL1
	ldsh	[%fp-24], %i0
.LL47:
	b	.LL1
	ldub	[%fp-24], %i0
.LL46:
	ldsb	[%fp-24], %i0
.LL40:
.LL1:
	nop
	ret
	restore
.LLfe1:
	.size	__vacall,.LLfe1-__vacall
	.ident	"GCC: (GNU) 3.1"
