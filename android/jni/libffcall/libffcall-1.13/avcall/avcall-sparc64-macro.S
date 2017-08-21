#include "asm-sparc.h"
	.section	".text"
	.align 4
	.global C(__builtin_avcall)
	DECLARE_FUNCTION(__builtin_avcall)
	.proc	04
FUNBEGIN(__builtin_avcall)
	.register	%g2, $scratch
	.register	%g3, $scratch
	save	%sp, -192, %sp
	add	%i0, 64, %g2
	ldx	[%i0+40], %g1
	sub	%g1, %g2, %g1
	lduw	[%i0+60], %g2
	cmp	%g2, 0
	be,pt	%icc, L(L2)
	 srlx	%g1, 3, %g5
	andcc	%g2, 1, %g0
	bne,pt	%xcc, L(L161)
	 andcc	%g2, 2, %g0
	bne,pt	%xcc, L(L162)
	 andcc	%g2, 4, %g0
L(L222:)
	bne,pt	%xcc, L(L163)
	 andcc	%g2, 8, %g0
L(L221:)
	bne,pt	%xcc, L(L164)
	 andcc	%g2, 16, %g0
L(L220:)
	bne,pt	%xcc, L(L165)
	 andcc	%g2, 32, %g0
L(L219:)
	bne,pt	%xcc, L(L166)
	 andcc	%g2, 64, %g0
L(L218:)
	bne,pt	%xcc, L(L167)
	 andcc	%g2, 128, %g0
L(L217:)
	bne,pt	%xcc, L(L168)
	 andcc	%g2, 256, %g0
L(L216:)
	bne,pt	%xcc, L(L169)
	 andcc	%g2, 512, %g0
L(L215:)
	bne,pt	%xcc, L(L170)
	 andcc	%g2, 1024, %g0
L(L226:)
	bne,pt	%xcc, L(L171)
	 andcc	%g2, 2048, %g0
L(L225:)
	bne,pt	%xcc, L(L172)
	 sethi	%hi(4096), %g1
L(L224:)
	andcc	%g2, %g1, %g0
	bne,pt	%icc, L(L173)
	 sethi	%hi(8192), %g1
L(L223:)
	andcc	%g2, %g1, %g0
	bne,pt	%icc, L(L174)
	 sethi	%hi(16384), %g1
L(L228:)
	andcc	%g2, %g1, %g0
	bne,pt	%icc, L(L175)
	 sethi	%hi(32768), %g1
L(L227:)
	andcc	%g2, %g1, %g0
	bne,pt	%icc, L(L176)
	 nop
L(L2:)
	cmp	%g5, 6
L(L229:)
	bg,pn	%icc, L(L213)
	 add	%g5, -6, %g1
	ldx	[%i0], %g1
L(L212:)
	ldx	[%i0+64], %o0
	ldx	[%i0+72], %o1
	ldx	[%i0+80], %o2
	ldx	[%i0+88], %o3
	ldx	[%i0+96], %o4
	call	%g1, 0
	 ldx	[%i0+104], %o5
	mov	%o0, %g5
	nop
	lduw	[%i0+24], %g1
	cmp	%g1, 1
	be,pn	%icc, L(L38)
	 cmp	%g1, 0
	be,a,pt	%icc, L(L214)
	 ldx	[%i0+16], %g1
	cmp	%g1, 2
	be,pn	%icc, L(L153)
	 cmp	%g1, 3
	be,pn	%icc, L(L153)
	 cmp	%g1, 4
	be,pn	%icc, L(L153)
	 cmp	%g1, 5
	be,pn	%icc, L(L154)
	 cmp	%g1, 6
	be,pn	%icc, L(L154)
	 cmp	%g1, 7
	be,pn	%icc, L(L155)
	 cmp	%g1, 8
	be,pn	%icc, L(L155)
	 cmp	%g1, 9
	be,pn	%icc, L(L159)
	 cmp	%g1, 10
	be,pn	%icc, L(L159)
	 cmp	%g1, 11
	be,pn	%icc, L(L159)
	 cmp	%g1, 12
	be,pn	%icc, L(L159)
	 cmp	%g1, 13
	be,pn	%icc, L(L178)
	 cmp	%g1, 14
	be,pn	%icc, L(L179)
	 cmp	%g1, 15
	be,pn	%icc, L(L159)
	 cmp	%g1, 16
	bne,pt	%icc, L(L38)
	 nop
	lduw	[%i0+8], %g1
	andcc	%g1, 1, %g0
	be,pt	%xcc, L(L71)
	 andcc	%g1, 512, %g0
	ldx	[%i0+32], %g1
	cmp	%g1, 1
	be,pn	%xcc, L(L180)
	 cmp	%g1, 2
	be,pn	%xcc, L(L181)
	 cmp	%g1, 4
	be,pn	%xcc, L(L182)
	 cmp	%g1, 8
	be,pn	%xcc, L(L183)
	 add	%g1, 7, %g1
	srlx	%g1, 3, %g3
	addcc	%g3, -1, %o7
	bneg,pn	%icc, L(L38)
	 mov	0, %g4
	ldx	[%i0+16], %i0
