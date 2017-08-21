	.file	"avcall-x86_64.c"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB1:
	.text
.LHOTB1:
	.p2align 4,,15
	.globl	__builtin_avcall
	.type	__builtin_avcall, @function
__builtin_avcall:
.LFB0:
	pushq	%rbp
.LCFI0:
	leal	152(%rdi), %eax
	movl	%esp, %ebp
.LCFI1:
	pushq	%r13
	pushq	%r12
	pushq	%rbx
.LCFI2:
	movq	%rdi, %rbx
	subl	$8, %esp
	movl	20(%edi), %r11d
	movl	80(%edi), %r13d
	subl	$2064, %esp
	leal	15(%rsp), %r12d
	subl	%eax, %r11d
	leal	88(%rdi), %eax
	andl	$-16, %r12d
	subl	%eax, %r13d
	sarl	$3, %r13d
	cmpl	$7, %r11d
	jle	.L6
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L5:
	movq	152(%eax,%ebx), %r10
	movq	%r10, (%r12d,%eax)
	addl	$8, %eax
	cmpl	%r11d, %eax
	jne	.L5
.L6:
	movl	12(%ebx), %eax
	movq	32(%ebx), %rdi
	movq	40(%ebx), %rsi
	movq	48(%ebx), %rdx
	movq	56(%ebx), %rcx
	movq	64(%ebx), %r8
	cmpl	$13, %eax
	movq	72(%ebx), %r9
	je	.L116
	cmpl	$14, %eax
	je	.L117
	cmpl	$7, %r13d
	movl	(%ebx), %r10d
	jle	.L39
	movsd	144(%ebx), %xmm14
.L40:
	movsd	136(%ebx), %xmm13
.L42:
	movsd	128(%ebx), %xmm12
.L44:
	movsd	120(%ebx), %xmm11
.L46:
	movsd	112(%ebx), %xmm10
.L48:
	movsd	104(%ebx), %xmm9
.L50:
	movsd	96(%ebx), %xmm8
.L52:
	movsd	88(%ebx), %xmm15
.L53:
	movapd	%xmm14, %xmm7
	movapd	%xmm13, %xmm6
	movapd	%xmm12, %xmm5
	movl	$8, %eax
	movapd	%xmm11, %xmm4
	movapd	%xmm10, %xmm3
	movapd	%xmm9, %xmm2
	movapd	%xmm8, %xmm1
	movapd	%xmm15, %xmm0
	call	*%r10
	movl	12(%ebx), %r11d
	movq	%rdx, %r10
	cmpl	$1, %r11d
	je	.L22
	testl	%r11d, %r11d
	je	.L113
	cmpl	$2, %r11d
	je	.L107
	cmpl	$3, %r11d
	je	.L107
	cmpl	$4, %r11d
	je	.L107
	cmpl	$5, %r11d
	je	.L108
	cmpl	$6, %r11d
	je	.L108
	cmpl	$7, %r11d
	je	.L112
	cmpl	$8, %r11d
	je	.L112
	cmpl	$9, %r11d
	je	.L112
	cmpl	$10, %r11d
	je	.L112
	cmpl	$11, %r11d
	je	.L113
	cmpl	$12, %r11d
	je	.L113
	cmpl	$15, %r11d
	je	.L112
	cmpl	$16, %r11d
	jne	.L22
	movl	4(%ebx), %r11d
	testb	$1, %r11b
	je	.L69
	movl	16(%ebx), %r10d
	cmpl	$1, %r10d
	je	.L118
	cmpl	$2, %r10d
	je	.L119
	cmpl	$4, %r10d
	je	.L120
	addl	$7, %r10d
	shrl	$3, %r10d
	subl	$1, %r10d
	cmpl	$-1, %r10d
	je	.L22
	movl	8(%ebx), %r11d
.L73:
	movq	(%eax,%r10d,8), %rbx
	movq	%rbx, (%r11d,%r10d,8)
	subl	$1, %r10d
	cmpl	$-1, %r10d
	jne	.L73
