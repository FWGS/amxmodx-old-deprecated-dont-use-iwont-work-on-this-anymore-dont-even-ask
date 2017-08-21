	.file	"vacall-x86_64.c"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,15
	.type	__vacall_r, @function
__vacall_r:
.LFB0:
	pushq	%rbp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushq	%r14
	pushq	%r13
	leal	-208(%rbp), %r11d
	pushq	%r12
.LCFI2:
	leal	16(%rbp), %r14d
	leal	120(%r11), %r12d
	subl	$184, %esp
	movq	%rdi, -88(%ebp)
	movq	%rsi, -80(%ebp)
	movl	4(%r10d), %edi
	movq	%r11, %rsi
	movl	%r12d, -96(%ebp)
	leal	48(%r11), %r12d
	movl	(%r10d), %r11d
	movq	%rdx, -72(%ebp)
	movq	%rcx, -64(%ebp)
	movsd	%xmm0, -160(%ebp)
	movq	%r8, -56(%ebp)
	movq	%r9, -48(%ebp)
	movsd	%xmm1, -152(%ebp)
	movsd	%xmm2, -144(%ebp)
	movl	$0, -208(%ebp)
	movsd	%xmm3, -136(%ebp)
	movl	%r14d, -204(%ebp)
	movsd	%xmm4, -128(%ebp)
	movl	$0, -200(%ebp)
	movsd	%xmm5, -120(%ebp)
	movl	$0, -196(%ebp)
	movsd	%xmm6, -112(%ebp)
	movl	%r12d, -168(%ebp)
	movsd	%xmm7, -104(%ebp)
	call	*%r11
	movl	-196(%ebp), %r11d
	testl	%r11d, %r11d
	je	.L1
	cmpl	$1, %r11d
	je	.L78
	cmpl	$2, %r11d
	je	.L78
	cmpl	$3, %r11d
	je	.L84
	cmpl	$4, %r11d
	je	.L85
	cmpl	$5, %r11d
	je	.L86
	cmpl	$6, %r11d
	je	.L81
	cmpl	$7, %r11d
	je	.L80
	cmpl	$8, %r11d
	je	.L81
	cmpl	$9, %r11d
	je	.L80
	cmpl	$10, %r11d
	je	.L82
	cmpl	$11, %r11d
	je	.L82
	cmpl	$12, %r11d
	je	.L87
	cmpl	$13, %r11d
	je	.L88
	cmpl	$14, %r11d
	je	.L81
	cmpl	$15, %r11d
	jne	.L1
	movl	-208(%ebp), %r11d
	testb	$1, %r11b
	jne	.L89
	andl	$1024, %r11d
	je	.L1
	movl	-192(%ebp), %r12d
	leal	-1(%r12), %r11d
	cmpl	$15, %r11d
	ja	.L1
	movl	-200(%ebp), %r13d
	cmpl	$1, %r12d
	movzbl	0(%r13d), %r11d
	movq	%r11, %rax
	je	.L1
	movzbl	1(%r13d), %r14d
	salq	$8, %r14
	orq	%r14, %r11
	cmpl	$2, %r12d
	movq	%r11, %rax
	je	.L1
	movzbl	2(%r13d), %r14d
	salq	$16, %r14
	orq	%r14, %r11
	cmpl	$3, %r12d
	movq	%r11, %rax
	je	.L1
	movzbl	3(%r13d), %r14d
	salq	$24, %r14
	orq	%r14, %r11
	cmpl	$4, %r12d
	movq	%r11, %rax
	je	.L1
	movzbl	4(%r13d), %r14d
	salq	$32, %r14
	orq	%r14, %r11
	cmpl	$5, %r12d
	movq	%r11, %rax
	je	.L1
	movzbl	5(%r13d), %r14d
	salq	$40, %r14
	orq	%r14, %r11
	cmpl	$6, %r12d
	movq	%r11, %rax
	je	.L1
	movzbl	6(%r13d), %r14d
	salq	$48, %r14
	orq	%r14, %r11
	cmpl	$7, %r12d
	movq	%r11, %rax
	je	.L1
	movzbl	7(%r13d), %r14d
	salq	$56, %r14
	orq	%r11, %r14
	cmpl	$8, %r12d
	movq	%r14, %rax
	je	.L1
	movzbl	8(%r13d), %r11d
	cmpl	$9, %r12d
	movq	%r11, %rdx
	je	.L1
	movzbl	9(%r13d), %r14d
	salq	$8, %r14
	orq	%r14, %r11
	cmpl	$10, %r12d
	movq	%r11, %rdx
	je	.L1
	movzbl	10(%r13d), %r14d
	salq	$16, %r14
	orq	%r14, %r11
	cmpl	$11, %r12d
	movq	%r11, %rdx
	je	.L1
	movzbl	11(%r13d), %r14d
	salq	$24, %r14
	orq	%r14, %r11
	cmpl	$12, %r12d
	movq	%r11, %rdx
	je	.L1
	movzbl	12(%r13d), %r14d
	salq	$32, %r14
	orq	%r14, %r11
	cmpl	$13, %r12d
	movq	%r11, %rdx
	je	.L1
	movzbl	13(%r13d), %r14d
	salq	$40, %r14
	orq	%r14, %r11
	cmpl	$14, %r12d
	movq	%r11, %rdx
	je	.L1
	movzbl	14(%r13d), %r14d
	salq	$48, %r14
	orq	%r14, %r11
	cmpl	$16, %r12d
	movq	%r11, %rdx
	jne	.L1
	movzbl	15(%r13d), %r12d
	salq	$56, %r12
	orq	%r11, %r12
	movq	%r12, %rdx
