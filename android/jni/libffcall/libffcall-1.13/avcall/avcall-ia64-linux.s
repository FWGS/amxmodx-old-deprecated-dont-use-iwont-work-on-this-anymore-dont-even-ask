	.file	"avcall-ia64.c"
	.pred.safe_across_calls p1-p5,p16-p63
	.text
	.align 16
	.global __builtin_avcall#
	.proc __builtin_avcall#
__builtin_avcall:
	.prologue 14, 34
	.mmi
	.save ar.pfs, r35
	alloc r35 = ar.pfs, 1, 6, 8, 0
	adds r14 = 40, r32
	adds r39 = 120, r32
	.mmi
	adds r15 = 48, r32
	adds r18 = 56, r32
	adds r16 = -2032, r12
	;;
	.mmb
	ld8 r14 = [r14]
	ld8 r15 = [r15]
	nop 0
	.mii
	.vframe r36
	mov r36 = r12
	.save ar.lc, r38
	mov r38 = ar.lc
	mov r37 = r1
	;;
	.mmi
	sub r14 = r14, r39
	sub r15 = r15, r18
	.save rp, r34
	mov r34 = b0
	.body
	;;
	.mii
	nop 0
	extr r14 = r14, 3, 32
	shr.u r15 = r15, 3
	;;
	.mib
	nop 0
	cmp.ge p6, p7 = 8, r14
	(p6) br.cond.dptk .L2
	.mmi
	sub r14 = 8, r14
	mov r17 = r16
	adds r16 = 184, r32
	;;
	.mii
	nop 0
	andcm r14 = -1, r14
	;;
	mov ar.lc = r14
.L4:
	.mmb
	nop 0
	ld8 r14 = [r16], 8
	nop 0
	;;
	.mfb
	st8 [r17] = r14, 8
	nop 0
	br.cloop.sptk.few .L4
.L2:
	.mfi
	adds r33 = 24, r32
	nop 0
	adds r14 = 64, r32
	;;
	.mmi
	ld4 r16 = [r33]
	;;
	cmp4.ne p6, p7 = 16, r16
	nop 0
	;;
	.mmi
	(p7) adds r17 = 16, r32
	;;
	(p7) ld8 r8 = [r17]
	cmp4.ge p6, p7 = 0, r15
	.mfb
	nop 0
	nop 0
	(p6) br.cond.dpnt .L7
	;;
	.mmb
	nop 0
	cmp4.ge p6, p7 = 1, r15
	nop 0
	.mfb
	ldfd f8 = [r18]
	nop 0
	(p6) br.cond.dpnt .L7
	;;
	.mmb
	nop 0
	cmp4.ge p6, p7 = 2, r15
	nop 0
	.mfb
	ldfd f9 = [r14]
	nop 0
	(p7) br.cond.dptk .L130
	;;
.L7:
	.mib
	nop 0
	cmp4.ne p6, p7 = 13, r16
	(p7) br.cond.dpnt .L131
	;;
