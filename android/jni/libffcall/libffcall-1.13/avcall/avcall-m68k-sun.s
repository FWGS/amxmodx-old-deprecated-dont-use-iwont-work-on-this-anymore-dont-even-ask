#NO_APP
	.text
	.even
	.globl	___builtin_avcall
___builtin_avcall:
	link a6,#0
	moveml #0x3820,sp@-
	movel a6@(8),a2
	lea sp@(-1024),sp
	movel a2@(20),a0
	subl a2,a0
	moveq #-32,d0
	addl a0,d0
	asrl #2,d0
	jle L69
	movel sp,a1
	lea a2@(32),a0
	movel d0,d2
	.even
L6:
	movel a0@+,a1@+
	subql #1,d2
	jne L6
L69:
	moveq #16,d0
	cmpl a2@(12),d0
	jeq L75
L7:
	movel a2@,a0
	jsr a0@
	movel d0,d2
	movel d1,d3
	movel a2@(12),a1
	moveq #1,d1
	cmpl a1,d1
	jeq L9
	tstl a1
	jeq L71
	moveq #2,d4
	cmpl a1,d4
	jeq L74
	moveq #3,d4
	cmpl a1,d4
	jeq L74
	moveq #4,d4
	cmpl a1,d4
	jeq L74
	moveq #5,d4
	cmpl a1,d4
	jeq L73
	moveq #6,d4
	cmpl a1,d4
	jeq L73
	moveq #7,d4
	cmpl a1,d4
	jeq L71
	moveq #8,d4
	cmpl a1,d4
	jeq L71
	moveq #9,d4
	cmpl a1,d4
	jeq L71
	moveq #10,d4
	cmpl a1,d4
	jeq L71
	lea a1@(-11),a0
	moveq #1,d4
	cmpl a0,d4
	jcc L72
	moveq #13,d4
	cmpl a1,d4
	jeq L76
	moveq #14,d4
	cmpl a1,d4
	jeq L77
	moveq #15,d0
	cmpl a1,d0
	jeq L71
	moveq #16,d1
	cmpl a1,d1
	jne L9
	movel a2@(4),d1
	btst #9,d1
	jeq L45
	movel a2@(16),d0
	moveq #1,d4
	cmpl d0,d4
	jeq L74
	moveq #2,d4
	cmpl d0,d4
	jeq L73
	moveq #4,d4
	cmpl d0,d4
	jeq L71
	moveq #8,d4
	cmpl d0,d4
	jeq L72
L45:
	btst #0,d1
	jeq L9
	movel a2@(16),d0
	moveq #1,d1
	cmpl d0,d1
	jeq L78
	moveq #2,d1
	cmpl d0,d1
	jeq L79
	moveq #4,d1
	cmpl d0,d1
	jeq L80
	moveq #8,d1
	cmpl d0,d1
	jeq L81
	movel d0,d1
	addql #3,d1
	lsrl #2,d1
	subql #1,d1
	jmi L9
	movel d1,d0
	lsll #2,d0
	movel d0,a1
	addl a2@(8),a1
	movel d0,a0
	addl d2,a0
L66:
	movel a0@,a1@
	subql #4,a0
	subql #4,a1
	subql #1,d1
	jpl L66
	jra L9
	.even
L81:
	movel a2@(8),a0
	movel d2,a1
	movel a1@,a0@
	movel a1@(4),a0@(4)
	jra L9
	.even
L80:
	movel a2@(8),a0
	movel d2,a1
	movel a1@,a0@
	jra L9
	.even
L79:
	movel a2@(8),a0
	movel d2,a1
	movew a1@,a0@
	jra L9
	.even
L78:
	movel a2@(8),a0
	movel d2,a1
	moveb a1@,a0@
	jra L9
	.even
L72:
	movel a2@(8),a0
	movel d2,a0@
	movel d3,a0@(4)
	jra L9
	.even
L71:
	movel a2@(8),a0
	movel d2,a0@
	jra L9
	.even
L73:
	movel a2@(8),a0
	movew d2,a0@
	jra L9
	.even
L74:
	movel a2@(8),a0
	moveb d2,a0@
	jra L9
	.even
L77:
	btst #6,a2@(7)
	jeq L39
	movel a2@(8),a0
	fmoved fp0,a0@
	jra L9
	.even
L39:
	movel a2@(8),a0
	movel d0,a0@
	movel d1,a0@(4)
	jra L9
	.even
L76:
	movel a2@(4),d2
	btst #6,d2
	jeq L33
	movel a2@(8),a0
	fmoves fp0,a0@
	jra L9
	.even
L33:
	btst #5,d2
	jeq L35
	movel a2@(8),a0
	movel d1,sp@-
	movel d0,sp@-
	fmoved sp@+,fp0
	fmoves fp0,a0@
	jra L9
	.even
L35:
	movel a2@(8),a0
	movel d0,a0@
	jra L9
	.even
L75:
#APP
	movel a2@(8),a1
#NO_APP
	jra L7
L47:
	.even
L9:
	clrl d0
	moveml a6@(-16),#0x41c
	unlk a6
	rts