.L22:
	leal	-24(%rbp), %esp
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
.LCFI3:
	ret
.L39:
.LCFI4:
	je	.L121
	cmpl	$6, %r13d
	je	.L122
	cmpl	$5, %r13d
	je	.L123
	cmpl	$4, %r13d
	je	.L124
	cmpl	$3, %r13d
	je	.L125
	cmpl	$2, %r13d
	je	.L126
	pxor	%xmm8, %xmm8
	cmpl	$1, %r13d
	movapd	%xmm8, %xmm9
	movapd	%xmm8, %xmm10
	movapd	%xmm8, %xmm11
	movapd	%xmm8, %xmm12
	movapd	%xmm8, %xmm13
	movapd	%xmm8, %xmm14
	je	.L52
	movapd	%xmm8, %xmm15
	jmp	.L53
.L116:
	cmpl	$7, %r13d
	movl	8(%ebx), %r12d
	movl	(%ebx), %r10d
	jle	.L7
	movsd	144(%ebx), %xmm14
.L8:
	movsd	136(%ebx), %xmm13
.L10:
	movsd	128(%ebx), %xmm12
.L12:
	movsd	120(%ebx), %xmm11
.L14:
	movsd	112(%ebx), %xmm10
.L16:
	movsd	104(%ebx), %xmm9
.L18:
	movsd	96(%ebx), %xmm8
.L20:
	movsd	88(%ebx), %xmm15
	jmp	.L21
.L117:
	cmpl	$7, %r13d
	movl	8(%ebx), %r12d
	movl	(%ebx), %r10d
	jle	.L24
	movsd	144(%ebx), %xmm14
.L25:
	movsd	136(%ebx), %xmm13
.L27:
	movsd	128(%ebx), %xmm12
.L29:
	movsd	120(%ebx), %xmm11
.L31:
	movsd	112(%ebx), %xmm10
.L33:
	movsd	104(%ebx), %xmm9
.L35:
	movsd	96(%ebx), %xmm8
.L37:
	movsd	88(%ebx), %xmm15
.L38:
	movl	$8, %eax
	movapd	%xmm14, %xmm7
	movapd	%xmm13, %xmm6
	movapd	%xmm12, %xmm5
	movapd	%xmm11, %xmm4
	movapd	%xmm10, %xmm3
	movapd	%xmm9, %xmm2
	movapd	%xmm8, %xmm1
	movapd	%xmm15, %xmm0
	call	*%r10
	movsd	%xmm0, (%r12d)
	leal	-24(%rbp), %esp
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
.LCFI5:
	ret
.L7:
.LCFI6:
	je	.L127
	cmpl	$6, %r13d
	je	.L128
	cmpl	$5, %r13d
	je	.L129
	cmpl	$4, %r13d
	je	.L130
	cmpl	$3, %r13d
	je	.L131
	cmpl	$2, %r13d
	je	.L132
	pxor	%xmm8, %xmm8
	cmpl	$1, %r13d
	movapd	%xmm8, %xmm9
	movapd	%xmm8, %xmm10
	movapd	%xmm8, %xmm11
	movapd	%xmm8, %xmm12
	movapd	%xmm8, %xmm13
	movapd	%xmm8, %xmm14
	movapd	%xmm8, %xmm15
	je	.L20
.L21:
	movl	$8, %eax
	movapd	%xmm14, %xmm7
	movapd	%xmm13, %xmm6
	movapd	%xmm12, %xmm5
	movapd	%xmm11, %xmm4
	movapd	%xmm10, %xmm3
	movapd	%xmm9, %xmm2
	movapd	%xmm8, %xmm1
	movapd	%xmm15, %xmm0
	call	*%r10
	movss	%xmm0, (%r12d)
	leal	-24(%rbp), %esp
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
.LCFI7:
	ret
