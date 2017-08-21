	.file	"vacall-ia64.c"
	.pred.safe_across_calls p1-p5,p16-p63
	.text
	.align 16
	.proc __vacall_r#
__vacall_r:
	.prologue 14, 42
	.mmi
	.save ar.pfs, r43
	alloc r43 = ar.pfs, 8, 6, 2, 0
	.vframe r44
	mov r44 = r12
	adds r12 = -208, r12
	.mmi
	ld8 r16 = [r15]
	adds r18 = 8, r15
	mov r45 = r1
	;;
	.mmi
	adds r17 = -48, r44
	adds r14 = -136, r44
	adds r19 = -112, r44
	.mmi
	adds r40 = -168, r44
	adds r47 = -192, r44
	adds r41 = -176, r44
	;;
	.mmb
	st8 [r14] = r8
	adds r14 = -40, r44
	nop 0
	.mfi
	st8 [r41] = r0
	nop 0
	.save rp, r42
	mov r42 = b0
	.body
	;;
	.mfi
	st8 [r14] = r33
	nop 0
	adds r14 = -32, r44
	.mmb
	st4 [r40] = r0
	ld8 r46 = [r18]
	nop 0
	;;
	.mmi
	nop 0
	st8 [r14] = r34
	adds r14 = -24, r44
	.mmi
	st8 [r44] = r38
	;;
	st8 [r14] = r35
	adds r14 = -16, r44
	.mmi
	st8 [r17] = r32
	;;
	st8 [r14] = r36
	adds r14 = -8, r44
	.mmi
	stfd [r19] = f8
	;;
	st8 [r14] = r37
	adds r14 = 8, r44
	.mmi
	st4 [r47] = r0
	;;
	st8 [r14] = r39
	nop 0
	.mmi
	adds r14 = -128, r44
	;;
	st8 [r14] = r17
	adds r14 = -120, r44
	;;
	.mfi
	st8 [r14] = r19
	nop 0
	adds r14 = -104, r44
	.mmi
	nop 0
	;;
	stfd [r14] = f9
	nop 0
	.mmi
	adds r14 = -96, r44
	;;
	stfd [r14] = f10
	adds r14 = -88, r44
	;;
	.mfi
	stfd [r14] = f11
	nop 0
	adds r14 = -80, r44
	.mmi
	nop 0
	;;
	stfd [r14] = f12
	nop 0
	.mmi
	adds r14 = -72, r44
	;;
	stfd [r14] = f13
	adds r14 = -64, r44
	;;
	.mii
	stfd [r14] = f14
	adds r14 = -56, r44
	;;
	nop 0
	.mii
	stfd [r14] = f15
	adds r14 = -184, r44
	;;
	nop 0
	.mmb
	st8 [r14] = r17
	ld8 r14 = [r16], 8
	nop 0
	;;
	.mib
	nop 0
	mov b6 = r14
	nop 0
	.mbb
	ld8 r1 = [r16]
	nop 0
	br.call.sptk.many b0 = b6
	;;
	.mmb
	mov r1 = r45
	ld4 r40 = [r40]
	nop 0
	;;
	.mfb
	cmp4.eq p6, p7 = 0, r40
	nop 0
	(p6) br.cond.dpnt .L95
	;;
	.mfb
	cmp4.ne p6, p7 = 1, r40
	nop 0
	(p7) br.cond.dpnt .L96
	;;
	.mfb
	cmp4.ne p6, p7 = 2, r40
	nop 0
	(p7) br.cond.dpnt .L96
	;;
	.mii
	nop 0
	cmp4.ne p6, p7 = 3, r40
	;;
	(p7) adds r14 = -152, r44
	;;
	.mfb
	(p7) ld1 r8 = [r14]
	nop 0
	(p7) br.cond.dpnt .L95
	.mii
	nop 0
	cmp4.ne p6, p7 = 4, r40
	;;
	nop 0
	.mmi
	(p7) adds r14 = -152, r44
	;;
	(p7) ld2 r14 = [r14]
	nop 0
	;;
	.mib
	nop 0
	(p7) sxt2 r8 = r14
	(p7) br.cond.dpnt .L95
	.mii
	nop 0
	cmp4.ne p6, p7 = 5, r40
	;;
	(p7) adds r14 = -152, r44
	;;
	.mfb
	(p7) ld2 r8 = [r14]
	nop 0
	(p7) br.cond.dpnt .L95
	.mii
	nop 0
	cmp4.ne p6, p7 = 6, r40
	;;
	nop 0
	.mmi
	(p7) adds r14 = -152, r44
	;;
	(p7) ld4 r14 = [r14]
	nop 0
	;;
	.mib
	nop 0
	(p7) sxt4 r8 = r14
	(p7) br.cond.dpnt .L95
	.mii
	nop 0
	cmp4.ne p6, p7 = 7, r40
	;;
	(p7) adds r14 = -152, r44
	;;
	.mfb
	(p7) ld4 r8 = [r14]
	nop 0
	(p7) br.cond.dpnt .L95
	.mfb
	cmp4.ne p6, p7 = 8, r40
	nop 0
	(p7) br.cond.dpnt .L100
	;;
	.mfb
	cmp4.ne p6, p7 = 9, r40
	nop 0
	(p7) br.cond.dpnt .L100
	;;
	.mfb
	cmp4.ne p6, p7 = 10, r40
	nop 0
	(p7) br.cond.dpnt .L100
	;;
	.mfb
	cmp4.ne p6, p7 = 11, r40
	nop 0
	(p7) br.cond.dpnt .L100
	;;
	.mii
	nop 0
	cmp4.ne p6, p7 = 12, r40
	;;
	(p7) adds r14 = -152, r44
	;;
	.mfb
	(p7) ldfs f8 = [r14]
	nop 0
	(p7) br.cond.dpnt .L95
	.mii
	nop 0
	cmp4.ne p6, p7 = 13, r40
	;;
	(p7) adds r14 = -152, r44
	;;
	.mfb
	(p7) ldfd f8 = [r14]
	nop 0
	(p7) br.cond.dpnt .L95
	.mfb
	cmp4.ne p6, p7 = 14, r40
	nop 0
	(p7) br.cond.dpnt .L100
	;;
	.mib
	nop 0
	cmp4.ne p6, p7 = 15, r40
	(p6) br.cond.dptk .L95
	.mii
	nop 0
	adds r16 = -192, r44
	;;
	nop 0
	.mmi
	ld4 r14 = [r16]
	;;
	nop 0
	tbit.z p6, p7 = r14, 0
	;;
	.mfb
	(p7) ld8 r8 = [r41]
	nop 0
	(p7) br.cond.dptk .L95
	.mii
	nop 0
	tbit.z p6, p7 = r14, 10
	adds r14 = -160, r44
	.bbb
	nop 0
	nop 0
	(p6) br.cond.dpnt .L95
	;;
	.mmi
	ld8 r17 = [r14]
	;;
	adds r14 = -1, r17
	nop 0
	;;
	.mib
	nop 0
	cmp.ltu p6, p7 = 31, r14
	(p6) br.cond.dpnt .L95
	.mmi
	ld8 r16 = [r41]
	;;
	cmp.geu p6, p7 = 1, r17
	nop 0
	;;
	.mmb
	(p7) adds r14 = 1, r16
	ld1 r18 = [r16]
	nop 0
	;;
	.mii
	(p7) ld1 r14 = [r14]
	mov r8 = r18
	;;
	(p7) shl r14 = r14, 8
	;;
	.mii
	(p7) or r8 = r14, r18
	cmp.geu p6, p7 = 2, r17
	;;
	(p7) adds r14 = 2, r16
	;;
	.mmi
	(p7) ld1 r14 = [r14]
	;;
	nop 0
	(p7) shl r14 = r14, 16
	;;
	.mii
	(p7) or r8 = r8, r14
	cmp.geu p6, p7 = 3, r17
	;;
	(p7) adds r14 = 3, r16
	;;
	.mmi
	(p7) ld1 r14 = [r14]
	;;
	nop 0
	(p7) shl r14 = r14, 24
	;;
	.mii
	(p7) or r8 = r8, r14
	cmp.geu p6, p7 = 4, r17
	;;
	(p7) adds r14 = 4, r16
	;;
	.mmi
	(p7) ld1 r14 = [r14]
	;;
	nop 0
	(p7) shl r14 = r14, 32
	;;
	.mii
	(p7) or r8 = r8, r14
	cmp.geu p6, p7 = 5, r17
	;;
	(p7) adds r14 = 5, r16
	;;
	.mmi
	(p7) ld1 r14 = [r14]
	;;
	nop 0
	(p7) shl r14 = r14, 40
	;;
	.mii
	(p7) or r8 = r8, r14
	cmp.geu p6, p7 = 6, r17
	;;
	(p7) adds r14 = 6, r16
	;;
	.mmi
	(p7) ld1 r14 = [r14]
	;;
	nop 0
	(p7) shl r14 = r14, 48
	;;
	.mii
	(p7) or r8 = r8, r14
	cmp.geu p6, p7 = 7, r17
	;;
	(p7) adds r14 = 7, r16
	;;
	.mmi
	(p7) ld1 r14 = [r14]
	;;
	nop 0
	(p7) shl r14 = r14, 56
	.mmi
	nop 0
	;;
	(p7) or r8 = r8, r14
	cmp.geu p6, p7 = 8, r17
	.mfb
	adds r14 = 8, r16
	nop 0
	(p6) br.cond.dpnt .L95
	;;
	.mmb
	cmp.geu p6, p7 = 9, r17
	ld1 r18 = [r14]
	nop 0
	;;
	.mii
	(p7) adds r14 = 9, r16
	mov r9 = r18
	;;
	nop 0
	.mmi
	(p7) ld1 r14 = [r14]
	;;
	nop 0
	(p7) shl r14 = r14, 8
	;;
	.mii
	(p7) or r9 = r14, r18
	cmp.geu p6, p7 = 10, r17
	;;
	(p7) adds r14 = 10, r16
	;;
	.mmi
	(p7) ld1 r14 = [r14]
	;;
	nop 0
	(p7) shl r14 = r14, 16
	;;
	.mii
	(p7) or r9 = r9, r14
	cmp.geu p6, p7 = 11, r17
	;;
	(p7) adds r14 = 11, r16
	;;
	.mmi
	(p7) ld1 r14 = [r14]
	;;
	nop 0
	(p7) shl r14 = r14, 24
	;;
	.mii
	(p7) or r9 = r9, r14
	cmp.geu p6, p7 = 12, r17
	;;
	(p7) adds r14 = 12, r16
	;;
	.mmi
	(p7) ld1 r14 = [r14]
	;;
	nop 0
	(p7) shl r14 = r14, 32
	;;
	.mii
	(p7) or r9 = r9, r14
	cmp.geu p6, p7 = 13, r17
	;;
	(p7) adds r14 = 13, r16
	;;
	.mmi
	(p7) ld1 r14 = [r14]
	;;
	nop 0
	(p7) shl r14 = r14, 40
	;;
	.mii
	(p7) or r9 = r9, r14
	cmp.geu p6, p7 = 14, r17
	;;
	(p7) adds r14 = 14, r16
	;;
	.mmi
	(p7) ld1 r14 = [r14]
	;;
	nop 0
	(p7) shl r14 = r14, 48
	;;
	.mii
	(p7) or r9 = r9, r14
	cmp.geu p6, p7 = 15, r17
	;;
	(p7) adds r14 = 15, r16
	;;
	.mmi
	(p7) ld1 r14 = [r14]
	;;
	nop 0
	(p7) shl r14 = r14, 56
	.mii
	nop 0
	nop 0
	;;
	(p7) or r9 = r9, r14
	.mmb
	cmp.geu p6, p7 = 16, r17
	adds r14 = 16, r16
	(p6) br.cond.dpnt .L95
	;;
	.mmb
	cmp.geu p6, p7 = 17, r17
	ld1 r18 = [r14]
	nop 0
	;;
	.mii
	(p7) adds r14 = 17, r16
	mov r10 = r18
	;;
	nop 0
	.mmi
	(p7) ld1 r14 = [r14]
	;;
	nop 0
	(p7) shl r14 = r14, 8
	;;
	.mii
	(p7) or r10 = r14, r18
	cmp.geu p6, p7 = 18, r17
	;;
	(p7) adds r14 = 18, r16
	;;
	.mmi
	(p7) ld1 r14 = [r14]
	;;
	nop 0
	(p7) shl r14 = r14, 16
	;;
	.mii
	(p7) or r10 = r10, r14
	cmp.geu p6, p7 = 19, r17
	;;
	(p7) adds r14 = 19, r16
	;;
	.mmi
	(p7) ld1 r14 = [r14]
	;;
	nop 0
	(p7) shl r14 = r14, 24
	;;
	.mii
	(p7) or r10 = r10, r14
	cmp.geu p6, p7 = 20, r17
	;;
	(p7) adds r14 = 20, r16
	;;
	.mmi
	(p7) ld1 r14 = [r14]
	;;
	nop 0
	(p7) shl r14 = r14, 32
	;;
	.mii
	(p7) or r10 = r10, r14
	cmp.geu p6, p7 = 21, r17
	;;
	(p7) adds r14 = 21, r16
	;;
	.mmi
	(p7) ld1 r14 = [r14]
	;;
	nop 0
	(p7) shl r14 = r14, 40
	;;
	.mii
	(p7) or r10 = r10, r14
	cmp.geu p6, p7 = 22, r17
	;;
	(p7) adds r14 = 22, r16
	;;
	.mmi
	(p7) ld1 r14 = [r14]
	;;
	nop 0
	(p7) shl r14 = r14, 48
	;;
	.mii
	(p7) or r10 = r10, r14
	cmp.geu p6, p7 = 23, r17
	;;
	(p7) adds r14 = 23, r16
	;;
	.mmi
	(p7) ld1 r14 = [r14]
	;;
	nop 0
	(p7) shl r14 = r14, 56
	.mii
	nop 0
	nop 0
	;;
	(p7) or r10 = r10, r14
	.mmb
	cmp.geu p6, p7 = 24, r17
	adds r14 = 24, r16
	(p6) br.cond.dpnt .L95
	;;
	.mmb
	cmp.geu p6, p7 = 25, r17
	ld1 r18 = [r14]
	nop 0
	;;
	.mii
	(p7) adds r14 = 25, r16
	mov r11 = r18
	;;
	nop 0
	.mmi
	(p7) ld1 r14 = [r14]
	;;
	nop 0
	(p7) shl r14 = r14, 8
	;;
	.mii
	(p7) or r11 = r14, r18
	cmp.geu p6, p7 = 26, r17
	;;
	(p7) adds r14 = 26, r16
	;;
	.mmi
	(p7) ld1 r14 = [r14]
	;;
	nop 0
	(p7) shl r14 = r14, 16
	;;
	.mii
	(p7) or r11 = r11, r14
	cmp.geu p6, p7 = 27, r17
	;;
	(p7) adds r14 = 27, r16
	;;
	.mmi
	(p7) ld1 r14 = [r14]
	;;
	nop 0
	(p7) shl r14 = r14, 24
	;;
	.mii
	(p7) or r11 = r11, r14
	cmp.geu p6, p7 = 28, r17
	;;
	(p7) adds r14 = 28, r16
	;;
	.mmi
	(p7) ld1 r14 = [r14]
	;;
	nop 0
	(p7) shl r14 = r14, 32
	;;
	.mii
	(p7) or r11 = r11, r14
	cmp.geu p6, p7 = 29, r17
	;;
	(p7) adds r14 = 29, r16
	;;
	.mmi
	(p7) ld1 r14 = [r14]
	;;
	nop 0
	(p7) shl r14 = r14, 40
	;;
	.mii
	(p7) or r11 = r11, r14
	cmp.geu p6, p7 = 30, r17
	;;
	(p7) adds r14 = 30, r16
	;;
	.mmi
	(p7) ld1 r14 = [r14]
	;;
	nop 0
	(p7) shl r14 = r14, 48
	;;
	.mii
	(p7) or r11 = r11, r14
	cmp.geu p6, p7 = 31, r17
	;;
	(p7) adds r14 = 31, r16
	;;
	.mmi
	(p7) ld1 r14 = [r14]
	;;
	nop 0
	(p7) shl r14 = r14, 56
	.mii
	nop 0
	nop 0
	;;
	(p7) or r11 = r11, r14