L(L82:)
	sub	%o7, %g4, %g1
	add	%g4, 1, %g4
	sra	%g1, 0, %g1
	cmp	%g3, %g4
	sllx	%g1, 3, %g1
	ldx	[%g5+%g1], %g2
	bne,pt	%icc, L(L82)
	 stx	%g2, [%i0+%g1]
L(L38:)
	return	%i7+8
	 mov	0, %o0
L(L159:)
	ldx	[%i0+16], %g1
L(L214:)
	stx	%g5, [%g1]
	return	%i7+8
	 mov	0, %o0
L(L176:)
	ldd [%i0+184],%f30
	cmp	%g5, 6
	ble,a,pt %icc, L(L212)
	 ldx	[%i0], %g1
	add	%g5, -6, %g1
L(L213:)
	sra	%g1, 0, %g1
	sllx	%g1, 3, %g1
	add	%g1, 15, %g1
	and	%g1, -16, %g1
	mov	%i0, %g3
	sub	%sp, %g1, %sp
	mov	6, %g4
	add	%sp, 2238, %g1
	and	%g1, -16, %g1
	add	%g1, -48, %g2
L(L37:)
	ldx	[%g3+112], %g1
	add	%g4, 1, %g4
	stx	%g1, [%g2+48]
	cmp	%g5, %g4
	add	%g3, 8, %g3
	bne,pt	%icc, L(L37)
	 add	%g2, 8, %g2
	ba,pt	%xcc, L(L212)
	 ldx	[%i0], %g1
L(L168:)
	ldd [%i0+120],%f14
	andcc	%g2, 256, %g0
	be,pt	%xcc, L(L215)
	 andcc	%g2, 512, %g0
	ba,pt	%xcc, L(L169)
	 nop
L(L167:)
	ldd [%i0+112],%f12
	andcc	%g2, 128, %g0
	be,pt	%xcc, L(L216)
	 andcc	%g2, 256, %g0
	ba,pt	%xcc, L(L168)
	 nop
L(L166:)
	ldd [%i0+104],%f10
	andcc	%g2, 64, %g0
	be,pt	%xcc, L(L217)
	 andcc	%g2, 128, %g0
	ba,pt	%xcc, L(L167)
	 nop
L(L165:)
	ldd [%i0+96],%f8
	andcc	%g2, 32, %g0
	be,pt	%xcc, L(L218)
	 andcc	%g2, 64, %g0
	ba,pt	%xcc, L(L166)
	 nop
L(L164:)
	ldd [%i0+88],%f6
	andcc	%g2, 16, %g0
	be,pt	%xcc, L(L219)
	 andcc	%g2, 32, %g0
	ba,pt	%xcc, L(L165)
	 nop
L(L163:)
	ldd [%i0+80],%f4
	andcc	%g2, 8, %g0
	be,pt	%xcc, L(L220)
	 andcc	%g2, 16, %g0
	ba,pt	%xcc, L(L164)
	 nop
L(L162:)
	ldd [%i0+72],%f2
	andcc	%g2, 4, %g0
	be,pt	%xcc, L(L221)
	 andcc	%g2, 8, %g0
	ba,pt	%xcc, L(L163)
	 nop
L(L161:)
	ldd [%i0+64],%f0
	andcc	%g2, 2, %g0
	be,pt	%xcc, L(L222)
	 andcc	%g2, 4, %g0
	ba,pt	%xcc, L(L162)
	 nop