.L126:
.LCFI8:
	pxor	%xmm9, %xmm9
	movapd	%xmm9, %xmm10
	movapd	%xmm9, %xmm11
	movapd	%xmm9, %xmm12
	movapd	%xmm9, %xmm13
	movapd	%xmm9, %xmm14
	jmp	.L50
.L24:
	je	.L133
	cmpl	$6, %r13d
	je	.L134
	cmpl	$5, %r13d
	je	.L135
	cmpl	$4, %r13d
	je	.L136
	cmpl	$3, %r13d
	je	.L137
	cmpl	$2, %r13d
	je	.L138
	pxor	%xmm8, %xmm8
	cmpl	$1, %r13d
	movapd	%xmm8, %xmm9
	movapd	%xmm8, %xmm10
	movapd	%xmm8, %xmm11
	movapd	%xmm8, %xmm12
	movapd	%xmm8, %xmm13
	movapd	%xmm8, %xmm14
	movapd	%xmm8, %xmm15
	jne	.L38
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L107:
	movl	8(%ebx), %r10d
	movb	%al, (%r10d)
	leal	-24(%rbp), %esp
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
.LCFI9:
	ret
.L112:
.LCFI10:
	movl	8(%ebx), %r10d
	movl	%eax, (%r10d)
	jmp	.L22
.L113:
	movl	8(%ebx), %r10d
	movq	%rax, (%r10d)
	leal	-24(%rbp), %esp
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
.LCFI11:
	ret
.L132:
.LCFI12:
	pxor	%xmm9, %xmm9
	movapd	%xmm9, %xmm10
	movapd	%xmm9, %xmm11
	movapd	%xmm9, %xmm12
	movapd	%xmm9, %xmm13
	movapd	%xmm9, %xmm14
	jmp	.L18
.L108:
	movl	8(%ebx), %r10d
	movw	%ax, (%r10d)
	jmp	.L22
.L138:
	pxor	%xmm9, %xmm9
	movapd	%xmm9, %xmm10
	movapd	%xmm9, %xmm11
	movapd	%xmm9, %xmm12
	movapd	%xmm9, %xmm13
	movapd	%xmm9, %xmm14
	jmp	.L35
.L121:
	pxor	%xmm14, %xmm14
	jmp	.L40
.L120:
	movl	(%eax), %r10d
	movl	8(%ebx), %eax
	movl	%r10d, (%eax)
	jmp	.L22
.L119:
	movzwl	(%eax), %r10d
	movl	8(%ebx), %eax
	movw	%r10w, (%eax)
	jmp	.L22
.L118:
	movzbl	(%eax), %eax
	movl	8(%ebx), %r10d
	movb	%al, (%r10d)
	jmp	.L22
