	.file	"vacall-x86_64.c"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,15
	.globl	__vacall
	.type	__vacall, @function
__vacall:
.LFB0:
	pushq	%rbp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	pushq	%r13
	pushq	%r12
	leal	-192(%rbp), %r10d
	leal	16(%rbp), %r11d
	subl	$176, %esp
.LCFI2:
	movq	%rdi, -72(%ebp)
	movq	%rsi, -64(%ebp)
	movl	%r11d, -188(%ebp)
	leal	120(%r10), %r11d
	movq	%r10, %rdi
	movq	%rdx, -56(%ebp)
	movq	%rcx, -48(%ebp)
	movsd	%xmm0, -144(%ebp)
	movl	%r11d, -80(%ebp)
	leal	48(%r10), %r11d
	movl	vacall_function(%rip), %r10d
	movq	%r8, -40(%ebp)
	movsd	%xmm1, -136(%ebp)
	movq	%r9, -32(%ebp)
	movsd	%xmm2, -128(%ebp)
	movl	$0, -192(%ebp)
	movsd	%xmm3, -120(%ebp)
	movl	$0, -184(%ebp)
	movsd	%xmm4, -112(%ebp)
	movl	$0, -180(%ebp)
	movsd	%xmm5, -104(%ebp)
	movl	%r11d, -152(%ebp)
	movsd	%xmm6, -96(%ebp)
	movsd	%xmm7, -88(%ebp)
	call	*%r10
	movl	-180(%ebp), %r10d
	testl	%r10d, %r10d
	je	.L1
	cmpl	$1, %r10d
	je	.L78
	cmpl	$2, %r10d
	je	.L78
	cmpl	$3, %r10d
	je	.L84
	cmpl	$4, %r10d
	je	.L85
	cmpl	$5, %r10d
	je	.L86
	cmpl	$6, %r10d
	je	.L81
	cmpl	$7, %r10d
	je	.L80
	cmpl	$8, %r10d
	je	.L81
	cmpl	$9, %r10d
	je	.L80
	cmpl	$10, %r10d
	je	.L82
	cmpl	$11, %r10d
	je	.L82
	cmpl	$12, %r10d
	je	.L87
	cmpl	$13, %r10d
	je	.L88
	cmpl	$14, %r10d
	je	.L81
	cmpl	$15, %r10d
	jne	.L1
	movl	-192(%ebp), %r10d
	testb	$1, %r10b
	jne	.L89
	andl	$1024, %r10d
	je	.L1
	movl	-176(%ebp), %r11d
	leal	-1(%r11), %r10d
	cmpl	$15, %r10d
	ja	.L1
	movl	-184(%ebp), %r12d
	cmpl	$1, %r11d
	movzbl	(%r12d), %r10d
	movq	%r10, %rax
	je	.L1
	movzbl	1(%r12d), %r13d
	salq	$8, %r13
	orq	%r13, %r10
	cmpl	$2, %r11d
	movq	%r10, %rax
	je	.L1
	movzbl	2(%r12d), %r13d
	salq	$16, %r13
	orq	%r13, %r10
	cmpl	$3, %r11d
	movq	%r10, %rax
	je	.L1
	movzbl	3(%r12d), %r13d
	salq	$24, %r13
	orq	%r13, %r10
	cmpl	$4, %r11d
	movq	%r10, %rax
	je	.L1
	movzbl	4(%r12d), %r13d
	salq	$32, %r13
	orq	%r13, %r10
	cmpl	$5, %r11d
	movq	%r10, %rax
	je	.L1
	movzbl	5(%r12d), %r13d
	salq	$40, %r13
	orq	%r13, %r10
	cmpl	$6, %r11d
	movq	%r10, %rax
	je	.L1
	movzbl	6(%r12d), %r13d
	salq	$48, %r13
	orq	%r13, %r10
	cmpl	$7, %r11d
	movq	%r10, %rax
	je	.L1
	movzbl	7(%r12d), %r13d
	salq	$56, %r13
	orq	%r10, %r13
	cmpl	$8, %r11d
	movq	%r13, %rax
	je	.L1
	movzbl	8(%r12d), %r10d
	cmpl	$9, %r11d
	movq	%r10, %rdx
	je	.L1
	movzbl	9(%r12d), %r13d
	salq	$8, %r13
	orq	%r13, %r10
	cmpl	$10, %r11d
	movq	%r10, %rdx
	je	.L1
	movzbl	10(%r12d), %r13d
	salq	$16, %r13
	orq	%r13, %r10
	cmpl	$11, %r11d
	movq	%r10, %rdx
	je	.L1
	movzbl	11(%r12d), %r13d
	salq	$24, %r13
	orq	%r13, %r10
	cmpl	$12, %r11d
	movq	%r10, %rdx
	je	.L1
	movzbl	12(%r12d), %r13d
	salq	$32, %r13
	orq	%r13, %r10
	cmpl	$13, %r11d
	movq	%r10, %rdx
	je	.L1
	movzbl	13(%r12d), %r13d
	salq	$40, %r13
	orq	%r13, %r10
	cmpl	$14, %r11d
	movq	%r10, %rdx
	je	.L1
	movzbl	14(%r12d), %r13d
	salq	$48, %r13
	orq	%r13, %r10
	cmpl	$16, %r11d
	movq	%r10, %rdx
	jne	.L1
	movzbl	15(%r12d), %r11d
	salq	$56, %r11
	orq	%r10, %r11
	movq	%r11, %rdx
.L1:
	addl	$176, %esp
	popq	%r12
	popq	%r13
	popq	%rbp
.LCFI3:
	ret
	.p2align 4,,10
	.p2align 3
.L78:
.LCFI4:
	movsbq	-168(%ebp), %rax
	addl	$176, %esp
	popq	%r12
	popq	%r13
	popq	%rbp
.LCFI5:
	ret
	.p2align 4,,10
	.p2align 3
.L81:
.LCFI6:
	movslq	-168(%ebp), %rax
	jmp	.L1
	.p2align 4,,10
	.p2align 3
.L84:
	movzbl	-168(%ebp), %eax
	jmp	.L1
	.p2align 4,,10
	.p2align 3
.L85:
	movswq	-168(%ebp), %rax
	jmp	.L1
	.p2align 4,,10
	.p2align 3
.L80:
	movl	-168(%ebp), %eax
	jmp	.L1
	.p2align 4,,10
	.p2align 3
.L86:
	movzwl	-168(%ebp), %eax
	jmp	.L1
	.p2align 4,,10
	.p2align 3
.L87:
	movss	-168(%ebp), %xmm0
	jmp	.L1
	.p2align 4,,10
	.p2align 3
.L82:
	movq	-168(%ebp), %rax
	jmp	.L1
.L88:
	movsd	-168(%ebp), %xmm0
	jmp	.L1
.L89:
	movslq	-184(%ebp), %rax
	jmp	.L1
.LFE0:
	.size	__vacall, .-__vacall
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
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
	.byte	0x3
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
	.long	.LFB0
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
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x4
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
	.ident	"GCC: (GNU) 5.4.0"
	.section	.note.GNU-stack,"",@progbits
