	.file	"vacall-powerpc.c"
	.section	".text"
	.align 2
	.type	__vacall_r, @function
__vacall_r:
	.extern __mulh
	.extern __mull
	.extern __divss
	.extern __divus
	.extern __quoss
	.extern __quous
	stwu 1,-224(1)
	mflr 0
	stw 31,220(1)
	mr 31,1
	stw 0,228(1)
	addi 0,31,160
	stw 29,212(1)
	li 29,0
	stw 0,20(31)
	addi 0,31,56
	stw 29,24(31)
	stw 0,48(31)
	lwz 0,0(11)
	stw 9,184(31)
	addi 9,31,232
	stw 3,160(31)
	mtctr 0
	stw 4,164(31)
	addi 4,31,16
	stw 9,192(31)
	stw 30,216(1)
	stw 5,168(31)
	stw 6,172(31)
	stw 7,176(31)
	stw 8,180(31)
	stw 10,188(31)
	stw 29,28(31)
	stfd 1,56(31)
	stfd 2,64(31)
	stfd 3,72(31)
	stfd 4,80(31)
	stfd 5,88(31)
	stfd 6,96(31)
	stfd 7,104(31)
	stfd 8,112(31)
	stw 29,16(31)
	stw 29,196(31)
	lwz 3,4(11)
	bctrl
	lwz 9,28(31)
	cmpwi 0,9,0
	beq- 0,.L1
	cmpwi 0,9,1
	beq- 0,.L43
	cmpwi 0,9,2
	beq- 0,.L44
	cmpwi 0,9,3
	beq- 0,.L43
	cmpwi 0,9,4
	beq- 0,.L45
	cmpwi 0,9,5
	beq- 0,.L46
	cmpwi 0,9,6
	beq- 0,.L42
	cmpwi 0,9,7
	beq- 0,.L42
	cmpwi 0,9,8
	beq- 0,.L42
	cmpwi 0,9,9
	beq- 0,.L42
	addi 0,9,-10
	cmplwi 0,0,1
	bgt- 0,.L22
	lwz 3,40(31)
	lwz 4,44(31)
.L1:
	lwz 11,0(1)
	lwz 0,4(11)
	lwz 29,-12(11)
	lwz 30,-8(11)
	mtlr 0
	lwz 31,-4(11)
	mr 1,11
	blr
.L22:
	cmpwi 0,9,12
	beq- 0,.L47
	cmpwi 0,9,13
	beq- 0,.L48
	cmpwi 0,9,14
	beq- 0,.L42
	cmpwi 0,9,15
	bne+ 0,.L1
	lwz 0,16(31)
	andi. 9,0,1
	beq- 0,.L31
	lwz 3,24(31)
	b .L1
.L31:
	andi. 9,0,1024
	beq- 0,.L1
	lwz 0,32(31)
	cmpwi 0,0,1
	beq- 0,.L49
	cmpwi 0,0,2
	beq- 0,.L50
	cmpwi 0,0,4
	beq- 0,.L51
	cmpwi 0,0,8
	bne+ 0,.L1
	lwz 9,24(31)
	lwz 4,4(9)
.L41:
	lwz 3,0(9)
	b .L1
.L51:
	lwz 9,24(31)
	b .L41
.L50:
	lwz 9,24(31)
	lhz 3,0(9)
	b .L1
.L49:
	lwz 9,24(31)
	lbz 3,0(9)
	b .L1
.L42:
	lwz 3,40(31)
	b .L1
.L48:
	lfd 1,40(31)
	b .L1
.L47:
	lfs 1,40(31)
	b .L1
.L46:
	lhz 3,40(31)
	b .L1
.L45:
	lha 3,40(31)
	b .L1
.L43:
	lbz 3,40(31)
	b .L1
.L44:
	lbz 0,40(31)
	slwi 0,0,24
	srawi 3,0,24
	b .L1
	.size	__vacall_r, .-__vacall_r
	.section	".got2","aw"
.LCTOC1 = .+32768
	.section	".text"
	.section	".got2","aw"
.LC0:
	.long __vacall_r
	.section	".text"
	.align 2
	.globl get__vacall_r
.LCL1:
	.long .LCTOC1-.LCF1
	.type	get__vacall_r, @function
get__vacall_r:
	stwu 1,-32(1)
	mflr 0
	bcl 20,31,.LCF1
.LCF1:
	stw 30,24(1)
	mflr 30
	stw 31,28(1)
	mr 31,1
	stw 0,36(1)
	lwz 11,0(1)
	lwz 0,.LCL1-.LCF1(30)
	lwz 31,-4(11)
	add 30,0,30
	lwz 0,4(11)
	lwz 3,.LC0-.LCTOC1(30)
	lwz 30,-8(11)
	mtlr 0
	mr 1,11
	blr
	.size	get__vacall_r, .-get__vacall_r
#if defined __linux__ || defined __FreeBSD__ || defined __FreeBSD_kernel__ || defined __DragonFly__
	.section .note.GNU-stack,"",@progbits
#endif
