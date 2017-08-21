#include "asm-sparc.h"
	.section	".text"
	.align 4
	.global C(__vacall_r)
	DECLARE_FUNCTION(__vacall_r)
	.proc	020
FUNBEGIN(__vacall_r)
	.register	%g2, $scratch
	.register	%g3, $scratch
	save	%sp, -448, %sp
	stx	%i0, [%fp+2175]
	stx	%i1, [%fp+2183]
	stx	%i2, [%fp+2191]
	stx	%i3, [%fp+2199]
	stx	%i4, [%fp+2207]
	stx	%i5, [%fp+2215]
	std	%f0, [%fp+1903]
	std	%f2, [%fp+1911]
	std	%f4, [%fp+1919]
	std	%f6, [%fp+1927]
	std	%f8, [%fp+1935]
	std	%f10, [%fp+1943]
	std	%f12, [%fp+1951]
	std	%f14, [%fp+1959]
	std	%f16, [%fp+1967]
	std	%f18, [%fp+1975]
	std	%f20, [%fp+1983]
	std	%f22, [%fp+1991]
	std	%f24, [%fp+1999]
	std	%f26, [%fp+2007]
	std	%f28, [%fp+2015]
	std	%f30, [%fp+2023]
	st	%f1, [%fp+1835]
	st	%f3, [%fp+1839]
	st	%f5, [%fp+1843]
	st	%f7, [%fp+1847]
	st	%f9, [%fp+1851]
	st	%f11, [%fp+1855]
	st	%f13, [%fp+1859]
	st	%f15, [%fp+1863]
	st	%f17, [%fp+1867]
	st	%f19, [%fp+1871]
	st	%f21, [%fp+1875]
	st	%f23, [%fp+1879]
	add	%fp, 2175, %g2
	stx	%g0, [%fp+1791]
	st	%f25, [%fp+1883]
	st	%f27, [%fp+1887]
	st	%f29, [%fp+1891]
	st	%f31, [%fp+1895]
	st	%g0, [%fp+1775]
	st	%g0, [%fp+1799]
	st	%g0, [%fp+1831]
	ldx	[%g5+8], %o0
	stx	%g2, [%fp+1783]
	ldx	[%g5], %g3
	call	%g3, 0
	 add	%fp, 1775, %o1
	lduw	[%fp+1799], %g1
	cmp	%g1, 0
	be,pn	%icc, L(L142)
	 cmp	%g1, 1
	be,pn	%icc, L(L101)
	 cmp	%g1, 2
	be,pn	%icc, L(L101)
	 cmp	%g1, 3
	be,pn	%icc, L(L106)
	 cmp	%g1, 4
	be,pn	%icc, L(L107)
	 cmp	%g1, 5
	be,pn	%icc, L(L108)
	 cmp	%g1, 6
	be,pn	%icc, L(L109)
	 cmp	%g1, 7
	be,pn	%icc, L(L110)
	 cmp	%g1, 8
	be,pn	%icc, L(L104)
	 cmp	%g1, 9
	be,pn	%icc, L(L104)
	 cmp	%g1, 10
	be,pn	%icc, L(L104)
	 cmp	%g1, 11
	be,pn	%icc, L(L104)
	 cmp	%g1, 12
	be,pn	%icc, L(L111)
	 cmp	%g1, 13
	be,pn	%icc, L(L112)
	 cmp	%g1, 14
	be,pn	%icc, L(L104)
	 cmp	%g1, 15
	bne,pt	%icc, L(L142)
	 lduw	[%fp+1775], %g1
	andcc	%g1, 1, %g0
	be,a,pt	%xcc, L(L33)
	 andcc	%g1, 1024, %g0
	ldx	[%fp+1791], %i0
L(L142:)
	return	%i7+8
	 nop
