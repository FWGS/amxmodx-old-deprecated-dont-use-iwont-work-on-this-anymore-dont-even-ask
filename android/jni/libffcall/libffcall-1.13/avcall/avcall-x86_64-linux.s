	.file	"avcall-x86_64.c"
	.text
	.p2align 4,,15
.globl __builtin_avcall
	.type	__builtin_avcall, @function
__builtin_avcall:
.LFB2:
	pushq	%rbp
.LCFI0:
	leaq	112(%rdi), %r10
	movq	%rsp, %rbp
.LCFI1:
	pushq	%r15
.LCFI2:
	pushq	%r14
.LCFI3:
	pushq	%r13
.LCFI4:
	movq	%rdi, %r13
	pushq	%r12
.LCFI5:
	pushq	%rbx
.LCFI6:
	subq	$2088, %rsp
.LCFI7:
	movq	104(%rdi), %rax
	leaq	15(%rsp), %rbx
	subq	%r10, %rax
	leaq	176(%rdi), %r10
	andq	$-16, %rbx
	movq	%rax, %r14
	movq	40(%rdi), %rax
	shrq	$3, %r14
	subq	%r10, %rax
	sarq	$3, %rax
	movslq	%eax,%r12
	testq	%r12, %r12
	jle	.L2
	movq	%rdi, %r10
	xorl	%r11d, %r11d
	.p2align 4,,7
.L4:
	movq	176(%r10), %rax
	addq	$8, %r10
	movq	%rax, (%rbx,%r11,8)
	incq	%r11
	cmpq	%r11, %r12
	jne	.L4
.L2:
	movl	24(%r13), %eax
	movq	56(%r13), %rdi
	movq	64(%r13), %rsi
	movq	72(%r13), %rdx
	movq	80(%r13), %rcx
	movq	88(%r13), %r8
	cmpl	$13, %eax
	movq	96(%r13), %r9
	je	.L169
	cmpl	$14, %eax
	je	.L170
	cmpl	$7, %r14d
	movq	(%r13), %r15
	jle	.L58
	movlpd	168(%r13), %xmm9
.L60:
	movq	160(%r13), %r14
.L63:
	movq	152(%r13), %r12
.L66:
	movq	144(%r13), %rbx
.L69:
	movq	136(%r13), %r11
.L72:
	movq	128(%r13), %rax
.L75:
	movq	120(%r13), %r10
.L78:
	movlpd	112(%r13), %xmm8
.L81:
	movq	%r14, -64(%rbp)
	movsd	%xmm9, %xmm7
	movsd	%xmm8, %xmm0
	movlpd	-64(%rbp), %xmm6
	movq	%r12, -64(%rbp)
	movlpd	-64(%rbp), %xmm5
	movq	%rbx, -64(%rbp)
	movlpd	-64(%rbp), %xmm4
	movq	%r11, -64(%rbp)
	movlpd	-64(%rbp), %xmm3
	movq	%rax, -64(%rbp)
	movl	$8, %eax
	movlpd	-64(%rbp), %xmm2
	movq	%r10, -64(%rbp)
	movlpd	-64(%rbp), %xmm1
	call	*%r15
	movq	%rax, %r11
	movl	24(%r13), %eax
	movq	%rdx, %rbx
	cmpl	$1, %eax
	je	.L31
	testl	%eax, %eax
	je	.L167
	cmpl	$2, %eax
	je	.L161
	cmpl	$3, %eax
	.p2align 4,,5
	je	.L161
	cmpl	$4, %eax
	.p2align 4,,5
	je	.L161
	cmpl	$5, %eax
	.p2align 4,,5
	je	.L162
	cmpl	$6, %eax
	.p2align 4,,5
	je	.L162
	cmpl	$7, %eax
	.p2align 4,,5
	je	.L163
	cmpl	$8, %eax
	.p2align 4,,5
	je	.L163
	cmpl	$9, %eax
	.p2align 4,,5
	je	.L167
	cmpl	$10, %eax
	.p2align 4,,5
	je	.L167
	cmpl	$11, %eax
	.p2align 4,,5
	je	.L167
	cmpl	$12, %eax
	.p2align 4,,5
	je	.L167
	cmpl	$15, %eax
	.p2align 4,,5
	je	.L167
	cmpl	$16, %eax
	.p2align 4,,5
	jne	.L31
	movl	8(%r13), %r10d
	movl	%r10d, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L110
	movq	32(%r13), %rax
	cmpq	$1, %rax
	je	.L171
	cmpq	$2, %rax
	je	.L172
	cmpq	$4, %rax
	.p2align 4,,3
	je	.L173
	cmpq	$8, %rax
	.p2align 4,,5
	je	.L174
	addq	$7, %rax
	shrq	$3, %rax
	decl	%eax
	.p2align 4,,2
	js	.L31
	movq	16(%r13), %r12
	movl	%eax, %ebx
	movl	$-1, %r13d