.L69:
	andl	$512, %r11d
	je	.L22
	movl	16(%ebx), %r11d
	leal	-1(%r11), %r12d
	cmpl	$15, %r12d
	ja	.L22
	cmpl	$1, %r11d
	je	.L107
	cmpl	$2, %r11d
	je	.L139
	cmpl	$3, %r11d
	je	.L140
	cmpl	$4, %r11d
	je	.L141
	cmpl	$5, %r11d
	je	.L142
	cmpl	$6, %r11d
	je	.L143
	cmpl	$7, %r11d
	je	.L144
	movl	8(%ebx), %r11d
	movq	%rax, %r12
	sarq	$8, %r12
	movb	%al, (%r11d)
	movl	8(%ebx), %r11d
	movb	%r12b, 1(%r11d)
	movl	8(%ebx), %r11d
	movq	%rax, %r12
	sarq	$16, %r12
	movb	%r12b, 2(%r11d)
	movl	8(%ebx), %r11d
	movq	%rax, %r12
	sarq	$24, %r12
	movb	%r12b, 3(%r11d)
	movl	8(%ebx), %r11d
	movq	%rax, %r12
	sarq	$32, %r12
	movb	%r12b, 4(%r11d)
	movl	8(%ebx), %r11d
	movq	%rax, %r12
	sarq	$40, %r12
	movb	%r12b, 5(%r11d)
	movl	8(%ebx), %r11d
	movq	%rax, %r12
	sarq	$48, %r12
	sarq	$56, %rax
	movb	%r12b, 6(%r11d)
	movl	8(%ebx), %r11d
	movb	%al, 7(%r11d)
	movl	16(%ebx), %eax
	cmpl	$8, %eax
	je	.L22
	cmpl	$9, %eax
	je	.L145
	cmpl	$10, %eax
	je	.L146
	cmpl	$11, %eax
	je	.L147
	cmpl	$12, %eax
	je	.L148
	cmpl	$13, %eax
	je	.L149
	cmpl	$14, %eax
	je	.L150
	cmpl	$15, %eax
	je	.L151
	cmpl	$16, %eax
	jne	.L22
	movl	8(%ebx), %eax
	movq	%rdx, %r11
	sarq	$56, %r10
	sarq	$8, %r11
	movb	%dl, 8(%eax)
	movl	8(%ebx), %eax
	movb	%r11b, 9(%eax)
	movl	8(%ebx), %eax
	movq	%rdx, %r11
	sarq	$16, %r11
	movb	%r11b, 10(%eax)
	movl	8(%ebx), %eax
	movq	%rdx, %r11
	sarq	$24, %r11
	movb	%r11b, 11(%eax)
	movl	8(%ebx), %eax
	movq	%rdx, %r11
	sarq	$32, %r11
	movb	%r11b, 12(%eax)
	movl	8(%ebx), %eax
	movq	%rdx, %r11
	sarq	$40, %r11
	movb	%r11b, 13(%eax)
	movl	8(%ebx), %eax
	movq	%rdx, %r11
	sarq	$48, %r11
	movb	%r11b, 14(%eax)
	movl	8(%ebx), %eax
	movb	%r10b, 15(%eax)
	jmp	.L22
.L122:
	pxor	%xmm13, %xmm13
	movapd	%xmm13, %xmm14
	jmp	.L42
.L123:
	pxor	%xmm12, %xmm12
	movapd	%xmm12, %xmm13
	movapd	%xmm12, %xmm14
	jmp	.L44
.L151:
	movl	8(%ebx), %eax
	movq	%rdx, %r11
	sarq	$48, %r10
	sarq	$8, %r11
	movb	%dl, 8(%eax)
	movl	8(%ebx), %eax
	movb	%r11b, 9(%eax)
	movl	8(%ebx), %eax
	movq	%rdx, %r11
	sarq	$16, %r11
	movb	%r11b, 10(%eax)
	movl	8(%ebx), %eax
	movq	%rdx, %r11
	sarq	$24, %r11
	movb	%r11b, 11(%eax)
	movl	8(%ebx), %eax
	movq	%rdx, %r11
	sarq	$32, %r11
	movb	%r11b, 12(%eax)
	movl	8(%ebx), %eax
	movq	%rdx, %r11
	sarq	$40, %r11
	movb	%r11b, 13(%eax)
	movl	8(%ebx), %eax
	movb	%r10b, 14(%eax)
	jmp	.L22
.L150:
	movl	8(%ebx), %eax
	movq	%rdx, %r11
	sarq	$40, %r10
	sarq	$8, %r11
	movb	%dl, 8(%eax)
	movl	8(%ebx), %eax
	movb	%r11b, 9(%eax)
	movl	8(%ebx), %eax
	movq	%rdx, %r11
	sarq	$16, %r11
	movb	%r11b, 10(%eax)
	movl	8(%ebx), %eax
	movq	%rdx, %r11
	sarq	$24, %r11
	movb	%r11b, 11(%eax)
	movl	8(%ebx), %eax
	movq	%rdx, %r11
	sarq	$32, %r11
	movb	%r11b, 12(%eax)
	movl	8(%ebx), %eax
	movb	%r10b, 13(%eax)
	jmp	.L22