L(L33:)
	be,pn	%xcc, L(L142)
	 ldx	[%fp+1807], %g4
	add	%g4, -1, %g1
	cmp	%g1, 31
	bgu,pn	%xcc, L(L142)
	 cmp	%g4, 1
	be,pn	%xcc, L(L113)
	 cmp	%g4, 2
	be,pn	%xcc, L(L114)
	 cmp	%g4, 3
	be,pn	%xcc, L(L115)
	 cmp	%g4, 4
	be,pn	%xcc, L(L116)
	 cmp	%g4, 5
	be,pn	%xcc, L(L117)
	 cmp	%g4, 6
	be,pn	%xcc, L(L118)
	 cmp	%g4, 7
	be,pn	%xcc, L(L119)
	 add	%g4, -8, %g1
	cmp	%g1, 24
	bgu,pn	%xcc, L(L142)
	 ldx	[%fp+1791], %o5
	ldub	[%o5+1], %g1
	sllx	%g1, 48, %g1
	ldub	[%o5], %g3
	ldub	[%o5+2], %g2
	sllx	%g3, 56, %g3
	sllx	%g2, 40, %g2
	or	%g3, %g1, %g3
	ldub	[%o5+3], %g1
	sllx	%g1, 32, %g1
	or	%g3, %g2, %g3
	ldub	[%o5+4], %g2
	or	%g3, %g1, %g3
	sllx	%g2, 24, %g2
	ldub	[%o5+5], %g1
	sllx	%g1, 16, %g1
	or	%g3, %g2, %g3
	cmp	%g4, 8
	or	%g3, %g1, %g3
	ldub	[%o5+6], %g2
	ldub	[%o5+7], %g1
	sllx	%g2, 8, %g2
	or	%g3, %g2, %g3
	be,pn	%xcc, L(L142)
	 or	%g3, %g1, %i0
	cmp	%g4, 9
	be,pn	%xcc, L(L120)
	 cmp	%g4, 10
	be,pn	%xcc, L(L121)
	 cmp	%g4, 11
	be,pn	%xcc, L(L122)
	 cmp	%g4, 12
	be,pn	%xcc, L(L123)
	 cmp	%g4, 13
	be,pn	%xcc, L(L124)
	 cmp	%g4, 14
	be,pn	%xcc, L(L125)
	 cmp	%g4, 15
	be,pn	%xcc, L(L126)
	 add	%g4, -16, %g1
	cmp	%g1, 16
	bgu,pn	%xcc, L(L142)
	 cmp	%g4, 16
	ldub	[%o5+9], %g1
	sllx	%g1, 48, %g1
	ldub	[%o5+8], %g3
	ldub	[%o5+10], %g2
	sllx	%g3, 56, %g3
	sllx	%g2, 40, %g2
	or	%g3, %g1, %g3
	ldub	[%o5+11], %g1
	sllx	%g1, 32, %g1
	or	%g3, %g2, %g3
	ldub	[%o5+12], %g2
	or	%g3, %g1, %g3
	sllx	%g2, 24, %g2
	ldub	[%o5+13], %g1
	sllx	%g1, 16, %g1
	or	%g3, %g2, %g3
	or	%g3, %g1, %g3
	ldub	[%o5+14], %g2
	ldub	[%o5+15], %g1
	sllx	%g2, 8, %g2
	or	%g3, %g2, %g3
	be,pn	%xcc, L(L142)
	 or	%g3, %g1, %i1
	cmp	%g4, 17
	be,pn	%xcc, L(L127)
	 cmp	%g4, 18
	be,pn	%xcc, L(L128)
	 cmp	%g4, 19
	be,pn	%xcc, L(L129)
	 cmp	%g4, 20
	be,pn	%xcc, L(L130)
	 cmp	%g4, 21
	be,pn	%xcc, L(L131)
	 cmp	%g4, 22
	be,pn	%xcc, L(L132)
	 cmp	%g4, 23
	be,pn	%xcc, L(L133)
	 add	%g4, -24, %g1
	cmp	%g1, 8
	bgu,pn	%xcc, L(L142)
	 cmp	%g4, 24
	ldub	[%o5+17], %g1
	sllx	%g1, 48, %g1
	ldub	[%o5+16], %g3
	ldub	[%o5+18], %g2
	sllx	%g3, 56, %g3
	sllx	%g2, 40, %g2
	or	%g3, %g1, %g3
	ldub	[%o5+19], %g1
	sllx	%g1, 32, %g1
	or	%g3, %g2, %g3
	ldub	[%o5+20], %g2
	or	%g3, %g1, %g3
	sllx	%g2, 24, %g2
	ldub	[%o5+21], %g1
	sllx	%g1, 16, %g1
	or	%g3, %g2, %g3
	or	%g3, %g1, %g3
	ldub	[%o5+22], %g2
	ldub	[%o5+23], %g1
	sllx	%g2, 8, %g2
	or	%g3, %g2, %g3
	be,pn	%xcc, L(L142)
	 or	%g3, %g1, %i2
	cmp	%g4, 25
	be,pn	%xcc, L(L134)
	 cmp	%g4, 26
	be,pn	%xcc, L(L135)
	 cmp	%g4, 27
	be,pn	%xcc, L(L136)
	 cmp	%g4, 28
	be,pn	%xcc, L(L137)
	 cmp	%g4, 29
	be,pn	%xcc, L(L138)
	 cmp	%g4, 30
	be,pn	%xcc, L(L139)
	 cmp	%g4, 31
	be,pn	%xcc, L(L140)
	 cmp	%g4, 32
	bne,pt	%xcc, L(L141)
	 nop
	ldub	[%o5+25], %g1
	ldub	[%o5+26], %g2
	sllx	%g1, 48, %g1
	sllx	%g2, 40, %g2
	ldub	[%o5+24], %g3
	sllx	%g3, 56, %g3
	or	%g3, %g1, %g3
	ldub	[%o5+27], %g1
	or	%g3, %g2, %g3
	sllx	%g1, 32, %g1
	ldub	[%o5+28], %g2
	sllx	%g2, 24, %g2
	or	%g3, %g1, %g3
	ldub	[%o5+31], %g4
	or	%g3, %g2, %g3
	ldub	[%o5+29], %g1
	ldub	[%o5+30], %g2
	sllx	%g1, 16, %g1
	sllx	%g2, 8, %g2
	or	%g3, %g1, %g3
	or	%g3, %g2, %g3
	return	%i7+8
	 or	%g3, %g4, %o3