L(L172:)
	ldd [%i0+152],%f22
	sethi	%hi(4096), %g1
	andcc	%g2, %g1, %g0
	be,pt	%icc, L(L223)
	 sethi	%hi(8192), %g1
	ba,pt	%xcc, L(L173)
	 nop
L(L171:)
	ldd [%i0+144],%f20
	andcc	%g2, 2048, %g0
	be,pt	%xcc, L(L224)
	 sethi	%hi(4096), %g1
	ba,pt	%xcc, L(L172)
	 nop
L(L170:)
	ldd [%i0+136],%f18
	andcc	%g2, 1024, %g0
	be,pt	%xcc, L(L225)
	 andcc	%g2, 2048, %g0
	ba,pt	%xcc, L(L171)
	 nop
L(L169:)
	ldd [%i0+128],%f16
	andcc	%g2, 512, %g0
	be,pt	%xcc, L(L226)
	 andcc	%g2, 1024, %g0
	ba,pt	%xcc, L(L170)
	 nop
L(L174:)
	ldd [%i0+168],%f26
	sethi	%hi(16384), %g1
	andcc	%g2, %g1, %g0
	be,pt	%icc, L(L227)
	 sethi	%hi(32768), %g1
	ba,pt	%xcc, L(L175)
	 nop
L(L173:)
	ldd [%i0+160],%f24
	sethi	%hi(8192), %g1
	andcc	%g2, %g1, %g0
	be,pt	%icc, L(L228)
	 sethi	%hi(16384), %g1
	ba,pt	%xcc, L(L174)
	 nop
L(L175:)
	ldd [%i0+176],%f28
	sethi	%hi(32768), %g1
	andcc	%g2, %g1, %g0
	be,pt	%icc, L(L229)
	 cmp	%g5, 6
	ba,pt	%xcc, L(L176)
	 nop
L(L153:)
	ldx	[%i0+16], %g1
	stb	%g5, [%g1]
	return	%i7+8
	 mov	0, %o0
L(L154:)
	ldx	[%i0+16], %g1
	ba,pt	%xcc, L(L38)
	 sth	%g5, [%g1]
L(L155:)
	ldx	[%i0+16], %g1
	ba,pt	%xcc, L(L38)
	 st	%g5, [%g1]
L(L178:)
	ldx	[%i0+16], %g1
	ba,pt	%xcc, L(L38)
	 st	%f0, [%g1]
L(L179:)
	ldx	[%i0+16], %g1
	ba,pt	%xcc, L(L38)
	 std	%f0, [%g1]