.L95:
	.mii
	nop 0
	mov ar.pfs = r43
	mov b0 = r42
	.mib
	nop 0
	.label_state 1
	.restore sp
	mov r12 = r44
	br.ret.sptk.many b0
.L96:
	.body
	.copy_state 1
	.mii
	nop 0
	adds r14 = -152, r44
	;;
	nop 0
	.mii
	ld1 r14 = [r14]
	nop 0
	;;
	sxt1 r8 = r14
	.mii
	nop 0
	mov ar.pfs = r43
	mov b0 = r42
	.mib
	nop 0
	.label_state 2
	.restore sp
	mov r12 = r44
	br.ret.sptk.many b0
.L100:
	.body
	.copy_state 2
	.mmb
	nop 0
	adds r14 = -152, r44
	nop 0
	;;
	.mii
	ld8 r8 = [r14]
	mov ar.pfs = r43
	mov b0 = r42
	.mib
	nop 0
	.restore sp
	mov r12 = r44
	br.ret.sptk.many b0
	.endp __vacall_r#
	.align 16
	.global get__vacall_r#
	.proc get__vacall_r#
get__vacall_r:
	.prologue 2, 2
	.mfi
	.vframe r2
	mov r2 = r12
	.body
	nop 0
	addl r8 = @ltoff(@fptr(__vacall_r#)), gp
	;;
	.mib
	ld8 r8 = [r8]
	.restore sp
	mov r12 = r2
	br.ret.sptk.many b0
	.endp get__vacall_r#
	.ident	"GCC: (GNU) 4.0.1"
