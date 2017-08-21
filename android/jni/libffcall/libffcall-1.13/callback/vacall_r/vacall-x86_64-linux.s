	.file	"vacall-x86_64.c"
	.text
	.p2align 4,,15
	.type	__vacall_r, @function
__vacall_r:
.LFB2:
	pushq	%rbp
.LCFI0:
	movq	%rsp, %rbp
.LCFI1:
	movq	%r12, -24(%rbp)
.LCFI2:
	leaq	16(%rbp), %r11
	leaq	-224(%rbp), %r12
	movq	%r13, -16(%rbp)
.LCFI3:
	movq	%r14, -8(%rbp)
.LCFI4:
	subq	$224, %rsp
.LCFI5:
	movq	%r11, -216(%rbp)
	leaq	136(%r12), %r11
	movq	%rdi, -88(%rbp)
	movq	%rsi, -80(%rbp)
	movq	$0, -208(%rbp)
	movsd	%xmm0, -160(%rbp)
	movq	%r11, -96(%rbp)
	leaq	64(%r12), %r11
	movq	%rdx, -72(%rbp)
	movq	%rcx, -64(%rbp)
	movsd	%xmm1, -152(%rbp)
	movq	%r12, %rsi
	movq	%r11, -168(%rbp)
	movq	%r8, -56(%rbp)
	movsd	%xmm2, -144(%rbp)
	movq	%r9, -48(%rbp)
	movsd	%xmm3, -136(%rbp)
	movsd	%xmm4, -128(%rbp)
	movl	$0, -224(%rbp)
	movsd	%xmm5, -120(%rbp)
	movl	$0, -200(%rbp)
	movsd	%xmm6, -112(%rbp)
	movq	8(%r10), %rdi
	movsd	%xmm7, -104(%rbp)
	call	*(%r10)
	movl	-200(%rbp), %r11d
	testl	%r11d, %r11d
	je	.L65
	cmpl	$1, %r11d
	je	.L66
	cmpl	$2, %r11d
	je	.L66
	cmpl	$3, %r11d
	.p2align 4,,5
	je	.L72
	cmpl	$4, %r11d
	.p2align 4,,5
	je	.L73
	cmpl	$5, %r11d
	.p2align 4,,5
	je	.L74
	cmpl	$6, %r11d
	.p2align 4,,5
	je	.L75
	cmpl	$7, %r11d
	.p2align 4,,5
	je	.L76
	cmpl	$8, %r11d
	.p2align 4,,5
	je	.L70
	cmpl	$9, %r11d
	.p2align 4,,5
	je	.L70
	cmpl	$10, %r11d
	.p2align 4,,5
	je	.L70
	cmpl	$11, %r11d
	.p2align 4,,5
	je	.L70
	cmpl	$12, %r11d
	.p2align 4,,5
	je	.L77
	cmpl	$13, %r11d
	.p2align 4,,5
	je	.L78
	cmpl	$14, %r11d
	.p2align 4,,5
	je	.L70
	cmpl	$15, %r11d
	.p2align 4,,5
	jne	.L65
	movl	-224(%rbp), %r12d
	movl	%r12d, %r11d
	andl	$1, %r11d
	testl	%r11d, %r11d
	je	.L33
	movq	-208(%rbp), %rax
	.p2align 4,,7
.L65:
	movq	-24(%rbp), %r12
	movq	-16(%rbp), %r13
	movq	-8(%rbp), %r14
	leave
	ret
	.p2align 4,,7
.L66:
	movsbq	-184(%rbp),%rax
	movq	-24(%rbp), %r12
	movq	-16(%rbp), %r13
	movq	-8(%rbp), %r14
	leave
	ret
.L73:
	movswq	-184(%rbp),%rax
	jmp	.L65
.L72:
	movzbq	-184(%rbp), %rax
	jmp	.L65
.L70:
	movq	-184(%rbp), %rax
	jmp	.L65
.L74:
	movzwq	-184(%rbp), %rax
	jmp	.L65
.L75:
	movslq	-184(%rbp),%rax
	jmp	.L65
.L76:
	mov	-184(%rbp), %eax
	jmp	.L65
.L77:
	movss	-184(%rbp), %xmm0
	jmp	.L65
.L78:
	movlpd	-184(%rbp), %xmm0
	jmp	.L65