L(L71:)
	be,pn	%xcc, L(L38)
	 nop
	ldx	[%i0+32], %g2
	add	%g2, -1, %g1
	cmp	%g1, 31
	bgu,pn	%xcc, L(L38)
	 cmp	%g2, 1
	be,pn	%xcc, L(L184)
	 cmp	%g2, 2
	be,pn	%xcc, L(L185)
	 cmp	%g2, 3
	be,pn	%xcc, L(L186)
	 cmp	%g2, 4
	be,pn	%xcc, L(L187)
	 cmp	%g2, 5
	be,pn	%xcc, L(L188)
	 cmp	%g2, 6
	be,pn	%xcc, L(L189)
	 cmp	%g2, 7
	be,pn	%xcc, L(L190)
	 add	%g2, -8, %g1
	cmp	%g1, 24
	bgu,pn	%xcc, L(L38)
	 srax	%o0, 56, %g1
	ldx	[%i0+16], %g2
	stb	%g1, [%g2]
	ldx	[%i0+16], %g1
	srax	%o0, 48, %g3
	stb	%g3, [%g1+1]
	ldx	[%i0+16], %g1
	srax	%o0, 40, %g2
	stb	%g2, [%g1+2]
	ldx	[%i0+16], %g1
	srax	%o0, 32, %g3
	stb	%g3, [%g1+3]
	ldx	[%i0+16], %g1
	srax	%o0, 24, %g2
	stb	%g2, [%g1+4]
	ldx	[%i0+16], %g1
	srax	%o0, 16, %g3
	srax	%o0, 8, %g4
	stb	%g3, [%g1+5]
	ldx	[%i0+16], %g1
	stb	%g4, [%g1+6]
	ldx	[%i0+16], %g2
	stb	%o0, [%g2+7]
	ldx	[%i0+32], %g1
	cmp	%g1, 8
	be,pn	%xcc, L(L38)
	 cmp	%g1, 9
	be,pn	%xcc, L(L191)
	 cmp	%g1, 10
	be,pn	%xcc, L(L192)
	 cmp	%g1, 11
	be,pn	%xcc, L(L193)
	 cmp	%g1, 12
	be,pn	%xcc, L(L194)
	 cmp	%g1, 13
	be,pn	%xcc, L(L195)
	 cmp	%g1, 14
	be,pn	%xcc, L(L196)
	 cmp	%g1, 15
	be,pn	%xcc, L(L197)
	 add	%g1, -16, %g1
	cmp	%g1, 16
	bgu,pn	%xcc, L(L38)
	 srax	%o1, 56, %g1
	ldx	[%i0+16], %g2
	stb	%g1, [%g2+8]
	ldx	[%i0+16], %g1
	srax	%o1, 48, %g4
	stb	%g4, [%g1+9]
	ldx	[%i0+16], %g1
	srax	%o1, 40, %g2
	stb	%g2, [%g1+10]
	ldx	[%i0+16], %g1
	srax	%o1, 32, %g4
	stb	%g4, [%g1+11]
	ldx	[%i0+16], %g1
	srax	%o1, 24, %g2
	stb	%g2, [%g1+12]
	ldx	[%i0+16], %g1
	srax	%o1, 16, %g4
	srax	%o1, 8, %g5
	stb	%g4, [%g1+13]
	ldx	[%i0+16], %g1
	stb	%g5, [%g1+14]
	ldx	[%i0+16], %g2
	stb	%o1, [%g2+15]
	ldx	[%i0+32], %g1
	cmp	%g1, 16
	be,pn	%xcc, L(L38)
	 cmp	%g1, 17
	be,pn	%xcc, L(L198)
	 cmp	%g1, 18
	be,pn	%xcc, L(L199)
	 cmp	%g1, 19
	be,pn	%xcc, L(L200)
	 cmp	%g1, 20
	be,pn	%xcc, L(L201)
	 cmp	%g1, 21
	be,pn	%xcc, L(L202)
	 cmp	%g1, 22
	be,pn	%xcc, L(L203)
	 cmp	%g1, 23
	be,pn	%xcc, L(L204)
	 add	%g1, -24, %g1
	cmp	%g1, 8
	bgu,pn	%xcc, L(L38)
	 srax	%o2, 56, %g1
	ldx	[%i0+16], %g2
	stb	%g1, [%g2+16]
	ldx	[%i0+16], %g1
	srax	%o2, 48, %g4
	stb	%g4, [%g1+17]
	ldx	[%i0+16], %g1
	srax	%o2, 40, %g2
	stb	%g2, [%g1+18]
	ldx	[%i0+16], %g1
	srax	%o2, 32, %g4
	stb	%g4, [%g1+19]
	ldx	[%i0+16], %g1
	srax	%o2, 24, %g2
	stb	%g2, [%g1+20]
	ldx	[%i0+16], %g1
	srax	%o2, 16, %g4
	srax	%o2, 8, %g5
	stb	%g4, [%g1+21]
	ldx	[%i0+16], %g1
	stb	%g5, [%g1+22]
	ldx	[%i0+16], %g2
	stb	%o2, [%g2+23]
	ldx	[%i0+32], %g1
	cmp	%g1, 24
	be,pn	%xcc, L(L38)
	 cmp	%g1, 25
	be,pn	%xcc, L(L205)
	 cmp	%g1, 26
	be,pn	%xcc, L(L206)
	 cmp	%g1, 27
	be,pn	%xcc, L(L207)
	 cmp	%g1, 28
	be,pn	%xcc, L(L208)
	 cmp	%g1, 29
	be,pn	%xcc, L(L209)
	 cmp	%g1, 30
	be,pn	%xcc, L(L210)
	 cmp	%g1, 31
	be,pn	%xcc, L(L211)
	 cmp	%g1, 32
	bne,pt	%xcc, L(L38)
	 srax	%o3, 56, %g1
	ldx	[%i0+16], %g2
	stb	%g1, [%g2+24]
	ldx	[%i0+16], %g1
	srax	%o3, 48, %g4
	stb	%g4, [%g1+25]
	ldx	[%i0+16], %g1
	srax	%o3, 40, %g2
	stb	%g2, [%g1+26]
	ldx	[%i0+16], %g1
	srax	%o3, 32, %g4
	stb	%g4, [%g1+27]
	ldx	[%i0+16], %g1
	srax	%o3, 24, %g2
	stb	%g2, [%g1+28]
	ldx	[%i0+16], %g1
	srax	%o3, 16, %g4
	srax	%o3, 8, %g5
	stb	%g4, [%g1+29]
	ldx	[%i0+16], %g1
	stb	%g5, [%g1+30]
	ldx	[%i0+16], %g2
	ba,pt	%xcc, L(L38)
	 stb	%o3, [%g2+31]