.L1:
	addl	$184, %esp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
.LCFI3:
	ret
	.p2align 4,,10
	.p2align 3
.L78:
.LCFI4:
	movsbq	-184(%ebp), %rax
	addl	$184, %esp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
.LCFI5:
	ret
	.p2align 4,,10
	.p2align 3
.L81:
.LCFI6:
	movslq	-184(%ebp), %rax
	jmp	.L1
	.p2align 4,,10
	.p2align 3
.L84:
	movzbl	-184(%ebp), %eax
	jmp	.L1
	.p2align 4,,10
	.p2align 3
.L85:
	movswq	-184(%ebp), %rax
	jmp	.L1
	.p2align 4,,10
	.p2align 3
.L80:
	movl	-184(%ebp), %eax
	jmp	.L1
	.p2align 4,,10
	.p2align 3
.L86:
	movzwl	-184(%ebp), %eax
	jmp	.L1
	.p2align 4,,10
	.p2align 3
.L87:
	movss	-184(%ebp), %xmm0
	jmp	.L1
	.p2align 4,,10
	.p2align 3
.L82:
	movq	-184(%ebp), %rax
	jmp	.L1
.L88:
	movsd	-184(%ebp), %xmm0
	jmp	.L1
.L89:
	movslq	-200(%ebp), %rax
	jmp	.L1
.LFE0:
	.size	__vacall_r, .-__vacall_r
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.section	.text.unlikely
.LCOLDB1:
	.text
.LHOTB1:
	.p2align 4,,15
	.globl	get__vacall_r
	.type	get__vacall_r, @function
get__vacall_r:
.LFB1:
	pushq	%rbp
.LCFI7:
	leal	__vacall_r(%rip), %eax
	movl	%esp, %ebp
.LCFI8:
	popq	%rbp
.LCFI9:
	ret
.LFE1:
	.size	get__vacall_r, .-get__vacall_r
	.section	.text.unlikely
.LCOLDE1:
	.text
.LHOTE1:
	.section	.eh_frame,"a",@progbits
.Lframe1:
	.long	.LECIE1-.LSCIE1
.LSCIE1:
	.long	0
	.byte	0x3
	.string	"zR"
	.uleb128 0x1
	.sleb128 -8
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1b
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x1
	.align 4
.LECIE1:
.LSFDE1:
	.long	.LEFDE1-.LASFDE1
.LASFDE1:
	.long	.LASFDE1-.Lframe1
	.long	.LFB0-.
	.long	.LFE0-.LFB0
	.uleb128 0
	.byte	0x4
	.long	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x4
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xa
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xb
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xa
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xb
	.align 4
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.long	.LFB1-.
	.long	.LFE1-.LFB1
	.uleb128 0
	.byte	0x4
	.long	.LCFI7-.LFB1
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 4
.LEFDE3:
	.ident	"GCC: (GNU) 5.4.0"
	.section	.note.GNU-stack,"",@progbits