.L121:
	movslq	%ebx,%r10
	decl	%ebx
	movq	(%r11,%r10,8), %rax
	cmpl	%r13d, %ebx
	movq	%rax, (%r12,%r10,8)
	jne	.L121
.L31:
	leaq	-40(%rbp), %rsp
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
.L58:
	je	.L175
	cmpl	$5, %r14d
	jle	.L64
	xorl	%r14d, %r14d
	movq	%r14, -64(%rbp)
	movlpd	-64(%rbp), %xmm9
	.p2align 4,,3
	jmp	.L63
.L169:
	movq	16(%r13), %rax
	cmpl	$7, %r14d
	movq	(%r13), %r15
	movq	%rax, -56(%rbp)
	jle	.L7
	movlpd	168(%r13), %xmm9
.L9:
	movq	160(%r13), %r14
.L12:
	movlpd	152(%r13), %xmm8
.L15:
	movq	144(%r13), %r12
.L18:
	movq	136(%r13), %rbx
.L21:
	movq	128(%r13), %rax
.L24:
	movq	120(%r13), %r11
.L27:
	movq	112(%r13), %r10
.L30:
	movq	%r14, -64(%rbp)
	movsd	%xmm9, %xmm7
	movsd	%xmm8, %xmm5
	movlpd	-64(%rbp), %xmm6
	movq	%r12, -64(%rbp)
	movlpd	-64(%rbp), %xmm4
	movq	%rbx, -64(%rbp)
	movlpd	-64(%rbp), %xmm3
	movq	%rax, -64(%rbp)
	movl	$8, %eax
	movlpd	-64(%rbp), %xmm2
	movq	%r11, -64(%rbp)
	movlpd	-64(%rbp), %xmm1
	movq	%r10, -64(%rbp)
	movlpd	-64(%rbp), %xmm0
	call	*%r15
	movq	-56(%rbp), %rax
	movss	%xmm0, (%rax)
	leaq	-40(%rbp), %rsp
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
.L167:
	movq	16(%r13), %rax
	movq	%r11, (%rax)
	leaq	-40(%rbp), %rsp
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
.L170:
	movq	16(%r13), %rax
	cmpl	$7, %r14d
	movq	(%r13), %r15
	movq	%rax, -48(%rbp)
	jle	.L34
	movlpd	168(%r13), %xmm9
.L36:
	movlpd	160(%r13), %xmm8
.L39:
	movq	152(%r13), %r14
.L42:
	movq	144(%r13), %r12
.L45:
	movq	136(%r13), %rbx
.L48:
	movq	128(%r13), %rax
.L51:
	movq	120(%r13), %r11
.L54:
	movq	112(%r13), %r10
.L57:
	movq	%r14, -64(%rbp)
	movsd	%xmm9, %xmm7
	movsd	%xmm8, %xmm6
	movlpd	-64(%rbp), %xmm5
	movq	%r12, -64(%rbp)
	movlpd	-64(%rbp), %xmm4
	movq	%rbx, -64(%rbp)
	movlpd	-64(%rbp), %xmm3
	movq	%rax, -64(%rbp)
	movl	$8, %eax
	movlpd	-64(%rbp), %xmm2
	movq	%r11, -64(%rbp)
	movlpd	-64(%rbp), %xmm1
	movq	%r10, -64(%rbp)
	movlpd	-64(%rbp), %xmm0
	call	*%r15
	movq	-48(%rbp), %rax
	movsd	%xmm0, (%rax)
	leaq	-40(%rbp), %rsp
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
.L7:
	jne	.L10
	xorpd	%xmm9, %xmm9
	jmp	.L9
