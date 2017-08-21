	.file	"avcall-powerpc64.c"
	.csect .text[PR]
	.toc
	.csect .text[PR]
	.align 2
	.align 4
	.globl __builtin_avcall
	.globl .__builtin_avcall
	.csect __builtin_avcall[DS],3
__builtin_avcall:
	.llong .__builtin_avcall, TOC[tc0], 0
	.csect .text[PR]
.__builtin_avcall:
	mflr 0
	std 30,-16(1)
	std 31,-8(1)
	mr 30,3
	std 0,16(1)
	stdu 1,-128(1)
	ld 10,40(3)
	ld 9,0(1)
	mr 31,1
	stdu 9,-2064(1)
	addi 9,3,48
	subf 9,9,10
	sradi 9,9,3
	cmpwi 7,9,8
	ble- 7,L..6
	addi 7,9,-9
	addi 10,1,112
	rldicl 7,7,0,32
	addi 9,3,104
	addi 7,7,14
	addi 10,10,-8
	sldi 7,7,3
	add 7,3,7
	.align 4
L..5:
	ldu 8,8(9)
	stdu 8,8(10)
	cmpld 7,9,7
	bne+ 7,L..5
L..6:
	ld 10,2096(30)
	addi 9,30,2104
	subf 9,9,10
	sradi 9,9,3
	extsw 9,9
	cmpwi 7,9,0
	ble 7,L..4
	cmpwi 7,9,1
	beq 7,L..7
	cmpwi 7,9,2
	beq 7,L..8
	cmpwi 7,9,3
	beq 7,L..9
	cmpwi 7,9,4
	beq 7,L..10
	cmpwi 7,9,5
	beq 7,L..11
	cmpwi 7,9,6
	beq 7,L..12
	cmpwi 7,9,7
	beq 7,L..13
	cmpwi 7,9,8
	beq 7,L..14
	cmpwi 7,9,9
	beq 7,L..15
	cmpwi 7,9,10
	beq 7,L..16
	cmpwi 7,9,11
	beq 7,L..17
	cmpwi 7,9,12
	beq 7,L..18
	lfd 13,2200(30)
L..18:
	lfd 12,2192(30)
L..17:
	lfd 11,2184(30)
L..16:
	lfd 10,2176(30)
L..15:
	lfd 9,2168(30)
L..14:
	lfd 8,2160(30)
L..13:
	lfd 7,2152(30)
L..12:
	lfd 6,2144(30)
L..11:
	lfd 5,2136(30)
L..10:
	lfd 4,2128(30)
L..9:
	lfd 3,2120(30)
L..8:
	lfd 2,2112(30)
L..7:
	lfd 1,2104(30)
L..4:
	std 2,40(1)
	ld 12,0(30)
	ld 9,96(30)
	ld 10,104(30)
	ld 8,88(30)
	ld 7,80(30)
	ld 6,72(30)
	ld 5,64(30)
	ld 4,56(30)
	ld 3,48(30)
	ld 0,0(12)
	ld 11,16(12)
	mtctr 0
	ld 2,8(12)
	bctrl
	ld 2,40(1)
	lwz 9,24(30)
	cmplwi 7,9,1
	beq 7,L..19
	cmpdi 7,9,0
	beq 7,L..36
	cmplwi 7,9,2
	beq 7,L..38
	cmplwi 7,9,3
	beq 7,L..38
	cmplwi 7,9,4
	beq 7,L..38
	cmplwi 7,9,5
	beq 7,L..39
	cmplwi 7,9,6
	beq 7,L..39
	cmplwi 7,9,7
	beq 7,L..40
	cmplwi 7,9,8
	beq 7,L..40
	cmplwi 7,9,9
	beq 7,L..36
	cmplwi 7,9,10
	beq 7,L..36
	cmplwi 7,9,11
	beq 7,L..36
	cmplwi 7,9,12
	beq 7,L..36
	cmplwi 7,9,13
	beq 7,L..42
	cmplwi 7,9,14
	beq 7,L..43
	cmplwi 7,9,15
	beq 7,L..36
L..19:
	addi 1,31,128
	ld 0,16(1)
	ld 30,-16(1)
	li 3,0
	ld 31,-8(1)
	mtlr 0
	blr
L..36:
	ld 9,16(30)
	std 3,0(9)
	addi 1,31,128
	li 3,0
	ld 0,16(1)
	ld 30,-16(1)
	ld 31,-8(1)
	mtlr 0
	blr
L..38:
	ld 9,16(30)
	stb 3,0(9)
	addi 1,31,128
	li 3,0
	ld 0,16(1)
	ld 30,-16(1)
	ld 31,-8(1)
	mtlr 0
	blr
L..39:
	ld 9,16(30)
	sth 3,0(9)
	b L..19
L..40:
	ld 9,16(30)
	stw 3,0(9)
	b L..19
L..43:
	ld 9,16(30)
	stfd 1,0(9)
	b L..19
L..42:
	ld 9,16(30)
	stfs 1,0(9)
	b L..19
LT..__builtin_avcall:
	.long 0
	.byte 0,0,32,97,128,2,1,0
	.long 0
	.long LT..__builtin_avcall-.__builtin_avcall
	.short 16
	.byte "__builtin_avcall"
	.byte 31
	.align 2
_section_.text:
	.csect .data[RW],4
	.llong _section_.text
