	.file	"avcall-powerpc64.c"
	.machine power4
	.section	".toc","aw"
	.section	".text"
	.align 2
	.p2align 4,,15
	.globl __builtin_avcall
	.section	".opd","aw"
	.align 3
__builtin_avcall:
	.quad	.L.__builtin_avcall,.TOC.@tocbase,0
	.previous
	.type	__builtin_avcall, @function
.L.__builtin_avcall:
	mflr 0
	std 30,-16(1)
	std 31,-8(1)
	mr 30,3
	std 0,16(1)
	stdu 1,-128(1)
	ld 9,0(1)
	ld 10,40(3)
	mr 31,1
	stdu 9,-2064(1)
	addi 9,3,48
	subf 9,9,10
	sradi 9,9,3
	cmpwi 7,9,8
	ble- 7,.L6
	addi 7,9,-9
	addi 10,1,112
	addi 9,3,104
	rldicl 7,7,0,32
	addi 10,10,-8
	addi 7,7,14
	sldi 7,7,3
	add 7,3,7
	.p2align 4,,15
.L5:
	ldu 8,8(9)
	cmpld 7,9,7
	stdu 8,8(10)
	bne+ 7,.L5
.L6:
	ld 10,2096(30)
	addi 9,30,2104
	subf 9,9,10
	sradi 9,9,3
	extsw 9,9
	cmpwi 7,9,0
	ble 7,.L4
	cmpwi 7,9,1
	beq 7,.L7
	cmpwi 7,9,2
	beq 7,.L8
	cmpwi 7,9,3
	beq 7,.L9
	cmpwi 7,9,4
	beq 7,.L10
	cmpwi 7,9,5
	beq 7,.L11
	cmpwi 7,9,6
	beq 7,.L12
	cmpwi 7,9,7
	beq 7,.L13
	cmpwi 7,9,8
	beq 7,.L14
	cmpwi 7,9,9
	beq 7,.L15
	cmpwi 7,9,10
	beq 7,.L16
	cmpwi 7,9,11
	beq 7,.L17
	cmpwi 7,9,12
	beq 7,.L18
	lfd 13,2200(30)
.L18:
	lfd 12,2192(30)
.L17:
	lfd 11,2184(30)
.L16:
	lfd 10,2176(30)
.L15:
	lfd 9,2168(30)
.L14:
	lfd 8,2160(30)
.L13:
	lfd 7,2152(30)
.L12:
	lfd 6,2144(30)
.L11:
	lfd 5,2136(30)
.L10:
	lfd 4,2128(30)
.L9:
	lfd 3,2120(30)
.L8:
	lfd 2,2112(30)
.L7:
	lfd 1,2104(30)
.L4:
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
	beq 7,.L19
	cmpdi 7,9,0
	beq 7,.L36
	cmplwi 7,9,2
	beq 7,.L38
	cmplwi 7,9,3
	beq 7,.L38
	cmplwi 7,9,4
	beq 7,.L38
	cmplwi 7,9,5
	beq 7,.L39
	cmplwi 7,9,6
	beq 7,.L39
	cmplwi 7,9,7
	beq 7,.L40
	cmplwi 7,9,8
	beq 7,.L40
	cmplwi 7,9,9
	beq 7,.L36
	cmplwi 7,9,10
	beq 7,.L36
	cmplwi 7,9,11
	beq 7,.L36
	cmplwi 7,9,12
	beq 7,.L36
	cmplwi 7,9,13
	beq 7,.L42
	cmplwi 7,9,14
	beq 7,.L43
	cmplwi 7,9,15
	beq 7,.L36
.L19:
	addi 1,31,128
	li 3,0
	ld 0,16(1)
	ld 30,-16(1)
	ld 31,-8(1)
	mtlr 0
	blr
.L36:
	ld 9,16(30)
	std 3,0(9)
	addi 1,31,128
	li 3,0
	ld 0,16(1)
	ld 30,-16(1)
	ld 31,-8(1)
	mtlr 0
	blr
.L38:
	ld 9,16(30)
	stb 3,0(9)
	addi 1,31,128
	li 3,0
	ld 0,16(1)
	ld 30,-16(1)
	ld 31,-8(1)
	mtlr 0
	blr
.L39:
	ld 9,16(30)
	sth 3,0(9)
	b .L19
.L40:
	ld 9,16(30)
	stw 3,0(9)
	b .L19
.L43:
	ld 9,16(30)
	stfd 1,0(9)
	b .L19
.L42:
	ld 9,16(30)
	stfs 1,0(9)
	b .L19
	.long 0
	.byte 0,0,0,1,128,2,0,0
	.size	__builtin_avcall,.-.L.__builtin_avcall
#if defined __linux__ || defined __FreeBSD__ || defined __FreeBSD_kernel__ || defined __DragonFly__
	.section .note.GNU-stack,"",@progbits
#endif
