	.file	"vacall-x86_64.c"
	.text
	.p2align 4,,15
.globl __vacall
	.type	__vacall, @function
__vacall:
.LFB2:
	pushq	%rbp
.LCFI0:
	movq	%rsp, %rbp
.LCFI1:
	pushq	%r13
.LCFI2:
	leaq	16(%rbp), %r10
	pushq	%r12
.LCFI3:
	subq	$192, %rsp
.LCFI4:
	movq	%r10, -200(%rbp)
	leaq	-208(%rbp), %r10
	movq	%rdi, -72(%rbp)
	movq	%rsi, -64(%rbp)
	movsd	%xmm0, -144(%rbp)
	leaq	136(%r10), %r11
	movq	%r10, %rdi
	movq	%rdx, -56(%rbp)
	movq	%rcx, -48(%rbp)
	movsd	%xmm1, -136(%rbp)
	movq	%r11, -80(%rbp)
	leaq	64(%r10), %r11
	movq	%r8, -40(%rbp)
	movq	%r9, -32(%rbp)
	movsd	%xmm2, -128(%rbp)
	movsd	%xmm3, -120(%rbp)
	movl	$0, -208(%rbp)
	movq	$0, -192(%rbp)
	movsd	%xmm4, -112(%rbp)
	movl	$0, -184(%rbp)
	movsd	%xmm5, -104(%rbp)
	movq	%r11, -152(%rbp)
	movsd	%xmm6, -96(%rbp)
	movsd	%xmm7, -88(%rbp)
	call	*vacall_function(%rip)
	movl	-184(%rbp), %r10d
	testl	%r10d, %r10d
	je	.L65
	cmpl	$1, %r10d
	je	.L66
	cmpl	$2, %r10d
	je	.L66
	cmpl	$3, %r10d
	.p2align 4,,5
	je	.L72
	cmpl	$4, %r10d
	.p2align 4,,5
	je	.L73
	cmpl	$5, %r10d
	.p2align 4,,5
	je	.L74
	cmpl	$6, %r10d
	.p2align 4,,5
	je	.L75
	cmpl	$7, %r10d
	.p2align 4,,5
	je	.L76
	cmpl	$8, %r10d
	.p2align 4,,5
	je	.L70
	cmpl	$9, %r10d
	.p2align 4,,5
	je	.L70
	cmpl	$10, %r10d
	.p2align 4,,5
	je	.L70
	cmpl	$11, %r10d
	.p2align 4,,5
	je	.L70
	cmpl	$12, %r10d
	.p2align 4,,5
	je	.L77
	cmpl	$13, %r10d
	.p2align 4,,5
	je	.L78
	cmpl	$14, %r10d
	.p2align 4,,5
	je	.L70
	cmpl	$15, %r10d
	.p2align 4,,5
	jne	.L65
	movl	-208(%rbp), %r11d
	movl	%r11d, %r10d
	andl	$1, %r10d
	testl	%r10d, %r10d
	je	.L33
	movq	-192(%rbp), %rax
	.p2align 4,,7
.L65:
	addq	$192, %rsp
	popq	%r12
	popq	%r13
	leave
	ret
	.p2align 4,,7
.L66:
	movsbq	-168(%rbp),%rax
	addq	$192, %rsp
	popq	%r12
	popq	%r13
	leave
	ret
.L73:
	movswq	-168(%rbp),%rax
	jmp	.L65
.L72:
	movzbq	-168(%rbp), %rax
	jmp	.L65
.L70:
	movq	-168(%rbp), %rax
	jmp	.L65
.L74:
	movzwq	-168(%rbp), %rax
	jmp	.L65
.L75:
	movslq	-168(%rbp),%rax
	jmp	.L65
.L76:
	mov	-168(%rbp), %eax
	jmp	.L65
.L77:
	movss	-168(%rbp), %xmm0
	jmp	.L65
.L78:
	movlpd	-168(%rbp), %xmm0
	jmp	.L65
.L33:
	andl	$1024, %r11d
	testl	%r11d, %r11d
	je	.L65
	movq	-176(%rbp), %r12
	leaq	-1(%r12), %r10
	cmpq	$15, %r10
	ja	.L65
	movq	-192(%rbp), %r11
	cmpq	$1, %r12
	movzbq	(%r11), %r13
	movq	%r13, %rax
	jbe	.L37
	movzbq	1(%r11), %r10
	salq	$8, %r10
	orq	%r10, %rax
.L37:
	cmpq	$2, %r12
	jbe	.L39
	movzbq	2(%r11), %r10
	salq	$16, %r10
	orq	%r10, %rax
.L39:
	cmpq	$3, %r12
	jbe	.L41
	movzbq	3(%r11), %r10
	salq	$24, %r10
	orq	%r10, %rax
.L41:
	cmpq	$4, %r12
	jbe	.L43
	movzbq	4(%r11), %r10
	salq	$32, %r10
	orq	%r10, %rax
.L43:
	cmpq	$5, %r12
	jbe	.L45
	movzbq	5(%r11), %r10
	salq	$40, %r10
	orq	%r10, %rax
.L45:
	cmpq	$6, %r12
	jbe	.L47
	movzbq	6(%r11), %r10
	salq	$48, %r10
	orq	%r10, %rax
.L47:
	cmpq	$7, %r12
	jbe	.L49
	movzbq	7(%r11), %r10
	salq	$56, %r10
	orq	%r10, %rax
.L49:
	cmpq	$8, %r12
	jbe	.L65
	movzbq	8(%r11), %r13
	cmpq	$9, %r12
	movq	%r13, %rdx
	jbe	.L52
	movzbq	9(%r11), %r10
	salq	$8, %r10
	orq	%r10, %rdx
.L52:
	cmpq	$10, %r12
	jbe	.L54
	movzbq	10(%r11), %r10
	salq	$16, %r10
	orq	%r10, %rdx
.L54:
	cmpq	$11, %r12
	jbe	.L56
	movzbq	11(%r11), %r10
	salq	$24, %r10
	orq	%r10, %rdx
.L56:
	cmpq	$12, %r12
	jbe	.L58
	movzbq	12(%r11), %r10
	salq	$32, %r10
	orq	%r10, %rdx
.L58:
	cmpq	$13, %r12
	jbe	.L60
	movzbq	13(%r11), %r10
	salq	$40, %r10
	orq	%r10, %rdx
.L60:
	cmpq	$14, %r12
	jbe	.L62
	movzbq	14(%r11), %r10
	salq	$48, %r10
	orq	%r10, %rdx
.L62:
	cmpq	$15, %r12
	jbe	.L65
	movzbq	15(%r11), %r10
	salq	$56, %r10
	orq	%r10, %rdx
	jmp	.L65
.LFE2:
	.size	__vacall, .-__vacall
	.section	.eh_frame,"a",@progbits
.Lframe1:
	.long	.LECIE1-.LSCIE1
.LSCIE1:
	.long	0x0
	.byte	0x1
	.string	""
	.uleb128 0x1
	.sleb128 -8
	.byte	0x10
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
	.quad	.LFB2
	.quad	.LFE2-.LFB2
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
	.long	.LCFI4-.LCFI1
	.byte	0x8c
	.uleb128 0x4
	.byte	0x8d
	.uleb128 0x3
	.align 8
.LEFDE1:
	.ident	"GCC: (GNU) 4.0.2"
	.section	.note.GNU-stack,"",@progbits
