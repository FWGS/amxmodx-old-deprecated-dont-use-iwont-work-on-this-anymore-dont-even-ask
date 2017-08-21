#NO_APP
	.text
	.even
	.globl	___vacall
___vacall:
	link a6,#-32
	moveml #0x3830,sp@-
	clrl a6@(-32)
	lea a6@(8),a2
	movel a2,a6@(-28)
	clrl a6@(-24)
	clrl a6@(-20)
	movel a1,a6@(-4)
	pea a6@(-32)
	movel _vacall_function,a2
	jbsr a2@
	addql #4,sp
	movel a6@(-20),a3
	tstl a3
	jeq L1
	moveq #1,d2
	cmpl a3,d2
	jeq L50
	moveq #2,d4
	cmpl a3,d4
	jeq L50
	moveq #3,d2
	cmpl a3,d2
	jeq L51
	moveq #4,d4
	cmpl a3,d4
	jeq L52
	moveq #5,d2
	cmpl a3,d2
	jeq L53
	moveq #6,d4
	cmpl a3,d4
	jeq L49
	moveq #7,d2
	cmpl a3,d2
	jeq L49
	moveq #8,d4
	cmpl a3,d4
	jeq L49
	moveq #9,d2
	cmpl a3,d2
	jeq L49
	lea a3@(-10),a2
	moveq #1,d4
	cmpl a2,d4
	jcs L22
	movel a6@(-12),d0
	movel a6@(-8),d1
	jra L1
	.even
L22:
	moveq #12,d2
	cmpl a3,d2
	jeq L54
	moveq #13,d2
	cmpl a3,d2
	jeq L55
	moveq #14,d4
	cmpl a3,d4
	jeq L56
	moveq #15,d2
	cmpl a3,d2
	jne L1
	movel a6@(-32),d3
	btst #10,d3
	jeq L37
	movel a6@(-16),d2
	moveq #1,d4
	cmpl d2,d4
	jeq L57
	moveq #2,d4
	cmpl d2,d4
	jeq L58
	moveq #4,d4
	cmpl d2,d4
	jeq L59
	moveq #8,d4
	cmpl d2,d4
	jeq L60
L37:
	btst #0,d3
	jeq L1
	movel a6@(-24),d0
L48:
	movel d0,a0
	jra L1
	.even
L60:
	movel a6@(-24),a2
	movel a2@,d0
	movel a2@(4),d1
	jra L1
	.even
L59:
	movel a6@(-24),a2
	movel a2@,d0
	jra L1
	.even
L58:
	movel a6@(-24),a2
	clrl d0
	movew a2@,d0
	jra L1
	.even
L57:
	movel a6@(-24),a2
	clrl d0
	moveb a2@,d0
	jra L1
	.even
L56:
	movel a6@(-12),d0
	jra L48
	.even
L55:
	btst #6,a6@(-29)
	jeq L31
	fmoved a6@(-12),fp0
	jra L1
	.even
L31:
	movel a6@(-12),d0
	movel a6@(-8),d1
	jra L1
	.even
L54:
	movel a6@(-32),d2
	btst #6,d2
	jeq L25
	fmoves a6@(-12),fp0
	jra L1
	.even
L25:
	btst #5,d2
	jeq L27
	fmoves a6@(-12),fp1
	fmoved fp1,sp@-
	movel sp@+,d0
	movel sp@+,d1
	jra L1
	.even
L27:
	movel a6@(-12),d0
	jra L1
	.even
L49:
	movel a6@(-12),d0
	jra L1
	.even
L53:
	clrl d0
	movew a6@(-12),d0
	jra L1
	.even
L52:
	movew a6@(-12),d0
	extl d0
	jra L1
	.even
L51:
	clrl d0
	moveb a6@(-12),d0
	jra L1
	.even
L50:
	moveb a6@(-12),d0
	extbl d0
L39:
L1:
	moveml a6@(-52),#0xc1c
	unlk a6
	rts