L(L180:)
	ldx	[%i0+16], %g2
	ldub	[%o0], %g1
	ba,pt	%xcc, L(L38)
	 stb	%g1, [%g2]
L(L181:)
	ldx	[%i0+16], %g2
	lduh	[%o0], %g1
	ba,pt	%xcc, L(L38)
	 sth	%g1, [%g2]
L(L183:)
	ldx	[%i0+16], %g2
	ldx	[%o0], %g1
	ba,pt	%xcc, L(L38)
	 stx	%g1, [%g2]
L(L182:)
	ldx	[%i0+16], %g2
	lduw	[%o0], %g1
	ba,pt	%xcc, L(L38)
	 st	%g1, [%g2]
L(L211:)
	srax	%o3, 56, %g1
	ldx	[%i0+16], %g3
	stb	%g1, [%g3+24]
	ldx	[%i0+16], %g1
	srax	%o3, 48, %g4
	stb	%g4, [%g1+25]
	ldx	[%i0+16], %g1
	srax	%o3, 40, %g3
	stb	%g3, [%g1+26]
	ldx	[%i0+16], %g1
	srax	%o3, 32, %g4
	stb	%g4, [%g1+27]
	ldx	[%i0+16], %g1
	srax	%o3, 24, %g3
	stb	%g3, [%g1+28]
	ldx	[%i0+16], %g1
	srax	%o3, 16, %g4
	srax	%o3, 8, %g2
	stb	%g4, [%g1+29]
	ldx	[%i0+16], %g1
	ba,pt	%xcc, L(L38)
	 stb	%g2, [%g1+30]
L(L210:)
	srax	%o3, 56, %g1
	ldx	[%i0+16], %g3
	stb	%g1, [%g3+24]
	ldx	[%i0+16], %g1
	srax	%o3, 48, %g4
	stb	%g4, [%g1+25]
	ldx	[%i0+16], %g1
	srax	%o3, 40, %g3
	stb	%g3, [%g1+26]
	ldx	[%i0+16], %g1
	srax	%o3, 32, %g4
	stb	%g4, [%g1+27]
	ldx	[%i0+16], %g1
	srax	%o3, 24, %g3
	srax	%o3, 16, %g2
	stb	%g3, [%g1+28]
	ldx	[%i0+16], %g1
	ba,pt	%xcc, L(L38)
	 stb	%g2, [%g1+29]
L(L209:)
	srax	%o3, 56, %g1
	ldx	[%i0+16], %g3
	stb	%g1, [%g3+24]
	ldx	[%i0+16], %g1
	srax	%o3, 48, %g4
	stb	%g4, [%g1+25]
	ldx	[%i0+16], %g1
	srax	%o3, 40, %g3
	stb	%g3, [%g1+26]
	ldx	[%i0+16], %g1
	srax	%o3, 32, %g4
	srax	%o3, 24, %g2
	stb	%g4, [%g1+27]
	ldx	[%i0+16], %g1
	ba,pt	%xcc, L(L38)
	 stb	%g2, [%g1+28]