.L175:
	xorpd	%xmm9, %xmm9
	.p2align 4,,7
	jmp	.L60
.L34:
	.p2align 4,,7
	jne	.L37
	xorpd	%xmm9, %xmm9
	.p2align 4,,7
	jmp	.L36
.L161:
	movq	16(%r13), %rax
	movb	%r11b, (%rax)
	leaq	-40(%rbp), %rsp
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
.L10:
	cmpl	$5, %r14d
	jg	.L176
	jne	.L16
	xorl	%r14d, %r14d
	movq	%r14, -64(%rbp)
	movlpd	-64(%rbp), %xmm9
	movsd	%xmm9, %xmm8
	jmp	.L15
.L64:
	.p2align 4,,3
	je	.L177
	cmpl	$3, %r14d
	jle	.L70
	xorl	%r14d, %r14d
	movq	%r14, -64(%rbp)
	movq	%r14, %rbx
	movq	%r14, %r12
	movlpd	-64(%rbp), %xmm9
	jmp	.L69
.L37:
	cmpl	$5, %r14d
	jg	.L178
	jne	.L43
	xorpd	%xmm8, %xmm8
	movsd	%xmm8, -64(%rbp)
	movq	-64(%rbp), %r14
	movsd	%xmm8, %xmm9
	jmp	.L42
.L176:
	xorl	%r14d, %r14d
	movq	%r14, -64(%rbp)
	movlpd	-64(%rbp), %xmm9
	jmp	.L12
.L177:
	xorl	%r14d, %r14d
	movq	%r14, -64(%rbp)
	movq	%r14, %r12
	movlpd	-64(%rbp), %xmm9
	jmp	.L66
.L178:
	xorpd	%xmm8, %xmm8
	movsd	%xmm8, %xmm9
	jmp	.L39
.L162:
	movq	16(%r13), %rax
	movw	%r11w, (%rax)
	jmp	.L31
.L163:
	movq	16(%r13), %rax
	movl	%r11d, (%rax)
	jmp	.L31
.L16:
	cmpl	$3, %r14d
	jle	.L19
	xorl	%r14d, %r14d
	movq	%r14, -64(%rbp)
	movq	%r14, %r12
	movlpd	-64(%rbp), %xmm9
	movsd	%xmm9, %xmm8
	jmp	.L18
.L70:
	jne	.L73
	xorl	%r14d, %r14d
	movq	%r14, -64(%rbp)
	movq	%r14, %rbx
	movq	%r14, %r12
	movlpd	-64(%rbp), %xmm9
	movq	%r14, %r11
	jmp	.L72
.L43:
	cmpl	$3, %r14d
	jle	.L46
	xorpd	%xmm8, %xmm8
	movsd	%xmm8, -64(%rbp)
	movq	-64(%rbp), %r12
	movsd	%xmm8, %xmm9
	movq	%r12, %r14
	jmp	.L45
.L19:
	jne	.L22
	xorl	%r14d, %r14d
	movq	%r14, -64(%rbp)
	movq	%r14, %r12
	movq	%r14, %rbx
	movlpd	-64(%rbp), %xmm9
	movsd	%xmm9, %xmm8
	jmp	.L21
.L73:
	cmpl	$1, %r14d
	jle	.L76
	xorl	%r14d, %r14d
	movq	%r14, -64(%rbp)
	movq	%r14, %rbx
	movq	%r14, %r12
	movlpd	-64(%rbp), %xmm9
	movq	%r14, %rax
	movq	%r14, %r11
	jmp	.L75
.L46:
	jne	.L49
	xorpd	%xmm8, %xmm8
	movsd	%xmm8, -64(%rbp)
	movq	-64(%rbp), %r12
	movsd	%xmm8, %xmm9
	movq	%r12, %r14
	movq	%r12, %rbx
	jmp	.L48
.L22:
	cmpl	$1, %r14d
	jle	.L25
	xorl	%r14d, %r14d
	movq	%r14, -64(%rbp)
	movq	%r14, %r12
	movq	%r14, %rax
	movlpd	-64(%rbp), %xmm9
	movq	%r14, %rbx
	movsd	%xmm9, %xmm8
	jmp	.L24
