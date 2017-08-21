	.file	"avcall-powerpc.c"
	.section	".text"
	.align 2
	.globl __builtin_avcall
	.type	__builtin_avcall, @function
__builtin_avcall:
	.extern __mulh
	.extern __mull
	.extern __divss
	.extern __divus
	.extern __quoss
	.extern __quous
	stwu 1,-1056(1)
	mflr 0
	stw 0,1060(1)
	addi 7,1,8
	stw 30,1048(1)
	mr 30,3
	lwz 8,1064(3)
	lwz 9,20(3)
	subfc 11,3,8
	stw 31,1052(1)
	subfc 9,3,9
	addi 11,11,-1072
	addi 9,9,-40
	srawi 0,11,3
	srawi 10,9,2
	subfic 3,0,8
	cmpw 0,3,10
	mr 31,1
	bge- 0,.L102
	slwi 0,0,2
	slwi 9,3,2
	add 0,0,7
	subfc 10,3,10
	add 11,9,30
	mtctr 10
	add 9,9,0
	addi 11,11,40
	addi 9,9,-32
.L106:
	lwz 0,0(11)
	addi 11,11,4
	stw 0,0(9)
	addi 9,9,4
	bdnz .L106
.L102:
	subfc 9,30,8
	addi 9,9,-1072
	srawi. 9,9,3
	beq- 0,.L8
	cmpwi 0,9,1
	beq- 0,.L11
	cmpwi 0,9,2
	beq- 0,.L14
	cmpwi 0,9,3
	beq- 0,.L17
	cmpwi 0,9,4
	beq- 0,.L20
	cmpwi 0,9,5
	beq- 0,.L23
	cmpwi 0,9,6
	beq- 0,.L26
	cmpwi 0,9,7
	beq- 0,.L29
	cmpwi 0,9,8
	beq- 0,.L32
	cmpwi 0,9,9
	beq- 0,.L35
	cmpwi 0,9,10
	beq- 0,.L38
	cmpwi 0,9,11
	beq- 0,.L41
	cmpwi 0,9,12
	beq- 0,.L44
.L47:
	lfd 13,1168(30)
.L44:
	lfd 12,1160(30)
.L41:
	lfd 11,1152(30)
.L38:
	lfd 10,1144(30)
.L35:
	lfd 9,1136(30)
.L32:
	lfd 8,1128(30)
.L29:
	lfd 7,1120(30)
.L26:
	lfd 6,1112(30)
.L23:
	lfd 5,1104(30)
.L20:
	lfd 4,1096(30)
.L17:
	lfd 3,1088(30)
.L14:
	lfd 2,1080(30)
.L11:
	lfd 1,1072(30)
.L8:
	lwz 0,0(30)
	lwz 9,64(30)
	lwz 3,40(30)
	mtctr 0
	lwz 4,44(30)
	lwz 5,48(30)
	lwz 6,52(30)
	lwz 7,56(30)
	lwz 8,60(30)
	lwz 10,68(30)
	crxor 6,6,6
	bctrl
	lwz 9,12(30)
	cmpwi 0,9,1
	beq- 0,.L49
	cmpwi 0,9,0
	beq- 0,.L116
	cmpwi 0,9,2
	beq- 0,.L109
	cmpwi 0,9,3
	beq- 0,.L109
	cmpwi 0,9,4
	beq- 0,.L109
	cmpwi 0,9,5
	beq- 0,.L108
	cmpwi 0,9,6
	beq- 0,.L108
	cmpwi 0,9,7
	beq- 0,.L116
	cmpwi 0,9,8
	beq- 0,.L116
	cmpwi 0,9,9
	beq- 0,.L116
	cmpwi 0,9,10
	beq- 0,.L116
	addi 0,9,-11
	cmplwi 0,0,1
	ble- 0,.L115
	cmpwi 0,9,13
	beq- 0,.L117
	cmpwi 0,9,14
	beq- 0,.L118
	cmpwi 0,9,15
	beq- 0,.L116
	cmpwi 0,9,16
	beq- 0,.L119
.L49:
	lwz 11,0(1)
	li 3,0
	lwz 0,4(11)
	lwz 30,-8(11)
	lwz 31,-4(11)
	mtlr 0
	mr 1,11
	blr
.L119:
	lwz 0,4(30)
	andi. 9,0,1
	beq- 0,.L79
	lwz 9,16(30)
	cmpwi 0,9,1
	beq- 0,.L120
	cmpwi 0,9,2
	beq- 0,.L121
	cmpwi 0,9,4
	beq- 0,.L122
	cmpwi 0,9,8
	beq- 0,.L123
	addi 0,9,3
	srwi 11,0,2
	addic. 11,11,-1
	blt- 0,.L49
	addi 0,11,1
	lwz 10,8(30)
	mtctr 0
.L105:
	slwi 9,11,2
	addi 11,11,-1
	lwzx 0,9,3
	stwx 0,9,10
	bdnz .L105
	b .L49
.L123:
	lwz 9,8(30)
	lwz 0,0(3)
	stw 0,0(9)
	lwz 11,4(3)
	stw 11,4(9)
	b .L49
.L122:
	lwz 9,8(30)
	lwz 0,0(3)
	stw 0,0(9)
	b .L49
.L121:
	lwz 9,8(30)
	lhz 0,0(3)
	sth 0,0(9)
	b .L49
.L120:
	lwz 9,8(30)
	lbz 0,0(3)
	stb 0,0(9)
	b .L49
.L79:
	andi. 9,0,512
	beq- 0,.L49
	lwz 0,16(30)
	cmpwi 0,0,1
	beq- 0,.L109
	cmpwi 0,0,2
	beq- 0,.L108
	cmpwi 0,0,4
	beq- 0,.L116
	cmpwi 0,0,8
	bne+ 0,.L49
.L115:
	lwz 9,8(30)
	stw 4,4(9)
.L107:
	stw 3,0(9)
	b .L49
.L116:
	lwz 9,8(30)
	b .L107
.L108:
	lwz 9,8(30)
	sth 3,0(9)
	b .L49
.L109:
	lwz 9,8(30)
	stb 3,0(9)
	b .L49
.L118:
	lwz 9,8(30)
	stfd 1,0(9)
	b .L49
.L117:
	frsp 0,1
	lwz 9,8(30)
	stfs 0,0(9)
	b .L49
	.size	__builtin_avcall, .-__builtin_avcall
	.section	.note.GNU-stack,"",@progbits
	.ident	"GCC: (GNU) 3.3.6"