L(L208:)
	srax	%o3, 56, %g1
	ldx	[%i0+16], %g3
	stb	%g1, [%g3+24]
	ldx	[%i0+16], %g1
	srax	%o3, 48, %g4
	stb	%g4, [%g1+25]
	ldx	[%i0+16], %g1
	srax	%o3, 40, %g3
	srax	%o3, 32, %g2
	stb	%g3, [%g1+26]
	ldx	[%i0+16], %g1
	ba,pt	%xcc, L(L38)
	 stb	%g2, [%g1+27]
L(L207:)
	srax	%o3, 56, %g1
	ldx	[%i0+16], %g3
	stb	%g1, [%g3+24]
	ldx	[%i0+16], %g1
	srax	%o3, 48, %g4
	srax	%o3, 40, %g2
	stb	%g4, [%g1+25]
	ldx	[%i0+16], %g1
	ba,pt	%xcc, L(L38)
	 stb	%g2, [%g1+26]
L(L206:)
	ldx	[%i0+16], %g3
	srax	%o3, 56, %g1
	stb	%g1, [%g3+24]
	srax	%o3, 48, %g2
	ldx	[%i0+16], %g1
	ba,pt	%xcc, L(L38)
	 stb	%g2, [%g1+25]
L(L205:)
	ldx	[%i0+16], %g2
	srax	%o3, 56, %g1
	ba,pt	%xcc, L(L38)
	 stb	%g1, [%g2+24]
L(L204:)
	srax	%o2, 56, %g1
	ldx	[%i0+16], %g3
	stb	%g1, [%g3+16]
	ldx	[%i0+16], %g1
	srax	%o2, 48, %g4
	stb	%g4, [%g1+17]
	ldx	[%i0+16], %g1
	srax	%o2, 40, %g3
	stb	%g3, [%g1+18]
	ldx	[%i0+16], %g1
	srax	%o2, 32, %g4
	stb	%g4, [%g1+19]
	ldx	[%i0+16], %g1
	srax	%o2, 24, %g3
	stb	%g3, [%g1+20]
	ldx	[%i0+16], %g1
	srax	%o2, 16, %g4
	srax	%o2, 8, %g2
	stb	%g4, [%g1+21]
	ldx	[%i0+16], %g1
	ba,pt	%xcc, L(L38)
	 stb	%g2, [%g1+22]
L(L203:)
	srax	%o2, 56, %g1
	ldx	[%i0+16], %g3
	stb	%g1, [%g3+16]
	ldx	[%i0+16], %g1
	srax	%o2, 48, %g4
	stb	%g4, [%g1+17]
	ldx	[%i0+16], %g1
	srax	%o2, 40, %g3
	stb	%g3, [%g1+18]
	ldx	[%i0+16], %g1
	srax	%o2, 32, %g4
	stb	%g4, [%g1+19]
	ldx	[%i0+16], %g1
	srax	%o2, 24, %g3
	srax	%o2, 16, %g2
	stb	%g3, [%g1+20]
	ldx	[%i0+16], %g1
	ba,pt	%xcc, L(L38)
	 stb	%g2, [%g1+21]
L(L202:)
	srax	%o2, 56, %g1
	ldx	[%i0+16], %g3
	stb	%g1, [%g3+16]
	ldx	[%i0+16], %g1
	srax	%o2, 48, %g4
	stb	%g4, [%g1+17]
	ldx	[%i0+16], %g1
	srax	%o2, 40, %g3
	stb	%g3, [%g1+18]
	ldx	[%i0+16], %g1
	srax	%o2, 32, %g4
	srax	%o2, 24, %g2
	stb	%g4, [%g1+19]
	ldx	[%i0+16], %g1
	ba,pt	%xcc, L(L38)
	 stb	%g2, [%g1+20]
L(L201:)
	srax	%o2, 56, %g1
	ldx	[%i0+16], %g3
	stb	%g1, [%g3+16]
	ldx	[%i0+16], %g1
	srax	%o2, 48, %g4
	stb	%g4, [%g1+17]
	ldx	[%i0+16], %g1
	srax	%o2, 40, %g3
	srax	%o2, 32, %g2
	stb	%g3, [%g1+18]
	ldx	[%i0+16], %g1
	ba,pt	%xcc, L(L38)
	 stb	%g2, [%g1+19]
