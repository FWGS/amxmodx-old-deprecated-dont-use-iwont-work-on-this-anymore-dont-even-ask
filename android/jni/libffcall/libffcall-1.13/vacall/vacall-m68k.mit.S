#include "asm-m68k.h"
	.text
	.even
	.globl C(__vacall)
	DECLARE_FUNCTION(__vacall)
FUNBEGIN(__vacall)
	link $a6,#-32
	moveml #0x3830,$sp@-
	clrl $a6@(-32)
	lea $a6@(8),$a2
	movel $a2,$a6@(-28)
	clrl $a6@(-24)
	clrl $a6@(-20)
	movel $a1,$a6@(-4)
	pea $a6@(-32)
	movel C(vacall_function),$a2
	jbsr $a2@
	addql #4,$sp
	movel $a6@(-20),$a3
	tstl $a3
	jeq L(1)
	moveq #1,$d2
	cmpl $a3,$d2
	jeq L(50)
	moveq #2,$d4
	cmpl $a3,$d4
	jeq L(50)
	moveq #3,$d2
	cmpl $a3,$d2
	jeq L(51)
	moveq #4,$d4
	cmpl $a3,$d4
	jeq L(52)
	moveq #5,$d2
	cmpl $a3,$d2
	jeq L(53)
	moveq #6,$d4
	cmpl $a3,$d4
	jeq L(49)
	moveq #7,$d2
	cmpl $a3,$d2
	jeq L(49)
	moveq #8,$d4
	cmpl $a3,$d4
	jeq L(49)
	moveq #9,$d2
	cmpl $a3,$d2
	jeq L(49)
	lea $a3@(-10),$a2
	moveq #1,$d4
	cmpl $a2,$d4
	jcs L(22)
	movel $a6@(-12),$d0
	movel $a6@(-8),$d1
	jra L(1)
	.even
L(22:)
	moveq #12,$d2
	cmpl $a3,$d2
	jeq L(54)
	moveq #13,$d2
	cmpl $a3,$d2
	jeq L(55)
	moveq #14,$d4
	cmpl $a3,$d4
	jeq L(56)
	moveq #15,$d2
	cmpl $a3,$d2
	jne L(1)
	movel $a6@(-32),$d3
	btst #10,$d3
	jeq L(37)
	movel $a6@(-16),$d2
	moveq #1,$d4
	cmpl $d2,$d4
	jeq L(57)
	moveq #2,$d4
	cmpl $d2,$d4
	jeq L(58)
	moveq #4,$d4
	cmpl $d2,$d4
	jeq L(59)
	moveq #8,$d4
	cmpl $d2,$d4
	jeq L(60)
L(37:)
	btst #0,$d3
	jeq L(1)
	movel $a6@(-24),$d0
L(48:)
	movel $d0,$a0
	jra L(1)
	.even
L(60:)
	movel $a6@(-24),$a2
	movel $a2@,$d0
	movel $a2@(4),$d1
	jra L(1)
	.even
L(59:)
	movel $a6@(-24),$a2
	movel $a2@,$d0
	jra L(1)
	.even
L(58:)
	movel $a6@(-24),$a2
	clrl $d0
	movew $a2@,$d0
	jra L(1)
	.even
L(57:)
	movel $a6@(-24),$a2
	clrl $d0
	moveb $a2@,$d0
	jra L(1)
	.even
L(56:)
	movel $a6@(-12),$d0
	jra L(48)
	.even
L(55:)
	btst #6,$a6@(-29)
	jeq L(31)
	fmoved $a6@(-12),$fp0
	jra L(1)
	.even
L(31:)
	movel $a6@(-12),$d0
	movel $a6@(-8),$d1
	jra L(1)
	.even
L(54:)
	movel $a6@(-32),$d2
	btst #6,$d2
	jeq L(25)
	fmoves $a6@(-12),$fp0
	jra L(1)
	.even
L(25:)
	btst #5,$d2
	jeq L(27)
	fmoves $a6@(-12),$fp1
	fmoved $fp1,$sp@-
	movel $sp@+,$d0
	movel $sp@+,$d1
	jra L(1)
	.even
L(27:)
	movel $a6@(-12),$d0
	jra L(1)
	.even
L(49:)
	movel $a6@(-12),$d0
	jra L(1)
	.even
L(53:)
	clrl $d0
	movew $a6@(-12),$d0
	jra L(1)
	.even
L(52:)
	movew $a6@(-12),$d0
	extl $d0
	jra L(1)
	.even
L(51:)
	clrl $d0
	moveb $a6@(-12),$d0
	jra L(1)
	.even
L(50:)
	moveb $a6@(-12),$d0
	extbl $d0
L(39:)
L(1:)
	moveml $a6@(-52),#0xc1c
	unlk $a6
	rts
FUNEND(__vacall)
#if defined __linux__ || defined __FreeBSD__ || defined __FreeBSD_kernel__ || defined __DragonFly__
	.section .note.GNU-stack,"",@progbits
#endif
