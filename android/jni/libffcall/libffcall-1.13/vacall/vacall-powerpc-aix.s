	.file	"vacall-powerpc.c"
	.toc
	.csect .text[PR]
	.toc
LC..0:
	.tc vacall_function[TC],vacall_function[RW]
	.csect .text[PR]
	.align 2
	.globl __vacall
	.globl .__vacall
	.csect __vacall[DS]
__vacall:
	.long .__vacall, TOC[tc0], 0
	.csect .text[PR]
.__vacall:
	.extern __mulh
	.extern __mull
	.extern __divss
	.extern __divus
	.extern __quoss
	.extern __quous
	mflr 0
	stw 0,8(1)
	stw 29,-12(1)
	stw 31,-4(1)
	stwu 1,-216(1)
	mr 31,1
	lwz 11,LC..0(2)
	addi 0,31,240
	lwz 29,0(11)
	stw 0,60(31)
	li 11,0
	addi 0,31,92
	stw 9,264(31)
	stw 3,240(31)
	stw 5,248(31)
	stw 6,252(31)
	stw 7,256(31)
	stw 8,260(31)
	stw 10,268(31)
	stw 11,68(31)
	stw 4,244(31)
	stfd 1,92(31)
	stfd 2,100(31)
	stfd 3,108(31)
	stfd 4,116(31)
	stfd 5,124(31)
	stfd 6,132(31)
	stfd 7,140(31)
	stfd 8,148(31)
	stfd 9,156(31)
	stfd 10,164(31)
	stfd 11,172(31)
	stfd 12,180(31)
	stfd 13,188(31)
	stw 11,56(31)
	stw 11,64(31)
	stw 0,88(31)
	lwz 0,0(29)
	addi 3,31,56
	stw 2,20(1)
	mtctr 0
	lwz 11,8(29)
	lwz 2,4(29)
	bctrl
	lwz 2,20(1)
	lwz 9,68(31)
	cmpwi 0,9,0
	beq- 0,L..1
	cmpwi 0,9,1
	beq- 0,L..43
	cmpwi 0,9,2
	beq- 0,L..44
	cmpwi 0,9,3
	beq- 0,L..43
	cmpwi 0,9,4
	beq- 0,L..45
	cmpwi 0,9,5
	beq- 0,L..46
	cmpwi 0,9,6
	beq- 0,L..42
	cmpwi 0,9,7
	beq- 0,L..42
	cmpwi 0,9,8
	beq- 0,L..42
	cmpwi 0,9,9
	beq- 0,L..42
	addi 0,9,-10
	cmplwi 0,0,1
	bgt- 0,L..22
	lwz 3,80(31)
	lwz 4,84(31)
L..1:
	lwz 1,0(1)
	lwz 0,8(1)
	lwz 29,-12(1)
	mtlr 0
	lwz 31,-4(1)
	blr
L..22:
	cmpwi 0,9,12
	beq- 0,L..47
	cmpwi 0,9,13
	beq- 0,L..48
	cmpwi 0,9,14
	beq- 0,L..42
	cmpwi 0,9,15
	bne+ 0,L..1
	lwz 0,56(31)
	andi. 9,0,1
	beq- 0,L..31
	lwz 3,64(31)
	b L..1
L..31:
	andi. 9,0,1024
	beq- 0,L..1
	lwz 0,72(31)
	cmpwi 0,0,1
	beq- 0,L..49
	cmpwi 0,0,2
	beq- 0,L..50
	cmpwi 0,0,4
	beq- 0,L..51
	cmpwi 0,0,8
	bne+ 0,L..1
	lwz 9,64(31)
	lwz 4,4(9)
L..41:
	lwz 3,0(9)
	b L..1
L..51:
	lwz 9,64(31)
	b L..41
L..50:
	lwz 9,64(31)
	lhz 3,0(9)
	b L..1
L..49:
	lwz 9,64(31)
	lbz 3,0(9)
	b L..1
L..42:
	lwz 3,80(31)
	b L..1
L..48:
	lfd 1,80(31)
	b L..1
L..47:
	lfs 1,80(31)
	b L..1
L..46:
	lhz 3,80(31)
	b L..1
L..45:
	lha 3,80(31)
	b L..1
L..43:
	lbz 3,80(31)
	b L..1
L..44:
	lbz 0,80(31)
	slwi 0,0,24
	srawi 3,0,24
	b L..1
LT..__vacall:
	.long 0
	.byte 0,0,32,97,128,3,8,0
	.long 0
	.long LT..__vacall-.__vacall
	.short 8
	.byte "__vacall"
	.byte 31
	.align 2
_section_.text:
	.csect .data[RW],3
	.long _section_.text
	.extern vacall_function[RW]