.L33:
	andl	$1024, %r12d
	testl	%r12d, %r12d
	je	.L65
	movq	-192(%rbp), %r13
	leaq	-1(%r13), %r11
	cmpq	$15, %r11
	ja	.L65
	movq	-208(%rbp), %r12
	cmpq	$1, %r13
	movzbq	(%r12), %r14
	movq	%r14, %rax
	jbe	.L37
	movzbq	1(%r12), %r11
	salq	$8, %r11
	orq	%r11, %rax
.L37:
	cmpq	$2, %r13
	jbe	.L39
	movzbq	2(%r12), %r11
	salq	$16, %r11
	orq	%r11, %rax
.L39:
	cmpq	$3, %r13
	jbe	.L41
	movzbq	3(%r12), %r11
	salq	$24, %r11
	orq	%r11, %rax
.L41:
	cmpq	$4, %r13
	jbe	.L43
	movzbq	4(%r12), %r11
	salq	$32, %r11
	orq	%r11, %rax
.L43:
	cmpq	$5, %r13
	jbe	.L45
	movzbq	5(%r12), %r11
	salq	$40, %r11
	orq	%r11, %rax
.L45:
	cmpq	$6, %r13
	jbe	.L47
	movzbq	6(%r12), %r11
	salq	$48, %r11
	orq	%r11, %rax
.L47:
	cmpq	$7, %r13
	jbe	.L49
	movzbq	7(%r12), %r11
	salq	$56, %r11
	orq	%r11, %rax
.L49:
	cmpq	$8, %r13
	jbe	.L65
	movzbq	8(%r12), %r14
	cmpq	$9, %r13
	movq	%r14, %rdx
	jbe	.L52
	movzbq	9(%r12), %r11
	salq	$8, %r11
	orq	%r11, %rdx
.L52:
	cmpq	$10, %r13
	jbe	.L54
	movzbq	10(%r12), %r11
	salq	$16, %r11
	orq	%r11, %rdx
.L54:
	cmpq	$11, %r13
	jbe	.L56
	movzbq	11(%r12), %r11
	salq	$24, %r11
	orq	%r11, %rdx
.L56:
	cmpq	$12, %r13
	jbe	.L58
	movzbq	12(%r12), %r11
	salq	$32, %r11
	orq	%r11, %rdx
.L58:
	cmpq	$13, %r13
	jbe	.L60
	movzbq	13(%r12), %r11
	salq	$40, %r11
	orq	%r11, %rdx
.L60:
	cmpq	$14, %r13
	jbe	.L62
	movzbq	14(%r12), %r11
	salq	$48, %r11
	orq	%r11, %rdx
.L62:
	cmpq	$15, %r13
	jbe	.L65
	movzbq	15(%r12), %r11
	salq	$56, %r11
	orq	%r11, %rdx
	jmp	.L65
.LFE2:
	.size	__vacall_r, .-__vacall_r
	.p2align 4,,15
.globl get__vacall_r
	.type	get__vacall_r, @function
get__vacall_r:
.LFB3:
	pushq	%rbp
.LCFI6:
	leaq	__vacall_r(%rip), %rax
	movq	%rsp, %rbp
.LCFI7:
	leave
	ret
.LFE3:
	.size	get__vacall_r, .-get__vacall_r
	.section	.eh_frame,"a",@progbits
.Lframe1:
	.long	.LECIE1-.LSCIE1
.LSCIE1:
	.long	0x0
	.byte	0x1
	.string	"zR"
	.uleb128 0x1
	.sleb128 -8
	.byte	0x10
	.uleb128 0x1
	.byte	0x1b
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x1
	.align 8
.LECIE1:
.LSFDE1:
	.long	.LEFDE1-.LASFDE1
.LASFDE1:
	.long	.LASFDE1-.Lframe1
	.long	.LFB2-.
	.long	.LFE2-.LFB2
	.uleb128 0x0
	.byte	0x4
	.long	.LCFI0-.LFB2
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
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI5-.LCFI2
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x4
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.long	.LFB3-.
	.long	.LFE3-.LFB3
	.uleb128 0x0
	.byte	0x4
	.long	.LCFI6-.LFB3
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xd
	.uleb128 0x6
	.align 8
.LEFDE3:
	.ident	"GCC: (GNU) 4.0.2"
	.section	.note.GNU-stack,"",@progbits