.L16:
	.mmi
	adds r14 = 128, r32
	cmp4.ne p6, p7 = 14, r16
	adds r15 = 136, r32
	.mmb
	adds r16 = 144, r32
	adds r17 = 152, r32
	(p7) br.cond.dpnt .L132
	;;
	.mmi
	ld8 r40 = [r14]
	ld8 r14 = [r32]
	adds r18 = 160, r32
	.mmb
	adds r19 = 168, r32
	adds r20 = 176, r32
	nop 0
	.mmf
	ld8 r41 = [r15]
	ld8 r39 = [r39]
	nop 0
	;;
	.mmb
	ld8 r45 = [r19]
	ld8 r15 = [r14], 8
	nop 0
	;;
	.mmi
	ld8 r1 = [r14]
	ld8 r42 = [r16]
	mov b6 = r15
	.mmb
	ld8 r43 = [r17]
	ld8 r44 = [r18]
	nop 0
	.mbb
	ld8 r46 = [r20]
	nop 0
	br.call.sptk.many b0 = b6
	;;
	.mmi
	mov r1 = r37
	ld4 r14 = [r33]
	mov r22 = r8
	;;
	.mfb
	cmp4.eq p6, p7 = 1, r14
	nop 0
	(p6) br.cond.dpnt .L18
	;;
	.mib
	nop 0
	cmp4.ne p6, p7 = 0, r14
	(p7) br.cond.dptk .L128
	;;
	.mfb
	cmp4.ne p6, p7 = 2, r14
	nop 0
	(p7) br.cond.dpnt .L124
	;;
	.mfb
	cmp4.ne p6, p7 = 3, r14
	nop 0
	(p7) br.cond.dpnt .L124
	;;
	.mfb
	cmp4.ne p6, p7 = 4, r14
	nop 0
	(p7) br.cond.dpnt .L124
	;;
	.mfb
	cmp4.ne p6, p7 = 5, r14
	nop 0
	(p7) br.cond.dpnt .L125
	;;
	.mfb
	cmp4.ne p6, p7 = 6, r14
	nop 0
	(p7) br.cond.dpnt .L125
	;;
	.mfb
	cmp4.ne p6, p7 = 7, r14
	nop 0
	(p7) br.cond.dpnt .L126
	;;
	.mfb
	cmp4.ne p6, p7 = 8, r14
	nop 0
	(p7) br.cond.dpnt .L126
	;;
	.mii
	nop 0
	cmp4.ne p6, p7 = 9, r14
	;;
	nop 0
	.mfb
	cmp4.ne.and.orcm p6, p7 = 11, r14
	nop 0
	(p7) br.cond.dptk .L128
	;;
	.mii
	nop 0
	cmp4.ne p6, p7 = 10, r14
	;;
	nop 0
	.mfb
	cmp4.ne.and.orcm p6, p7 = 12, r14
	nop 0
	(p7) br.cond.dptk .L128
	;;
	.mfb
	cmp4.ne p6, p7 = 15, r14
	nop 0
	(p7) br.cond.dpnt .L128
	;;
	.mib
	nop 0
	cmp4.ne p6, p7 = 16, r14
	(p6) br.cond.dptk .L18
	.mmi
	adds r14 = 8, r32
	;;
	ld4 r14 = [r14]
	nop 0
	;;
	.mib
	nop 0
	tbit.z p6, p7 = r14, 0
	(p6) br.cond.dptk .L45
	.mfi
	adds r14 = 32, r32
	nop 0
	adds r17 = 16, r32
	;;
	.mmb
	nop 0
	ld8 r14 = [r14]
	nop 0
	;;
	.mmi
	cmp.ne p6, p7 = 1, r14
	;;
	(p7) adds r14 = 16, r32
	nop 0
	.mmi
	(p7) ld1 r15 = [r8]
	;;
	(p7) ld8 r14 = [r14]
	nop 0
	;;
	.mfb
	(p7) st1 [r14] = r15
	nop 0
	(p7) br.cond.dpnt .L18
	.mmi
	cmp.ne p6, p7 = 2, r14
	;;
	(p7) adds r14 = 16, r32
	nop 0
	.mmi
	(p7) ld2 r15 = [r8]
	;;
	(p7) ld8 r14 = [r14]
	nop 0
	;;
	.mfb
	(p7) st2 [r14] = r15
	nop 0
	(p7) br.cond.dpnt .L18
	.mmi
	cmp.ne p6, p7 = 4, r14
	;;
	(p7) adds r14 = 16, r32
	nop 0
	.mmi
	(p7) ld4 r15 = [r8]
	;;
	(p7) ld8 r14 = [r14]
	nop 0
	;;
	.mfb
	(p7) st4 [r14] = r15
	nop 0
	(p7) br.cond.dpnt .L18
	.mmi
	cmp.ne p6, p7 = 8, r14
	;;
	(p7) adds r14 = 16, r32
	nop 0
	.mmi
	(p7) ld8 r15 = [r8]
	;;
	(p7) ld8 r14 = [r14]
	nop 0
	;;
	.mfb
	(p7) st8 [r14] = r15
	nop 0
	(p7) br.cond.dpnt .L18
	.mii
	nop 0
	adds r14 = 7, r14
	;;
	shr.u r14 = r14, 3
	;;
	.mii
	nop 0
	adds r14 = -1, r14
	;;
	cmp4.gt p6, p7 = r0, r14
	.mmb
	mov r16 = r14
	addp4 r14 = r14, r0
	(p6) br.cond.dpnt .L18
	.mii
	ld8 r17 = [r17]
	nop 0
	;;
	mov ar.lc = r14