L(L101:)
	ldsb	[%fp+1815], %i0
	return	%i7+8
	 nop
L(L107:)
	ldsh	[%fp+1815], %i0
	return	%i7+8
	 nop
L(L106:)
	ldub	[%fp+1815], %i0
	return	%i7+8
	 nop
L(L104:)
	ldx	[%fp+1815], %i0
	return	%i7+8
	 nop
L(L108:)
	lduh	[%fp+1815], %i0
	return	%i7+8
	 nop
L(L109:)
	ldsw	[%fp+1815], %i0
	return	%i7+8
	 nop
L(L110:)
	lduw	[%fp+1815], %i0
	return	%i7+8
	 nop
L(L111:)
	ld	[%fp+1815], %f0
	return	%i7+8
	 nop
L(L112:)
	ldd	[%fp+1815], %f0
	return	%i7+8
	 nop
L(L113:)
	ldx	[%fp+1791], %g1
	ldub	[%g1], %g2
	return	%i7+8
	 sllx	%g2, 56, %o0
L(L116:)
	ldx	[%fp+1791], %g4
	ldub	[%g4+3], %o5
	ldub	[%g4], %g3
	sllx	%o5, 32, %o5
	sllx	%g3, 56, %g3
	ldub	[%g4+1], %g1
	ldub	[%g4+2], %g2
	sllx	%g1, 48, %g1
	sllx	%g2, 40, %g2
	or	%g3, %g1, %g3
	or	%g3, %g2, %g3
	or	%g3, %o5, %i0
	return	%i7+8
	 nop
L(L115:)
	ldx	[%fp+1791], %g3
	ldub	[%g3+2], %g4
	ldub	[%g3], %g2
	sllx	%g4, 40, %g4
	sllx	%g2, 56, %g2
	ldub	[%g3+1], %g1
	sllx	%g1, 48, %g1
	or	%g2, %g1, %g2
	return	%i7+8
	 or	%g2, %g4, %o0
L(L114:)
	ldx	[%fp+1791], %g3
	ldub	[%g3+1], %g2
	ldub	[%g3], %g1
	sllx	%g2, 48, %g2
	sllx	%g1, 56, %g1
	return	%i7+8
	 or	%g1, %g2, %o0