L(L200:)
	srax	%o2, 56, %g1
	ldx	[%i0+16], %g3
	stb	%g1, [%g3+16]
	ldx	[%i0+16], %g1
	srax	%o2, 48, %g4
	srax	%o2, 40, %g2
	stb	%g4, [%g1+17]
	ldx	[%i0+16], %g1
	ba,pt	%xcc, L(L38)
	 stb	%g2, [%g1+18]
L(L199:)
	ldx	[%i0+16], %g3
	srax	%o2, 56, %g1
	stb	%g1, [%g3+16]
	srax	%o2, 48, %g2
	ldx	[%i0+16], %g1
	ba,pt	%xcc, L(L38)
	 stb	%g2, [%g1+17]
L(L198:)
	ldx	[%i0+16], %g2
	srax	%o2, 56, %g1
	ba,pt	%xcc, L(L38)
	 stb	%g1, [%g2+16]
L(L197:)
	srax	%o1, 56, %g1
	ldx	[%i0+16], %g3
	stb	%g1, [%g3+8]
	ldx	[%i0+16], %g1
	srax	%o1, 48, %g4
	stb	%g4, [%g1+9]
	ldx	[%i0+16], %g1
	srax	%o1, 40, %g3
	stb	%g3, [%g1+10]
	ldx	[%i0+16], %g1
	srax	%o1, 32, %g4
	stb	%g4, [%g1+11]
	ldx	[%i0+16], %g1
	srax	%o1, 24, %g3
	stb	%g3, [%g1+12]
	ldx	[%i0+16], %g1
	srax	%o1, 16, %g4
	srax	%o1, 8, %g2
	stb	%g4, [%g1+13]
	ldx	[%i0+16], %g1
	ba,pt	%xcc, L(L38)
	 stb	%g2, [%g1+14]
L(L196:)
	srax	%o1, 56, %g1
	ldx	[%i0+16], %g3
	stb	%g1, [%g3+8]
	ldx	[%i0+16], %g1
	srax	%o1, 48, %g4
	stb	%g4, [%g1+9]
	ldx	[%i0+16], %g1
	srax	%o1, 40, %g3
	stb	%g3, [%g1+10]
	ldx	[%i0+16], %g1
	srax	%o1, 32, %g4
	stb	%g4, [%g1+11]
	ldx	[%i0+16], %g1
	srax	%o1, 24, %g3
	srax	%o1, 16, %g2
	stb	%g3, [%g1+12]
	ldx	[%i0+16], %g1
	ba,pt	%xcc, L(L38)
	 stb	%g2, [%g1+13]
L(L195:)
	srax	%o1, 56, %g1
	ldx	[%i0+16], %g3
	stb	%g1, [%g3+8]
	ldx	[%i0+16], %g1
	srax	%o1, 48, %g4
	stb	%g4, [%g1+9]
	ldx	[%i0+16], %g1
	srax	%o1, 40, %g3
	stb	%g3, [%g1+10]
	ldx	[%i0+16], %g1
	srax	%o1, 32, %g4
	srax	%o1, 24, %g2
	stb	%g4, [%g1+11]
	ldx	[%i0+16], %g1
	ba,pt	%xcc, L(L38)
	 stb	%g2, [%g1+12]
L(L194:)
	srax	%o1, 56, %g1
	ldx	[%i0+16], %g3
	stb	%g1, [%g3+8]
	ldx	[%i0+16], %g1
	srax	%o1, 48, %g4
	stb	%g4, [%g1+9]
	ldx	[%i0+16], %g1
	srax	%o1, 40, %g3
	srax	%o1, 32, %g2
	stb	%g3, [%g1+10]
	ldx	[%i0+16], %g1
	ba,pt	%xcc, L(L38)
	 stb	%g2, [%g1+11]
L(L193:)
	srax	%o1, 56, %g1
	ldx	[%i0+16], %g3
	stb	%g1, [%g3+8]
	ldx	[%i0+16], %g1
	srax	%o1, 48, %g4
	srax	%o1, 40, %g2
	stb	%g4, [%g1+9]
	ldx	[%i0+16], %g1
	ba,pt	%xcc, L(L38)
	 stb	%g2, [%g1+10]
L(L192:)
	ldx	[%i0+16], %g3
	srax	%o1, 56, %g1
	stb	%g1, [%g3+8]
	srax	%o1, 48, %g2
	ldx	[%i0+16], %g1
	ba,pt	%xcc, L(L38)
	 stb	%g2, [%g1+9]