.L149:
	movl	8(%ebx), %eax
	movq	%rdx, %r11
	sarq	$32, %r10
	sarq	$8, %r11
	movb	%dl, 8(%eax)
	movl	8(%ebx), %eax
	movb	%r11b, 9(%eax)
	movl	8(%ebx), %eax
	movq	%rdx, %r11
	sarq	$16, %r11
	movb	%r11b, 10(%eax)
	movl	8(%ebx), %eax
	movq	%rdx, %r11
	sarq	$24, %r11
	movb	%r11b, 11(%eax)
	movl	8(%ebx), %eax
	movb	%r10b, 12(%eax)
	jmp	.L22
.L148:
	movl	8(%ebx), %eax
	movq	%rdx, %r11
	sarq	$24, %r10
	sarq	$8, %r11
	movb	%dl, 8(%eax)
	movl	8(%ebx), %eax
	movb	%r11b, 9(%eax)
	movl	8(%ebx), %eax
	movq	%rdx, %r11
	sarq	$16, %r11
	movb	%r11b, 10(%eax)
	movl	8(%ebx), %eax
	movb	%r10b, 11(%eax)
	jmp	.L22
.L147:
	movl	8(%ebx), %eax
	movq	%rdx, %r11
	sarq	$16, %r10
	sarq	$8, %r11
	movb	%dl, 8(%eax)
	movl	8(%ebx), %eax
	movb	%r11b, 9(%eax)
	movl	8(%ebx), %eax
	movb	%r10b, 10(%eax)
	jmp	.L22
.L146:
	movl	8(%ebx), %eax
	sarq	$8, %r10
	movb	%dl, 8(%eax)
	movl	8(%ebx), %eax
	movb	%r10b, 9(%eax)
	jmp	.L22
.L145:
	movl	8(%ebx), %eax
	movb	%dl, 8(%eax)
	jmp	.L22
.L144:
	movl	8(%ebx), %r10d
	movq	%rax, %r11
	sarq	$8, %r11
	movb	%al, (%r10d)
	movl	8(%ebx), %r10d
	movb	%r11b, 1(%r10d)
	movl	8(%ebx), %r10d
	movq	%rax, %r11
	sarq	$16, %r11
	movb	%r11b, 2(%r10d)
	movl	8(%ebx), %r10d
	movq	%rax, %r11
	sarq	$24, %r11
	movb	%r11b, 3(%r10d)
	movl	8(%ebx), %r10d
	movq	%rax, %r11
	sarq	$32, %r11
	movb	%r11b, 4(%r10d)
	movl	8(%ebx), %r10d
	movq	%rax, %r11
	sarq	$40, %r11
	sarq	$48, %rax
	movb	%r11b, 5(%r10d)
	movl	8(%ebx), %r10d
	movb	%al, 6(%r10d)
	jmp	.L22
.L143:
	movl	8(%ebx), %r10d
	movq	%rax, %r11
	sarq	$8, %r11
	movb	%al, (%r10d)
	movl	8(%ebx), %r10d
	movb	%r11b, 1(%r10d)
	movl	8(%ebx), %r10d
	movq	%rax, %r11
	sarq	$16, %r11
	movb	%r11b, 2(%r10d)
	movl	8(%ebx), %r10d
	movq	%rax, %r11
	sarq	$24, %r11
	movb	%r11b, 3(%r10d)
	movl	8(%ebx), %r10d
	movq	%rax, %r11
	sarq	$32, %r11
	sarq	$40, %rax
	movb	%r11b, 4(%r10d)
	movl	8(%ebx), %r10d
	movb	%al, 5(%r10d)
	jmp	.L22
.L142:
	movl	8(%ebx), %r10d
	movq	%rax, %r11
	sarq	$8, %r11
	movb	%al, (%r10d)
	movl	8(%ebx), %r10d
	movb	%r11b, 1(%r10d)
	movl	8(%ebx), %r10d
	movq	%rax, %r11
	sarq	$16, %r11
	movb	%r11b, 2(%r10d)
	movl	8(%ebx), %r10d
	movq	%rax, %r11
	sarq	$24, %r11
	sarq	$32, %rax
	movb	%r11b, 3(%r10d)
	movl	8(%ebx), %r10d
	movb	%al, 4(%r10d)
	jmp	.L22