.L56:
	.mii
	nop 0
	sxt4 r14 = r16
	adds r16 = -1, r16
	;;
	.mmi
	shladd r14 = r14, 3, r0
	;;
	add r15 = r14, r22
	nop 0
	.mmi
	add r14 = r17, r14
	;;
	ld8 r15 = [r15]
	nop 0
	;;
	.mfb
	st8 [r14] = r15
	nop 0
	br.cloop.sptk.few .L56
	;;
.L18:
	.mfi
	mov r8 = r0
	nop 0
	mov b0 = r34
	.mmi
	nop 0
	.label_state 1
	.restore sp
	mov r12 = r36
	mov ar.pfs = r35
	.mib
	nop 0
	mov ar.lc = r38
	br.ret.sptk.many b0
.L130:
	.body
	.copy_state 1
	.mfi
	adds r14 = 72, r32
	nop 0
	cmp4.ge p6, p7 = 3, r15
	;;
	.mfb
	ldfd f10 = [r14]
	nop 0
	(p6) br.cond.dptk .L7
	.mfi
	adds r14 = 80, r32
	nop 0
	cmp4.ge p6, p7 = 4, r15
	;;
	.mfb
	ldfd f11 = [r14]
	nop 0
	(p6) br.cond.dptk .L7
	.mfi
	adds r14 = 88, r32
	nop 0
	cmp4.ge p6, p7 = 5, r15
	;;
	.mfb
	ldfd f12 = [r14]
	nop 0
	(p6) br.cond.dptk .L7
	.mfi
	adds r14 = 96, r32
	nop 0
	cmp4.ge p6, p7 = 6, r15
	;;
	.mfb
	ldfd f13 = [r14]
	nop 0
	(p6) br.cond.dptk .L7
	.mii
	adds r14 = 104, r32
	cmp4.ge p6, p7 = 7, r15
	;;
	nop 0
	.mii
	ldfd f14 = [r14]
	(p7) adds r14 = 112, r32
	;;
	nop 0
	.mmb
	(p7) ldfd f15 = [r14]
	cmp4.ne p6, p7 = 13, r16
	(p6) br.cond.dptk .L16
.L131:
	.mmi
	adds r14 = 16, r32
	adds r15 = 128, r32
	adds r16 = 136, r32
	.mmi
	adds r17 = 144, r32
	adds r18 = 152, r32
	adds r19 = 160, r32
	;;
	.mmb
	ld8 r33 = [r14]
	ld8 r14 = [r32]
	nop 0
	.mmi
	adds r20 = 168, r32
	adds r21 = 176, r32
	mov ar.lc = r38
	.mmb
	ld8 r40 = [r15]
	ld8 r39 = [r39]
	nop 0
	;;
	.mmb
	ld8 r46 = [r21]
	ld8 r15 = [r14], 8
	nop 0
	;;
	.mmi
	ld8 r1 = [r14]
	ld8 r41 = [r16]
	mov b6 = r15
	.mmb
	ld8 r42 = [r17]
	ld8 r43 = [r18]
	nop 0
	.mmb
	ld8 r44 = [r19]
	ld8 r45 = [r20]
	nop 0
	.bbb
	nop 0
	nop 0
	br.call.sptk.many b0 = b6
	;;
	.mmb
	.label_state 2
	.restore sp
	mov r12 = r36
	mov r8 = r0
	nop 0
	.mmi
	mov r1 = r37
	stfs [r33] = f8
	mov b0 = r34
	.mib
	nop 0
	mov ar.pfs = r35
	br.ret.sptk.many b0
	;;