L(L191:)
	ldx	[%i0+16], %g2
	srax	%o1, 56, %g1
	ba,pt	%xcc, L(L38)
	 stb	%g1, [%g2+8]
L(L190:)
	srax	%o0, 56, %g1
	ldx	[%i0+16], %g2
	stb	%g1, [%g2]
	ldx	[%i0+16], %g1
	srax	%o0, 48, %g3
	stb	%g3, [%g1+1]
	ldx	[%i0+16], %g1
	srax	%o0, 40, %g2
	stb	%g2, [%g1+2]
	ldx	[%i0+16], %g1
	srax	%o0, 32, %g3
	stb	%g3, [%g1+3]
	ldx	[%i0+16], %g1
	srax	%o0, 24, %g2
	stb	%g2, [%g1+4]
	ldx	[%i0+16], %g1
	srax	%o0, 16, %g3
	srax	%o0, 8, %g2
	stb	%g3, [%g1+5]
	ldx	[%i0+16], %g1
	ba,pt	%xcc, L(L38)
	 stb	%g2, [%g1+6]
L(L189:)
	srax	%o0, 56, %g1
	ldx	[%i0+16], %g2
	stb	%g1, [%g2]
	ldx	[%i0+16], %g1
	srax	%o0, 48, %g3
	stb	%g3, [%g1+1]
	ldx	[%i0+16], %g1
	srax	%o0, 40, %g2
	stb	%g2, [%g1+2]
	ldx	[%i0+16], %g1
	srax	%o0, 32, %g3
	stb	%g3, [%g1+3]
	ldx	[%i0+16], %g1
	srax	%o0, 24, %g2
	srax	%o0, 16, %g3
	stb	%g2, [%g1+4]
	ldx	[%i0+16], %g1
	ba,pt	%xcc, L(L38)
	 stb	%g3, [%g1+5]
L(L188:)
	srax	%o0, 56, %g1
	ldx	[%i0+16], %g2
	stb	%g1, [%g2]
	ldx	[%i0+16], %g1
	srax	%o0, 48, %g3
	stb	%g3, [%g1+1]
	ldx	[%i0+16], %g1
	srax	%o0, 40, %g2
	stb	%g2, [%g1+2]
	ldx	[%i0+16], %g1
	srax	%o0, 32, %g3
	srax	%o0, 24, %g2
	stb	%g3, [%g1+3]
	ldx	[%i0+16], %g1
	ba,pt	%xcc, L(L38)
	 stb	%g2, [%g1+4]
L(L187:)
	srax	%o0, 56, %g1
	ldx	[%i0+16], %g2
	stb	%g1, [%g2]
	ldx	[%i0+16], %g1
	srax	%o0, 48, %g3
	stb	%g3, [%g1+1]
	ldx	[%i0+16], %g1
	srax	%o0, 40, %g2
	srax	%o0, 32, %g3
	stb	%g2, [%g1+2]
	ldx	[%i0+16], %g1
	ba,pt	%xcc, L(L38)
	 stb	%g3, [%g1+3]
L(L186:)
	srax	%o0, 56, %g1
	ldx	[%i0+16], %g2
	stb	%g1, [%g2]
	ldx	[%i0+16], %g1
	srax	%o0, 48, %g3
	srax	%o0, 40, %g2
	stb	%g3, [%g1+1]
	ldx	[%i0+16], %g1
	ba,pt	%xcc, L(L38)
	 stb	%g2, [%g1+2]
L(L185:)
	ldx	[%i0+16], %g2
	srax	%o0, 56, %g1
	stb	%g1, [%g2]
	srax	%o0, 48, %g3
	ldx	[%i0+16], %g1
	ba,pt	%xcc, L(L38)
	 stb	%g3, [%g1+1]
L(L184:)
	ldx	[%i0+16], %g2
	srax	%o0, 56, %g1
	ba,pt	%xcc, L(L38)
	 stb	%g1, [%g2]
	FUNEND(__builtin_avcall)
#if defined __linux__ || defined __FreeBSD__ || defined __FreeBSD_kernel__ || defined __DragonFly__
	.section .note.GNU-stack,"",@progbits
#endif