.L49:
	cmpl	$1, %r14d
	jle	.L52
	xorpd	%xmm8, %xmm8
	movsd	%xmm8, -64(%rbp)
	movq	-64(%rbp), %r12
	movsd	%xmm8, %xmm9
	movq	%r12, %r14
	movq	%r12, %rax
	movq	%r12, %rbx
	jmp	.L51
.L76:
	jne	.L179
	xorl	%r14d, %r14d
	movq	%r14, -64(%rbp)
	movq	%r14, %rbx
	movq	%r14, %r12
	movlpd	-64(%rbp), %xmm9
	movq	%r14, %rax
	movq	%r14, %r11
	movq	%r14, %r10
	jmp	.L78
.L25:
	jne	.L180
	xorl	%r14d, %r14d
	movq	%r14, -64(%rbp)
	movq	%r14, %r12
	movq	%r14, %rax
	movlpd	-64(%rbp), %xmm9
	movq	%r14, %rbx
	movq	%r14, %r11
	movsd	%xmm9, %xmm8
	jmp	.L27
.L110:
	andl	$512, %r10d
	testl	%r10d, %r10d
	je	.L31
	movq	32(%r13), %r10
	leaq	-1(%r10), %rax
	cmpq	$15, %rax
	ja	.L31
	cmpq	$1, %r10
	je	.L161
	cmpq	$2, %r10
	je	.L181
	cmpq	$3, %r10
	.p2align 4,,5
	je	.L182
	cmpq	$4, %r10
	.p2align 4,,5
	je	.L183
	cmpq	$5, %r10
	.p2align 4,,5
	je	.L184
	cmpq	$6, %r10
	.p2align 4,,5
	je	.L185
	cmpq	$7, %r10
	.p2align 4,,5
	je	.L186
	leaq	-8(%r10), %rax
	cmpq	$8, %rax
	.p2align 4,,3
	ja	.L31
	movq	16(%r13), %rax
	movb	%r11b, (%rax)
	movq	16(%r13), %rax
	sarq	$8, %r11
	movb	%r11b, 1(%rax)
	movq	16(%r13), %rax
	sarq	$8, %r11
	movb	%r11b, 2(%rax)
	movq	16(%r13), %rax
	sarq	$8, %r11
	movb	%r11b, 3(%rax)
	movq	16(%r13), %rax
	sarq	$8, %r11
	movb	%r11b, 4(%rax)
	movq	16(%r13), %rax
	sarq	$8, %r11
	movb	%r11b, 5(%rax)
	movq	16(%r13), %rax
	sarq	$8, %r11
	movb	%r11b, 6(%rax)
	movq	16(%r13), %rax
	sarq	$8, %r11
	movb	%r11b, 7(%rax)
	movq	32(%r13), %rax
	cmpq	$8, %rax
	je	.L31
	cmpq	$9, %rax
	je	.L187
	cmpq	$10, %rax
	je	.L188
	cmpq	$11, %rax
	.p2align 4,,5
	je	.L189
	cmpq	$12, %rax
	.p2align 4,,5
	je	.L190
	cmpq	$13, %rax
	.p2align 4,,5
	je	.L191
	cmpq	$14, %rax
	.p2align 4,,5
	je	.L192
	cmpq	$15, %rax
	.p2align 4,,5
	je	.L193
	cmpq	$16, %rax
	.p2align 4,,5
	jne	.L31
	movq	16(%r13), %rax
	sarq	$8, %rbx
	movb	%dl, 8(%rax)
	movq	16(%r13), %rax
	movb	%bl, 9(%rax)
	movq	16(%r13), %rax
	sarq	$8, %rbx
	movb	%bl, 10(%rax)
	movq	16(%r13), %rax
	sarq	$8, %rbx
	movb	%bl, 11(%rax)
	movq	16(%r13), %rax
	sarq	$8, %rbx
	movb	%bl, 12(%rax)
	movq	16(%r13), %rax
	sarq	$8, %rbx
	movb	%bl, 13(%rax)
	movq	16(%r13), %rax
	sarq	$8, %rbx
	movb	%bl, 14(%rax)
	movq	16(%r13), %rax
	sarq	$8, %rbx
	movb	%bl, 15(%rax)
	jmp	.L31
	.p2align 4,,7