.L128:
	.body
	.copy_state 2
	.mmi
	adds r14 = 16, r32
	mov r8 = r0
	mov b0 = r34
	.mmi
	.label_state 3
	.restore sp
	mov r12 = r36
	;;
	ld8 r14 = [r14]
	mov ar.pfs = r35
	.mii
	nop 0
	mov ar.lc = r38
	;;
	nop 0
	.mfb
	st8 [r14] = r22
	nop 0
	br.ret.sptk.many b0
.L132:
	.body
	.copy_state 3
	.mmi
	adds r14 = 16, r32
	adds r15 = 128, r32
	adds r16 = 136, r32
	.mmi
	adds r17 = 144, r32
	adds r18 = 152, r32
	adds r19 = 160, r32
	;;
	.mmb
	ld8 r33 = [r14]
	ld8 r14 = [r32]
	nop 0
	.mmi
	adds r20 = 168, r32
	adds r21 = 176, r32
	mov ar.lc = r38
	.mmb
	ld8 r40 = [r15]
	ld8 r39 = [r39]
	nop 0
	;;
	.mmb
	ld8 r46 = [r21]
	ld8 r15 = [r14], 8
	nop 0
	;;
	.mmi
	ld8 r1 = [r14]
	ld8 r41 = [r16]
	mov b6 = r15
	.mmb
	ld8 r42 = [r17]
	ld8 r43 = [r18]
	nop 0
	.mmb
	ld8 r44 = [r19]
	ld8 r45 = [r20]
	nop 0
	.bbb
	nop 0
	nop 0
	br.call.sptk.many b0 = b6
	;;
	.mmb
	.label_state 4
	.restore sp
	mov r12 = r36
	mov r8 = r0
	nop 0
	.mmi
	mov r1 = r37
	stfd [r33] = f8
	mov b0 = r34
	.mib
	nop 0
	mov ar.pfs = r35
	br.ret.sptk.many b0
	;;
.L124:
	.body
	.copy_state 4
	.mmi
	adds r14 = 16, r32
	mov r8 = r0
	mov b0 = r34
	.mmi
	.label_state 5
	.restore sp
	mov r12 = r36
	;;
	ld8 r14 = [r14]
	mov ar.pfs = r35
	.mii
	nop 0
	mov ar.lc = r38
	;;
	nop 0
	.mfb
	st1 [r14] = r22
	nop 0
	br.ret.sptk.many b0
.L125:
	.body
	.copy_state 5
	.mmi
	adds r14 = 16, r32
	mov r8 = r0
	mov b0 = r34
	.mmi
	.label_state 6
	.restore sp
	mov r12 = r36
	;;
	ld8 r14 = [r14]
	mov ar.pfs = r35
	.mii
	nop 0
	mov ar.lc = r38
	;;
	nop 0
	.mfb
	st2 [r14] = r22
	nop 0
	br.ret.sptk.many b0
.L126:
	.body
	.copy_state 6
	.mmi
	adds r14 = 16, r32
	mov r8 = r0
	mov b0 = r34
	.mmi
	.label_state 7
	.restore sp
	mov r12 = r36
	;;
	ld8 r14 = [r14]
	mov ar.pfs = r35
	.mii
	nop 0
	mov ar.lc = r38
	;;
	nop 0
	.mfb
	st4 [r14] = r22
	nop 0
	br.ret.sptk.many b0