L(L137:)
	ldub	[%o5+27], %g4
	ldub	[%o5+24], %g3
	sllx	%g4, 32, %g4
	sllx	%g3, 56, %g3
	ldub	[%o5+25], %g1
	ldub	[%o5+26], %g2
	sllx	%g1, 48, %g1
	sllx	%g2, 40, %g2
	or	%g3, %g1, %g3
	or	%g3, %g2, %g3
	return	%i7+8
	 or	%g3, %g4, %o3
L(L136:)
	ldub	[%o5+26], %g3
	ldub	[%o5+24], %g2
	sllx	%g3, 40, %g3
	sllx	%g2, 56, %g2
	ldub	[%o5+25], %g1
	sllx	%g1, 48, %g1
	or	%g2, %g1, %g2
	return	%i7+8
	 or	%g2, %g3, %o3
L(L135:)
	ldub	[%o5+25], %g2
	ldub	[%o5+24], %g1
	sllx	%g2, 48, %g2
	sllx	%g1, 56, %g1
	return	%i7+8
	 or	%g1, %g2, %o3
L(L134:)
	ldub	[%o5+24], %g1
	return	%i7+8
	 sllx	%g1, 56, %o3
L(L133:)
	ldub	[%o5+17], %g1
	sllx	%g1, 48, %g1
	ldub	[%o5+16], %g3
	ldub	[%o5+18], %g2
	sllx	%g3, 56, %g3
	sllx	%g2, 40, %g2
	or	%g3, %g1, %g3
	ldub	[%o5+19], %g1
	sllx	%g1, 32, %g1
	or	%g3, %g2, %g3
	ldub	[%o5+22], %g4
	or	%g3, %g1, %g3
	sllx	%g4, 8, %g4
	ldub	[%o5+20], %g2
	ldub	[%o5+21], %g1
	sllx	%g2, 24, %g2
	sllx	%g1, 16, %g1
	or	%g3, %g2, %g3
	or	%g3, %g1, %g3
	return	%i7+8
	 or	%g3, %g4, %o2
L(L132:)
	ldub	[%o5+17], %g1
	ldub	[%o5+18], %g2
	sllx	%g1, 48, %g1
	sllx	%g2, 40, %g2
	ldub	[%o5+21], %g4
	ldub	[%o5+16], %g3
	sllx	%g4, 16, %g4
	sllx	%g3, 56, %g3
	or	%g3, %g1, %g3
	ldub	[%o5+19], %g1
	or	%g3, %g2, %g3
	sllx	%g1, 32, %g1
	ldub	[%o5+20], %g2
	or	%g3, %g1, %g3
	sllx	%g2, 24, %g2
	or	%g3, %g2, %g3
	return	%i7+8
	 or	%g3, %g4, %o2
L(L131:)
	ldub	[%o5+17], %g1
	sllx	%g1, 48, %g1
	ldub	[%o5+20], %g4
	ldub	[%o5+16], %g3
	sllx	%g4, 24, %g4
	sllx	%g3, 56, %g3
	ldub	[%o5+18], %g2
	or	%g3, %g1, %g3
	sllx	%g2, 40, %g2
	ldub	[%o5+19], %g1
	or	%g3, %g2, %g3
	sllx	%g1, 32, %g1
	or	%g3, %g1, %g3
	return	%i7+8
	 or	%g3, %g4, %o2
L(L130:)
	ldub	[%o5+19], %g4
	ldub	[%o5+16], %g3
	sllx	%g4, 32, %g4
	sllx	%g3, 56, %g3
	ldub	[%o5+17], %g1
	ldub	[%o5+18], %g2
	sllx	%g1, 48, %g1
	sllx	%g2, 40, %g2
	or	%g3, %g1, %g3
	or	%g3, %g2, %g3
	return	%i7+8
	 or	%g3, %g4, %o2
L(L139:)
	ldub	[%o5+25], %g1
	ldub	[%o5+26], %g2
	sllx	%g1, 48, %g1
	sllx	%g2, 40, %g2
	ldub	[%o5+29], %g4
	ldub	[%o5+24], %g3
	sllx	%g4, 16, %g4
	sllx	%g3, 56, %g3
	or	%g3, %g1, %g3
	ldub	[%o5+27], %g1
	or	%g3, %g2, %g3
	sllx	%g1, 32, %g1
	ldub	[%o5+28], %g2
	or	%g3, %g1, %g3
	sllx	%g2, 24, %g2
	or	%g3, %g2, %g3
	return	%i7+8
	 or	%g3, %g4, %o3