.L179:
	xorpd	%xmm8, %xmm8
	movsd	%xmm8, -64(%rbp)
	movq	-64(%rbp), %r14
	movsd	%xmm8, %xmm9
	movq	%r14, %r12
	movq	%r14, %rbx
	movq	%r14, %r11
	movq	%r14, %rax
	movq	%r14, %r10
	jmp	.L81
.L52:
	jne	.L194
	xorpd	%xmm8, %xmm8
	movsd	%xmm8, -64(%rbp)
	movq	-64(%rbp), %r12
	movsd	%xmm8, %xmm9
	movq	%r12, %r14
	movq	%r12, %rax
	movq	%r12, %rbx
	movq	%r12, %r11
	jmp	.L54
.L192:
	movq	16(%r13), %rax
	sarq	$8, %rbx
	movb	%dl, 8(%rax)
	movq	16(%r13), %rax
	movb	%bl, 9(%rax)
	movq	16(%r13), %rax
	sarq	$8, %rbx
	movb	%bl, 10(%rax)
	movq	16(%r13), %rax
	sarq	$8, %rbx
	movb	%bl, 11(%rax)
	movq	16(%r13), %rax
	sarq	$8, %rbx
	movb	%bl, 12(%rax)
	movq	16(%r13), %rax
	sarq	$8, %rbx
	movb	%bl, 13(%rax)
	jmp	.L31
.L191:
	movq	16(%r13), %rax
	sarq	$8, %rbx
	movb	%dl, 8(%rax)
	movq	16(%r13), %rax
	movb	%bl, 9(%rax)
	movq	16(%r13), %rax
	sarq	$8, %rbx
	movb	%bl, 10(%rax)
	movq	16(%r13), %rax
	sarq	$8, %rbx
	movb	%bl, 11(%rax)
	movq	16(%r13), %rax
	sarq	$8, %rbx
	movb	%bl, 12(%rax)
	jmp	.L31
.L194:
	xorl	%r10d, %r10d
	movq	%r10, -64(%rbp)
	movq	%r10, %r14
	movq	%r10, %r12
	movlpd	-64(%rbp), %xmm9
	movq	%r10, %rbx
	movq	%r10, %rax
	movq	%r10, %r11
	movsd	%xmm9, %xmm8
	jmp	.L57
.L193:
	movq	16(%r13), %rax
	sarq	$8, %rbx
	movb	%dl, 8(%rax)
	movq	16(%r13), %rax
	movb	%bl, 9(%rax)
	movq	16(%r13), %rax
	sarq	$8, %rbx
	movb	%bl, 10(%rax)
	movq	16(%r13), %rax
	sarq	$8, %rbx
	movb	%bl, 11(%rax)
	movq	16(%r13), %rax
	sarq	$8, %rbx
	movb	%bl, 12(%rax)
	movq	16(%r13), %rax
	sarq	$8, %rbx
	movb	%bl, 13(%rax)
	movq	16(%r13), %rax
	sarq	$8, %rbx
	movb	%bl, 14(%rax)
	jmp	.L31
.L180:
	xorl	%r10d, %r10d
	movq	%r10, -64(%rbp)
	movq	%r10, %r14
	movq	%r10, %r12
	movlpd	-64(%rbp), %xmm9
	movq	%r10, %rbx
	movq	%r10, %rax
	movq	%r10, %r11
	movsd	%xmm9, %xmm8
	jmp	.L30
.L172:
	movzwl	(%r11), %eax
	movq	16(%r13), %r10
	movw	%ax, (%r10)
	jmp	.L31
.L171:
	movzbl	(%r11), %eax
	movq	16(%r13), %r10
	movb	%al, (%r10)
	jmp	.L31
.L182:
	movq	16(%r13), %rax
	movb	%r11b, (%rax)
	movq	16(%r13), %rax
	sarq	$8, %r11
	movb	%r11b, 1(%rax)
	movq	16(%r13), %rax
	sarq	$8, %r11
	movb	%r11b, 2(%rax)
	jmp	.L31
.L181:
	movq	16(%r13), %rax
	movb	%r11b, (%rax)
	movq	16(%r13), %rax
	sarq	$8, %r11
	movb	%r11b, 1(%rax)
	jmp	.L31