.L45:
	.body
	.copy_state 7
	.mfi
	adds r16 = 32, r32
	nop 0
	tbit.z p6, p7 = r14, 9
	.mfb
	adds r17 = 16, r32
	nop 0
	(p6) br.cond.dpnt .L18
	;;
	.mfi
	ld8 r15 = [r16]
	nop 0
	mov b0 = r34
	.mmi
	nop 0
	;;
	adds r14 = -1, r15
	mov ar.pfs = r35
	;;
	.mib
	cmp.ltu p6, p7 = 31, r14
	mov ar.lc = r38
	(p6) br.cond.dpnt .L18
	;;
	.mii
	nop 0
	cmp.eq p6, p7 = 0, r15
	;;
	(p7) adds r14 = 16, r32
	;;
	.mii
	(p7) ld8 r14 = [r14]
	nop 0
	;;
	nop 0
	.mmb
	(p7) st1 [r14] = r8
	(p7) ld8 r15 = [r16]
	nop 0
	;;
	.mmi
	cmp.geu p6, p7 = 1, r15
	;;
	(p7) adds r14 = 16, r32
	(p7) shr r15 = r8, 8
	;;
	.mmi
	(p7) ld8 r14 = [r14]
	;;
	(p7) adds r14 = 1, r14
	nop 0
	;;
	.mmb
	(p7) st1 [r14] = r15
	(p7) ld8 r15 = [r16]
	nop 0
	;;
	.mmi
	cmp.geu p6, p7 = 2, r15
	;;
	(p7) adds r14 = 16, r32
	(p7) shr r15 = r8, 16
	;;
	.mmi
	(p7) ld8 r14 = [r14]
	;;
	(p7) adds r14 = 2, r14
	nop 0
	;;
	.mmb
	(p7) st1 [r14] = r15
	(p7) ld8 r15 = [r16]
	nop 0
	;;
	.mmi
	cmp.geu p6, p7 = 3, r15
	;;
	(p7) adds r14 = 16, r32
	(p7) shr r15 = r8, 24
	;;
	.mmi
	(p7) ld8 r14 = [r14]
	;;
	(p7) adds r14 = 3, r14
	nop 0
	;;
	.mmb
	(p7) st1 [r14] = r15
	(p7) ld8 r15 = [r16]
	nop 0
	;;
	.mmi
	cmp.geu p6, p7 = 4, r15
	;;
	(p7) adds r14 = 16, r32
	(p7) shr r15 = r8, 32
	;;
	.mmi
	(p7) ld8 r14 = [r14]
	;;
	(p7) adds r14 = 4, r14
	nop 0
	;;
	.mmb
	(p7) st1 [r14] = r15
	(p7) ld8 r15 = [r16]
	nop 0
	;;
	.mmi
	cmp.geu p6, p7 = 5, r15
	;;
	(p7) adds r14 = 16, r32
	(p7) shr r15 = r8, 40
	;;
	.mmi
	(p7) ld8 r14 = [r14]
	;;
	(p7) adds r14 = 5, r14
	nop 0
	;;
	.mmb
	(p7) st1 [r14] = r15
	(p7) ld8 r15 = [r16]
	nop 0
	;;
	.mmi
	cmp.geu p6, p7 = 6, r15
	;;
	(p7) adds r14 = 16, r32
	(p7) shr r15 = r8, 48
	;;
	.mmi
	(p7) ld8 r14 = [r14]
	;;
	(p7) adds r14 = 6, r14
	nop 0
	;;
	.mmb
	(p7) st1 [r14] = r15
	(p7) ld8 r15 = [r16]
	nop 0
	;;
	.mmi
	cmp.geu p6, p7 = 7, r15
	;;
	(p7) adds r14 = 16, r32
	(p7) shr r15 = r8, 56
	.mmi
	mov r8 = r0
	;;
	(p7) ld8 r14 = [r14]
	nop 0
	;;
	.mmb
	(p7) adds r14 = 7, r14
	;;
	(p7) st1 [r14] = r15
	nop 0
	.mbb
	(p7) ld8 r15 = [r16]
	nop 0
	nop 0
	;;
	.mib
	nop 0
	cmp.geu p6, p7 = 8, r15
	(p6) br.cond.dpnt .L18
	.mmi
	ld8 r14 = [r17]
	;;
	adds r14 = 8, r14
	nop 0
	;;
	.mmb
	st1 [r14] = r9
	ld8 r15 = [r16]
	nop 0
	;;
	.mmi
	cmp.geu p6, p7 = 9, r15
	;;
	(p7) ld8 r14 = [r17]
	(p7) shr r15 = r9, 8
	;;
	.mmb
	(p7) adds r14 = 9, r14
	;;
	(p7) st1 [r14] = r15
	nop 0
	.mmi
	(p7) ld8 r15 = [r16]
	;;
	cmp.geu p6, p7 = 10, r15
	nop 0
	;;
	.mii
	(p7) ld8 r14 = [r17]
	(p7) shr r15 = r9, 16
	;;
	(p7) adds r14 = 10, r14
	;;
	.mmb
	(p7) st1 [r14] = r15
	ld8 r14 = [r16]
	nop 0
	;;
	.mmi
	cmp.geu p6, p7 = 11, r14
	;;
	(p7) ld8 r14 = [r17]
	(p7) shr r15 = r9, 24
	;;
	.mmi
	(p7) adds r14 = 11, r14
	;;
	(p7) st1 [r14] = r15
	nop 0
	.mmi
	(p7) ld8 r14 = [r16]
	;;
	cmp.geu p6, p7 = 12, r14
	nop 0
	;;
	.mii
	(p7) ld8 r14 = [r17]
	(p7) shr r15 = r9, 32
	;;
	(p7) adds r14 = 12, r14
	;;
	.mmb
	(p7) st1 [r14] = r15
	(p7) ld8 r14 = [r16]
	nop 0
	;;
	.mmi
	cmp.geu p6, p7 = 13, r14
	;;
	(p7) ld8 r14 = [r17]
	(p7) shr r15 = r9, 40
	;;
	.mmb
	(p7) adds r14 = 13, r14
	;;
	(p7) st1 [r14] = r15
	nop 0
	.mmi
	(p7) ld8 r14 = [r16]
	;;
	cmp.geu p6, p7 = 14, r14
	nop 0
	;;
	.mii
	(p7) ld8 r14 = [r17]
	(p7) shr r15 = r9, 48
	;;
	(p7) adds r14 = 14, r14
	;;
	.mmb
	(p7) st1 [r14] = r15
	(p7) ld8 r14 = [r16]
	nop 0
	;;
	.mmi
	cmp.geu p6, p7 = 15, r14
	;;
	(p7) ld8 r14 = [r17]
	(p7) shr r15 = r9, 56
	;;
	.mmb
	(p7) adds r14 = 15, r14
	;;
	(p7) st1 [r14] = r15
	nop 0
	.mbb
	(p7) ld8 r14 = [r16]
	nop 0
	nop 0
	;;
	.mib
	nop 0
	cmp.geu p6, p7 = 16, r14
	(p6) br.cond.dpnt .L18
	.mmi
	ld8 r14 = [r17]
	;;
	adds r14 = 16, r14
	nop 0
	;;
	.mmb
	st1 [r14] = r10
	ld8 r14 = [r16]
	nop 0
	;;
	.mmi
	cmp.geu p6, p7 = 17, r14
	;;
	(p7) ld8 r14 = [r17]
	(p7) shr r15 = r10, 8
	;;
	.mmb
	(p7) adds r14 = 17, r14
	;;
	(p7) st1 [r14] = r15
	nop 0
	.mmi
	(p7) ld8 r14 = [r16]
	;;
	cmp.geu p6, p7 = 18, r14
	nop 0
	;;
	.mii
	(p7) ld8 r14 = [r17]
	(p7) shr r15 = r10, 16
	;;
	(p7) adds r14 = 18, r14
	;;
	.mmb
	(p7) st1 [r14] = r15
	(p7) ld8 r14 = [r16]
	nop 0
	;;
	.mmi
	cmp.geu p6, p7 = 19, r14
	;;
	(p7) ld8 r14 = [r17]
	(p7) shr r15 = r10, 24
	;;
	.mmb
	(p7) adds r14 = 19, r14
	;;
	(p7) st1 [r14] = r15
	nop 0
	.mmi
	(p7) ld8 r14 = [r16]
	;;
	cmp.geu p6, p7 = 20, r14
	nop 0
	;;
	.mii
	(p7) ld8 r14 = [r17]
	(p7) shr r15 = r10, 32
	;;
	(p7) adds r14 = 20, r14
	;;
	.mmb
	(p7) st1 [r14] = r15
	(p7) ld8 r14 = [r16]
	nop 0
	;;
	.mmi
	cmp.geu p6, p7 = 21, r14
	;;
	(p7) ld8 r14 = [r17]
	(p7) shr r15 = r10, 40
	;;
	.mmb
	(p7) adds r14 = 21, r14
	;;
	(p7) st1 [r14] = r15
	nop 0
	.mmi
	ld8 r14 = [r16]
	;;
	cmp.geu p6, p7 = 22, r14
	nop 0
	;;
	.mii
	(p7) ld8 r14 = [r17]
	(p7) shr r15 = r10, 48
	;;
	(p7) adds r14 = 22, r14
	;;
	.mmb
	(p7) st1 [r14] = r15
	(p7) ld8 r14 = [r16]
	nop 0
	;;
	.mmi
	cmp.geu p6, p7 = 23, r14
	;;
	(p7) ld8 r14 = [r17]
	(p7) shr r15 = r10, 56
	;;
	.mmi
	(p7) adds r14 = 23, r14
	;;
	(p7) st1 [r14] = r15
	nop 0
	.mmi
	(p7) ld8 r14 = [r16]
	;;
	nop 0
	cmp.geu p6, p7 = 24, r14
	.bbb
	nop 0
	nop 0
	(p6) br.cond.dpnt .L18
	.mii
	ld8 r14 = [r17]
	.restore sp
	mov r12 = r36
	;;
	adds r14 = 24, r14
	;;
	.mmb
	st1 [r14] = r11
	ld8 r14 = [r16]
	nop 0
	;;
	.mmi
	cmp.geu p6, p7 = 25, r14
	;;
	(p7) ld8 r14 = [r17]
	(p7) shr r15 = r11, 8
	;;
	.mmb
	(p7) adds r14 = 25, r14
	;;
	(p7) st1 [r14] = r15
	nop 0
	.mmi
	(p7) ld8 r14 = [r16]
	;;
	cmp.geu p6, p7 = 26, r14
	nop 0
	;;
	.mii
	(p7) ld8 r14 = [r17]
	(p7) shr r15 = r11, 16
	;;
	(p7) adds r14 = 26, r14
	;;
	.mmb
	(p7) st1 [r14] = r15
	(p7) ld8 r14 = [r16]
	nop 0
	;;
	.mmi
	cmp.geu p6, p7 = 27, r14
	;;
	(p7) ld8 r14 = [r17]
	(p7) shr r15 = r11, 24
	;;
	.mmb
	(p7) adds r14 = 27, r14
	;;
	(p7) st1 [r14] = r15
	nop 0
	.mmi
	(p7) ld8 r14 = [r16]
	;;
	cmp.geu p6, p7 = 28, r14
	nop 0
	;;
	.mii
	(p7) ld8 r14 = [r17]
	(p7) shr r15 = r11, 32
	;;
	(p7) adds r14 = 28, r14
	;;
	.mmb
	(p7) st1 [r14] = r15
	(p7) ld8 r14 = [r16]
	nop 0
	;;
	.mmi
	cmp.geu p6, p7 = 29, r14
	;;
	(p7) ld8 r14 = [r17]
	(p7) shr r15 = r11, 40
	;;
	.mmb
	(p7) adds r14 = 29, r14
	;;
	(p7) st1 [r14] = r15
	nop 0
	.mmi
	(p7) ld8 r14 = [r16]
	;;
	cmp.geu p6, p7 = 30, r14
	nop 0
	;;
	.mii
	(p7) ld8 r14 = [r17]
	(p7) shr r15 = r11, 48
	;;
	(p7) adds r14 = 30, r14
	;;
	.mmb
	(p7) st1 [r14] = r15
	(p7) ld8 r14 = [r16]
	nop 0
	;;
	.mmi
	cmp.geu p6, p7 = 31, r14
	;;
	(p7) ld8 r14 = [r17]
	(p7) shr r15 = r11, 56
	;;
	.mii
	nop 0
	(p7) adds r14 = 31, r14
	;;
	nop 0
	.mfb
	(p7) st1 [r14] = r15
	nop 0
	br.ret.sptk.many b0
	.endp __builtin_avcall#
	.ident	"GCC: (GNU) 4.0.1"