L(L138:)
	ldub	[%o5+25], %g1
	sllx	%g1, 48, %g1
	ldub	[%o5+28], %g4
	ldub	[%o5+24], %g3
	sllx	%g4, 24, %g4
	sllx	%g3, 56, %g3
	ldub	[%o5+26], %g2
	or	%g3, %g1, %g3
	sllx	%g2, 40, %g2
	ldub	[%o5+27], %g1
	or	%g3, %g2, %g3
	sllx	%g1, 32, %g1
	or	%g3, %g1, %g3
	return	%i7+8
	 or	%g3, %g4, %o3
L(L140:)
	ldub	[%o5+25], %g1
	sllx	%g1, 48, %g1
	ldub	[%o5+24], %g3
	ldub	[%o5+26], %g2
	sllx	%g3, 56, %g3
	sllx	%g2, 40, %g2
	or	%g3, %g1, %g3
	ldub	[%o5+27], %g1
	sllx	%g1, 32, %g1
	or	%g3, %g2, %g3
	ldub	[%o5+30], %g4
	or	%g3, %g1, %g3
	sllx	%g4, 8, %g4
	ldub	[%o5+28], %g2
	ldub	[%o5+29], %g1
	sllx	%g2, 24, %g2
	sllx	%g1, 16, %g1
	or	%g3, %g2, %g3
	or	%g3, %g1, %g3
	return	%i7+8
	 or	%g3, %g4, %o3
L(L117:)
	ldx	[%fp+1791], %g4
	ldub	[%g4+1], %g1
	sllx	%g1, 48, %g1
	ldub	[%g4+4], %o5
	ldub	[%g4], %g3
	sllx	%o5, 24, %o5
	sllx	%g3, 56, %g3
	ldub	[%g4+2], %g2
	or	%g3, %g1, %g3
	sllx	%g2, 40, %g2
	ldub	[%g4+3], %g1
	or	%g3, %g2, %g3
	sllx	%g1, 32, %g1
	or	%g3, %g1, %g3
	or	%g3, %o5, %i0
	return	%i7+8
	 nop
L(L121:)
	ldub	[%o5+9], %g2
	ldub	[%o5+8], %g1
	sllx	%g2, 48, %g2
	sllx	%g1, 56, %g1
	return	%i7+8
	 or	%g1, %g2, %o1
L(L120:)
	ldub	[%o5+8], %g1
	return	%i7+8
	 sllx	%g1, 56, %o1
L(L119:)
	ldx	[%fp+1791], %g4
	ldub	[%g4+1], %g1
	sllx	%g1, 48, %g1
	ldub	[%g4], %g3
	ldub	[%g4+2], %g2
	sllx	%g3, 56, %g3
	sllx	%g2, 40, %g2
	or	%g3, %g1, %g3
	ldub	[%g4+3], %g1
	sllx	%g1, 32, %g1
	or	%g3, %g2, %g3
	ldub	[%g4+6], %o5
	or	%g3, %g1, %g3
	sllx	%o5, 8, %o5
	ldub	[%g4+4], %g2
	ldub	[%g4+5], %g1
	sllx	%g2, 24, %g2
	sllx	%g1, 16, %g1
	or	%g3, %g2, %g3
	or	%g3, %g1, %g3
	or	%g3, %o5, %i0
	return	%i7+8
	 nop
L(L118:)
	ldx	[%fp+1791], %g4
	ldub	[%g4+1], %g1
	ldub	[%g4+2], %g2
	sllx	%g1, 48, %g1
	sllx	%g2, 40, %g2
	ldub	[%g4+5], %o5
	ldub	[%g4], %g3
	sllx	%o5, 16, %o5
	sllx	%g3, 56, %g3
	or	%g3, %g1, %g3
	ldub	[%g4+3], %g1
	or	%g3, %g2, %g3
	sllx	%g1, 32, %g1
	ldub	[%g4+4], %g2
	or	%g3, %g1, %g3
	sllx	%g2, 24, %g2
	or	%g3, %g2, %g3
	or	%g3, %o5, %i0