.L174:
	movq	16(%r13), %r10
	movq	(%r11), %rax
	movq	%rax, (%r10)
	jmp	.L31
.L173:
	movq	16(%r13), %r10
	movl	(%r11), %eax
	movl	%eax, (%r10)
	jmp	.L31
.L190:
	movq	16(%r13), %rax
	sarq	$8, %rbx
	movb	%dl, 8(%rax)
	movq	16(%r13), %rax
	movb	%bl, 9(%rax)
	movq	16(%r13), %rax
	sarq	$8, %rbx
	movb	%bl, 10(%rax)
	movq	16(%r13), %rax
	sarq	$8, %rbx
	movb	%bl, 11(%rax)
	jmp	.L31
.L189:
	movq	16(%r13), %rax
	sarq	$8, %rbx
	movb	%dl, 8(%rax)
	movq	16(%r13), %rax
	movb	%bl, 9(%rax)
	movq	16(%r13), %rax
	sarq	$8, %rbx
	movb	%bl, 10(%rax)
	jmp	.L31
.L188:
	movq	16(%r13), %rax
	sarq	$8, %rbx
	movb	%dl, 8(%rax)
	movq	16(%r13), %rax
	movb	%bl, 9(%rax)
	jmp	.L31
.L187:
	movq	16(%r13), %rax
	movb	%dl, 8(%rax)
	jmp	.L31
.L186:
	movq	16(%r13), %rax
	movb	%r11b, (%rax)
	movq	16(%r13), %rax
	sarq	$8, %r11
	movb	%r11b, 1(%rax)
	movq	16(%r13), %rax
	sarq	$8, %r11
	movb	%r11b, 2(%rax)
	movq	16(%r13), %rax
	sarq	$8, %r11
	movb	%r11b, 3(%rax)
	movq	16(%r13), %rax
	sarq	$8, %r11
	movb	%r11b, 4(%rax)
	movq	16(%r13), %rax
	sarq	$8, %r11
	movb	%r11b, 5(%rax)
	movq	16(%r13), %rax
	sarq	$8, %r11
	movb	%r11b, 6(%rax)
	jmp	.L31
.L185:
	movq	16(%r13), %rax
	movb	%r11b, (%rax)
	movq	16(%r13), %rax
	sarq	$8, %r11
	movb	%r11b, 1(%rax)
	movq	16(%r13), %rax
	sarq	$8, %r11
	movb	%r11b, 2(%rax)
	movq	16(%r13), %rax
	sarq	$8, %r11
	movb	%r11b, 3(%rax)
	movq	16(%r13), %rax
	sarq	$8, %r11
	movb	%r11b, 4(%rax)
	movq	16(%r13), %rax
	sarq	$8, %r11
	movb	%r11b, 5(%rax)
	jmp	.L31
.L184:
	movq	16(%r13), %rax
	movb	%r11b, (%rax)
	movq	16(%r13), %rax
	sarq	$8, %r11
	movb	%r11b, 1(%rax)
	movq	16(%r13), %rax
	sarq	$8, %r11
	movb	%r11b, 2(%rax)
	movq	16(%r13), %rax
	sarq	$8, %r11
	movb	%r11b, 3(%rax)
	movq	16(%r13), %rax
	sarq	$8, %r11
	movb	%r11b, 4(%rax)
	jmp	.L31
.L183:
	movq	16(%r13), %rax
	movb	%r11b, (%rax)
	movq	16(%r13), %rax
	sarq	$8, %r11
	movb	%r11b, 1(%rax)
	movq	16(%r13), %rax
	sarq	$8, %r11
	movb	%r11b, 2(%rax)
	movq	16(%r13), %rax
	sarq	$8, %r11
	movb	%r11b, 3(%rax)
	jmp	.L31
.LFE2:
	.size	__builtin_avcall, .-__builtin_avcall
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
	.long	.LCFI4-.LCFI1
	.byte	0x8d
	.uleb128 0x5
	.byte	0x8e
	.uleb128 0x4
	.byte	0x8f
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI7-.LCFI4
	.byte	0x83
	.uleb128 0x7
	.byte	0x8c
	.uleb128 0x6
	.align 8
.LEFDE1:
	.ident	"GCC: (GNU) 4.0.2"
	.section	.note.GNU-stack,"",@progbits
