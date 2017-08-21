	.file	"avcall-powerpc.c"
	.toc
	.csect .text[PR]
	.align 2
	.globl __builtin_avcall
	.globl .__builtin_avcall
	.csect __builtin_avcall[DS]
__builtin_avcall:
	.long .__builtin_avcall, TOC[tc0], 0
	.csect .text[PR]
.__builtin_avcall:
	.extern __mulh
	.extern __mull
	.extern __divss
	.extern __divus
	.extern __quoss
	.extern __quous
	mflr 0
	stw 30,-8(1)
	stw 31,-4(1)
	stw 0,8(1)
	stw 29,-12(1)
	stwu 1,-1096(1)
	lwz 9,20(3)
	mr 30,3
	subfc 9,30,9
	addi 9,9,-32
	li 3,8
	srawi 9,9,2
	cmpw 0,3,9
	mr 31,1
	addi 10,1,56
	bge- 0,L..102
	addi 9,9,-8
	mtctr 9
L..106:
	slwi 9,3,2
	add 11,9,30
	lwz 0,32(11)
	add 9,9,10
	stw 0,-32(9)
	addi 3,3,1
	bdnz L..106
L..102:
	lwz 9,1056(30)
	subfc 9,30,9
	addi 9,9,-1060
	srawi. 9,9,3
	beq- 0,L..8
	cmpwi 0,9,1
	beq- 0,L..11
	cmpwi 0,9,2
	beq- 0,L..14
	cmpwi 0,9,3
	beq- 0,L..17
	cmpwi 0,9,4
	beq- 0,L..20
	cmpwi 0,9,5
	beq- 0,L..23
	cmpwi 0,9,6
	beq- 0,L..26
	cmpwi 0,9,7
	beq- 0,L..29
	cmpwi 0,9,8
	beq- 0,L..32
	cmpwi 0,9,9
	beq- 0,L..35
	cmpwi 0,9,10
	beq- 0,L..38
	cmpwi 0,9,11
	beq- 0,L..41
	cmpwi 0,9,12
	beq- 0,L..44
L..47:
	lfd 13,1156(30)
L..44:
	lfd 12,1148(30)
L..41:
	lfd 11,1140(30)
L..38:
	lfd 10,1132(30)
L..35:
	lfd 9,1124(30)
L..32:
	lfd 8,1116(30)
L..29:
	lfd 7,1108(30)
L..26:
	lfd 6,1100(30)
L..23:
	lfd 5,1092(30)
L..20:
	lfd 4,1084(30)
L..17:
	lfd 3,1076(30)
L..14:
	lfd 2,1068(30)
L..11:
	lfd 1,1060(30)
L..8:
	lwz 29,0(30)
	lwz 9,56(30)
	lwz 0,0(29)
	lwz 3,32(30)
	lwz 4,36(30)
	mtctr 0
	lwz 5,40(30)
	lwz 6,44(30)
	lwz 7,48(30)
	lwz 8,52(30)
	lwz 10,60(30)
	stw 2,20(1)
	lwz 11,8(29)
	lwz 2,4(29)
	bctrl
	lwz 2,20(1)
	lwz 9,12(30)
	cmpwi 0,9,1
	beq- 0,L..49
	cmpwi 0,9,0
	beq- 0,L..116
	cmpwi 0,9,2
	beq- 0,L..109
	cmpwi 0,9,3
	beq- 0,L..109
	cmpwi 0,9,4
	beq- 0,L..109
	cmpwi 0,9,5
	beq- 0,L..108
	cmpwi 0,9,6
	beq- 0,L..108
	cmpwi 0,9,7
	beq- 0,L..116
	cmpwi 0,9,8
	beq- 0,L..116
	cmpwi 0,9,9
	beq- 0,L..116
	cmpwi 0,9,10
	beq- 0,L..116
	addi 0,9,-11
	cmplwi 0,0,1
	ble- 0,L..115
	cmpwi 0,9,13
	beq- 0,L..117
	cmpwi 0,9,14
	beq- 0,L..118
	cmpwi 0,9,15
	beq- 0,L..116
	cmpwi 0,9,16
	beq- 0,L..119
L..49:
	lwz 1,0(1)
	li 3,0
	lwz 0,8(1)
	lwz 29,-12(1)
	mtlr 0
	lwz 30,-8(1)
	lwz 31,-4(1)
	blr
L..119:
	lwz 0,4(30)
	andi. 9,0,1
	beq- 0,L..79
	lwz 9,16(30)
	cmpwi 0,9,1
	beq- 0,L..120
	cmpwi 0,9,2
	beq- 0,L..121
	cmpwi 0,9,4
	beq- 0,L..122
	cmpwi 0,9,8
	beq- 0,L..123
	addi 0,9,3
	srwi 11,0,2
	addic. 11,11,-1
	blt- 0,L..49
	addi 0,11,1
	mtctr 0
	lwz 29,8(30)
L..105:
	slwi 9,11,2
	lwzx 0,9,3
	addi 11,11,-1
	stwx 0,9,29
	bdnz L..105
	b L..49
L..123:
	lwz 9,8(30)
	lwz 0,0(3)
	stw 0,0(9)
	lwz 11,4(3)
	stw 11,4(9)
	b L..49
L..122:
	lwz 9,8(30)
	lwz 0,0(3)
	stw 0,0(9)
	b L..49
L..121:
	lwz 9,8(30)
	lhz 0,0(3)
	sth 0,0(9)
	b L..49
L..120:
	lwz 9,8(30)
	lbz 0,0(3)
	stb 0,0(9)
	b L..49
L..79:
	andi. 9,0,512
	beq- 0,L..49
	lwz 0,16(30)
	cmpwi 0,0,1
	beq- 0,L..109
	cmpwi 0,0,2
	beq- 0,L..108
	cmpwi 0,0,4
	beq- 0,L..116
	cmpwi 0,0,8
	bne+ 0,L..49
L..115:
	lwz 9,8(30)
	stw 4,4(9)
L..107:
	stw 3,0(9)
	b L..49
L..116:
	lwz 9,8(30)
	b L..107
L..108:
	lwz 9,8(30)
	sth 3,0(9)
	b L..49
L..109:
	lwz 9,8(30)
	stb 3,0(9)
	b L..49
L..118:
	lwz 9,8(30)
	stfd 1,0(9)
	b L..49
L..117:
	lwz 9,8(30)
	frsp 0,1
	stfs 0,0(9)
	b L..49
LT..__builtin_avcall:
	.long 0
	.byte 0,0,32,97,128,3,1,0
	.long 0
	.long LT..__builtin_avcall-.__builtin_avcall
	.short 16
	.byte "__builtin_avcall"
	.byte 31
	.align 2
_section_.text:
	.csect .data[RW],3
	.long _section_.text