L(L141:)
	return	%i7+8
	 nop
L(L129:)
	ldub	[%o5+18], %g3
	ldub	[%o5+16], %g2
	sllx	%g3, 40, %g3
	sllx	%g2, 56, %g2
	ldub	[%o5+17], %g1
	sllx	%g1, 48, %g1
	or	%g2, %g1, %g2
	return	%i7+8
	 or	%g2, %g3, %o2
L(L128:)
	ldub	[%o5+17], %g2
	ldub	[%o5+16], %g1
	sllx	%g2, 48, %g2
	sllx	%g1, 56, %g1
	return	%i7+8
	 or	%g1, %g2, %o2
L(L127:)
	ldub	[%o5+16], %g1
	return	%i7+8
	 sllx	%g1, 56, %o2
L(L126:)
	ldub	[%o5+9], %g1
	sllx	%g1, 48, %g1
	ldub	[%o5+8], %g3
	ldub	[%o5+10], %g2
	sllx	%g3, 56, %g3
	sllx	%g2, 40, %g2
	or	%g3, %g1, %g3
	ldub	[%o5+11], %g1
	sllx	%g1, 32, %g1
	or	%g3, %g2, %g3
	ldub	[%o5+14], %g4
	or	%g3, %g1, %g3
	sllx	%g4, 8, %g4
	ldub	[%o5+12], %g2
	ldub	[%o5+13], %g1
	sllx	%g2, 24, %g2
	sllx	%g1, 16, %g1
	or	%g3, %g2, %g3
	or	%g3, %g1, %g3
	return	%i7+8
	 or	%g3, %g4, %o1
L(L125:)
	ldub	[%o5+9], %g1
	ldub	[%o5+10], %g2
	sllx	%g1, 48, %g1
	sllx	%g2, 40, %g2
	ldub	[%o5+13], %g4
	ldub	[%o5+8], %g3
	sllx	%g4, 16, %g4
	sllx	%g3, 56, %g3
	or	%g3, %g1, %g3
	ldub	[%o5+11], %g1
	or	%g3, %g2, %g3
	sllx	%g1, 32, %g1
	ldub	[%o5+12], %g2
	or	%g3, %g1, %g3
	sllx	%g2, 24, %g2
	or	%g3, %g2, %g3
	return	%i7+8
	 or	%g3, %g4, %o1
L(L124:)
	ldub	[%o5+9], %g1
	sllx	%g1, 48, %g1
	ldub	[%o5+12], %g4
	ldub	[%o5+8], %g3
	sllx	%g4, 24, %g4
	sllx	%g3, 56, %g3
	ldub	[%o5+10], %g2
	or	%g3, %g1, %g3
	sllx	%g2, 40, %g2
	ldub	[%o5+11], %g1
	or	%g3, %g2, %g3
	sllx	%g1, 32, %g1
	or	%g3, %g1, %g3
	return	%i7+8
	 or	%g3, %g4, %o1
L(L123:)
	ldub	[%o5+11], %g4
	ldub	[%o5+8], %g3
	sllx	%g4, 32, %g4
	sllx	%g3, 56, %g3
	ldub	[%o5+9], %g1
	ldub	[%o5+10], %g2
	sllx	%g1, 48, %g1
	sllx	%g2, 40, %g2
	or	%g3, %g1, %g3
	or	%g3, %g2, %g3
	return	%i7+8
	 or	%g3, %g4, %o1
L(L122:)
	ldub	[%o5+10], %g3
	ldub	[%o5+8], %g2
	sllx	%g3, 40, %g3
	sllx	%g2, 56, %g2
	ldub	[%o5+9], %g1
	sllx	%g1, 48, %g1
	or	%g2, %g1, %g2
	return	%i7+8
	 or	%g2, %g3, %o1
	FUNEND(__vacall_r)
#if defined __linux__ || defined __FreeBSD__ || defined __FreeBSD_kernel__ || defined __DragonFly__
	.section .note.GNU-stack,"",@progbits
#endif
