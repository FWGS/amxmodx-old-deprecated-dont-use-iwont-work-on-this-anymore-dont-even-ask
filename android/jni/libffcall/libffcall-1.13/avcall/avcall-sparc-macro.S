#include "asm-sparc.h"
	.section	".text"
	.align 4
	.global C(__builtin_avcall)
	DECLARE_FUNCTION(__builtin_avcall)
	.proc	04
FUNBEGIN(__builtin_avcall)
	!$PROLOGUE$ 0
	save	%sp, -1152, %sp
	ld	[%i0+20], %g3
	add	%sp, 68, %l1
	ld	[%i0+12], %o7
	sub	%g3, %i0, %g3
	add	%g3, -40, %g3
	mov	%o7, %l2
	cmp	%o7, 16
	be	L(L68)
	sra	%g3, 2, %g4
L(L2:)
	mov	6, %g1
	cmp	%g1, %g4
	bge	L(L77)
	cmp	%l2, 16
L(L7:)
	sll	%g1, 2, %g3
	add	%g3, %i0, %o7
	ld	[%o7+40], %l0
	add	%g1, 1, %g1
	cmp	%g1, %g4
	bl	L(L7)
	st	%l0, [%l1+%g3]
	cmp	%l2, 16
L(L77:)
	be,a	L(L69)
	ld	[%i0+4], %g3
	ld	[%i0], %g3
L(L79:)
	ldd	[%i0+40], %o0
	ldd	[%i0+48], %o2
	call	%g3, 0
	ldd	[%i0+56], %o4
	nop
	ld	[%i0+12], %o7
	cmp	%o7, 1
	be	L(L10)
	mov	%o0, %l0
	cmp	%o7, 0
	be,a	L(L78)
	ld	[%i0+8], %g3
	cmp	%o7, 2
	be	L(L67)
	cmp	%o7, 3
	be	L(L67)
	cmp	%o7, 4
	be	L(L67)
	cmp	%o7, 5
	be	L(L66)
	cmp	%o7, 6
	be	L(L66)
	cmp	%o7, 7
	be	L(L65)
	cmp	%o7, 8
	be	L(L65)
	cmp	%o7, 9
	be	L(L65)
	cmp	%o7, 10
	be	L(L65)
	add	%o7, -11, %g3
	cmp	%g3, 1
	bgu	L(L31)
	cmp	%o7, 13
	ld	[%i0+8], %g3
	st	%o0, [%g3]
	b	L(L10)
	st	%o1, [%g3+4]
L(L31:)
	be	L(L70)
	cmp	%o7, 14
	be	L(L71)
	cmp	%o7, 15
	be	L(L65)
	cmp	%o7, 16
	bne	L(L10)
	nop
	ld	[%i0+4], %g3
	andcc	%g3, 1, %g0
	be	L(L42)
	andcc	%g3, 2, %g0
	ld	[%i0+16], %g3
	cmp	%g3, 1
	be	L(L72)
	cmp	%g3, 2
	be	L(L73)
	cmp	%g3, 4
	be	L(L74)
	cmp	%g3, 8
	be	L(L75)
	add	%g3, 3, %g3
	srl	%g3, 2, %l1
	addcc	%l1, -1, %l1
	bneg	L(L10)
	nop
	ld	[%i0+8], %i0
L(L54:)
	sll	%l1, 2, %g3
	ld	[%l0+%g3], %o7
	addcc	%l1, -1, %l1
	bpos	L(L54)
	st	%o7, [%i0+%g3]
	b,a	L(L10)
L(L75:)
	ld	[%i0+8], %g3
	ld	[%o0], %o7
	st	%o7, [%g3]
	ld	[%o0+4], %l0
	b	L(L10)
	st	%l0, [%g3+4]
L(L74:)
	ld	[%i0+8], %o7
	ld	[%o0], %g3
	b	L(L10)
	st	%g3, [%o7]
L(L73:)
	ld	[%i0+8], %o7
	lduh	[%o0], %g3
	b	L(L10)
	sth	%g3, [%o7]
L(L72:)
	ld	[%i0+8], %o7
	ldub	[%o0], %g3
	b	L(L10)
	stb	%g3, [%o7]
L(L42:)
	be	L(L10)
	nop
	ld	[%i0+16], %g3
	cmp	%g3, 1
	be	L(L67)
	cmp	%g3, 2
	be	L(L66)
	cmp	%g3, 4
	bne	L(L10)
	nop
L(L65:)
	ld	[%i0+8], %g3
L(L78:)
	b	L(L10)
	st	%l0, [%g3]
L(L66:)
	ld	[%i0+8], %g3
	b	L(L10)
	sth	%l0, [%g3]
L(L67:)
	ld	[%i0+8], %g3
	b	L(L10)
	stb	%l0, [%g3]
L(L71:)
	ld	[%i0+8], %g3
	b	L(L10)
	std	%f0, [%g3]
L(L70:)
	ld	[%i0+4], %g3
	andcc	%g3, 32, %g0
	bne,a	L(L34)
	fdtos	%f0, %f0
L(L34:)
	ld	[%i0+8], %g3
	b	L(L10)
	st	%f0, [%g3]
L(L69:)
	andcc	%g3, 16, %g0
	be,a	L(L79)
	ld	[%i0], %g3
	b	L(L76)
	ld	[%i0+16], %l0
L(L68:)
	ld	[%i0+8], %g3
	b	L(L2)
	st	%g3, [%sp+64]
L(L76:)
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
L(L10:)
	ret
	restore %g0, 0, %o0
L(Lfe1:)
	FUNEND(__builtin_avcall)
#if defined __linux__ || defined __FreeBSD__ || defined __FreeBSD_kernel__ || defined __DragonFly__
	.section .note.GNU-stack,"",@progbits
#endif