.L141:
	movl	8(%ebx), %r10d
	movq	%rax, %r11
	sarq	$8, %r11
	movb	%al, (%r10d)
	movl	8(%ebx), %r10d
	movb	%r11b, 1(%r10d)
	movl	8(%ebx), %r10d
	movq	%rax, %r11
	sarq	$16, %r11
	sarq	$24, %rax
	movb	%r11b, 2(%r10d)
	movl	8(%ebx), %r10d
	movb	%al, 3(%r10d)
	jmp	.L22
.L140:
	movl	8(%ebx), %r10d
	movq	%rax, %r11
	sarq	$8, %r11
	movb	%al, (%r10d)
	movl	8(%ebx), %r10d
	sarq	$16, %rax
	movb	%r11b, 1(%r10d)
	movl	8(%ebx), %r10d
	movb	%al, 2(%r10d)
	jmp	.L22
.L139:
	movl	8(%ebx), %r10d
	movb	%al, (%r10d)
	movl	8(%ebx), %r10d
	sarq	$8, %rax
	movb	%al, 1(%r10d)
	jmp	.L22
.L124:
	pxor	%xmm11, %xmm11
	movapd	%xmm11, %xmm12
	movapd	%xmm11, %xmm13
	movapd	%xmm11, %xmm14
	jmp	.L46
.L125:
	pxor	%xmm10, %xmm10
	movapd	%xmm10, %xmm11
	movapd	%xmm10, %xmm12
	movapd	%xmm10, %xmm13
	movapd	%xmm10, %xmm14
	jmp	.L48
.L137:
	pxor	%xmm10, %xmm10
	movapd	%xmm10, %xmm11
	movapd	%xmm10, %xmm12
	movapd	%xmm10, %xmm13
	movapd	%xmm10, %xmm14
	jmp	.L33
.L136:
	pxor	%xmm11, %xmm11
	movapd	%xmm11, %xmm12
	movapd	%xmm11, %xmm13
	movapd	%xmm11, %xmm14
	jmp	.L31
.L135:
	pxor	%xmm12, %xmm12
	movapd	%xmm12, %xmm13
	movapd	%xmm12, %xmm14
	jmp	.L29
.L134:
	pxor	%xmm13, %xmm13
	movapd	%xmm13, %xmm14
	jmp	.L27
.L133:
	pxor	%xmm14, %xmm14
	jmp	.L25
.L131:
	pxor	%xmm10, %xmm10
	movapd	%xmm10, %xmm11
	movapd	%xmm10, %xmm12
	movapd	%xmm10, %xmm13
	movapd	%xmm10, %xmm14
	jmp	.L16
.L130:
	pxor	%xmm11, %xmm11
	movapd	%xmm11, %xmm12
	movapd	%xmm11, %xmm13
	movapd	%xmm11, %xmm14
	jmp	.L14
.L129:
	pxor	%xmm12, %xmm12
	movapd	%xmm12, %xmm13
	movapd	%xmm12, %xmm14
	jmp	.L12
.L128:
	pxor	%xmm13, %xmm13
	movapd	%xmm13, %xmm14
	jmp	.L10
.L127:
	pxor	%xmm14, %xmm14
	jmp	.L8
.LFE0:
	.size	__builtin_avcall, .-__builtin_avcall
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
	.byte	0x8d
	.uleb128 0x3
	.byte	0x8c
	.uleb128 0x4
	.byte	0x83
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
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xa
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xb
	.byte	0x4
	.long	.LCFI9-.LCFI8
	.byte	0xa
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xb
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xa
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xb
	.align 4
.LEFDE1:
	.ident	"GCC: (GNU) 5.4.0"
	.section	.note.GNU-stack,"",@progbits
