#include "asm-x86_64.h"
	.file	"avcall-x86_64.c"
	.text
	P2ALIGN(4,15)
.globl C(__builtin_avcall)
	DECLARE_FUNCTION(__builtin_avcall)
FUNBEGIN(__builtin_avcall)
L(FB2:)
	pushq	%rbp
L(CFI0:)
	leaq	112(%rdi), %r10
	movq	%rsp, %rbp
L(CFI1:)
	pushq	%r15
L(CFI2:)
	pushq	%r14
L(CFI3:)
	pushq	%r13
L(CFI4:)
	movq	%rdi, %r13
	pushq	%r12
L(CFI5:)
	pushq	%rbx
L(CFI6:)
	subq	$2088, %rsp
L(CFI7:)
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
	jle	L(2)
	movq	%rdi, %r10
	xorl	%r11d, %r11d
	P2ALIGN(4,7)
L(4:)
	movq	176(%r10), %rax
	addq	$8, %r10
	movq	%rax, (%rbx,%r11,8)
	incq	%r11
	cmpq	%r11, %r12
	jne	L(4)
L(2:)
	movl	24(%r13), %eax
	movq	56(%r13), %rdi
	movq	64(%r13), %rsi
	movq	72(%r13), %rdx
	movq	80(%r13), %rcx
	movq	88(%r13), %r8
	cmpl	$13, %eax
	movq	96(%r13), %r9
	je	L(169)
	cmpl	$14, %eax
	je	L(170)
	cmpl	$7, %r14d
	movq	(%r13), %r15
	jle	L(58)
	movlpd	168(%r13), %xmm9
L(60:)
	movq	160(%r13), %r14
L(63:)
	movq	152(%r13), %r12
L(66:)
	movq	144(%r13), %rbx
L(69:)
	movq	136(%r13), %r11
L(72:)
	movq	128(%r13), %rax
L(75:)
	movq	120(%r13), %r10
L(78:)
	movlpd	112(%r13), %xmm8
L(81:)
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
	je	L(31)
	testl	%eax, %eax
	je	L(167)
	cmpl	$2, %eax
	je	L(161)
	cmpl	$3, %eax
	P2ALIGN(4,5)
	je	L(161)
	cmpl	$4, %eax
	P2ALIGN(4,5)
	je	L(161)
	cmpl	$5, %eax
	P2ALIGN(4,5)
	je	L(162)
	cmpl	$6, %eax
	P2ALIGN(4,5)
	je	L(162)
	cmpl	$7, %eax
	P2ALIGN(4,5)
	je	L(163)
	cmpl	$8, %eax
	P2ALIGN(4,5)
	je	L(163)
	cmpl	$9, %eax
	P2ALIGN(4,5)
	je	L(167)
	cmpl	$10, %eax
	P2ALIGN(4,5)
	je	L(167)
	cmpl	$11, %eax
	P2ALIGN(4,5)
	je	L(167)
	cmpl	$12, %eax
	P2ALIGN(4,5)
	je	L(167)
	cmpl	$15, %eax
	P2ALIGN(4,5)
	je	L(167)
	cmpl	$16, %eax
	P2ALIGN(4,5)
	jne	L(31)
	movl	8(%r13), %r10d
	movl	%r10d, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	L(110)
	movq	32(%r13), %rax
	cmpq	$1, %rax
	je	L(171)
	cmpq	$2, %rax
	je	L(172)
	cmpq	$4, %rax
	P2ALIGN(4,3)
	je	L(173)
	cmpq	$8, %rax
	P2ALIGN(4,5)
	je	L(174)
	addq	$7, %rax
	shrq	$3, %rax
	decl	%eax
	P2ALIGN(4,2)
	js	L(31)
	movq	16(%r13), %r12
	movl	%eax, %ebx
	movl	$-1, %r13d
L(121:)
	movslq	%ebx,%r10
	decl	%ebx
	movq	(%r11,%r10,8), %rax
	cmpl	%r13d, %ebx
	movq	%rax, (%r12,%r10,8)
	jne	L(121)
L(31:)
	leaq	-40(%rbp), %rsp
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	leave
	ret
L(58:)
	je	L(175)
	cmpl	$5, %r14d
	jle	L(64)
	xorl	%r14d, %r14d
	movq	%r14, -64(%rbp)
	movlpd	-64(%rbp), %xmm9
	P2ALIGN(4,3)
	jmp	L(63)
L(169:)
	movq	16(%r13), %rax
	cmpl	$7, %r14d
	movq	(%r13), %r15
	movq	%rax, -56(%rbp)
	jle	L(7)
	movlpd	168(%r13), %xmm9
L(9:)
	movq	160(%r13), %r14
L(12:)
	movlpd	152(%r13), %xmm8
L(15:)
	movq	144(%r13), %r12
L(18:)
	movq	136(%r13), %rbx
L(21:)
	movq	128(%r13), %rax
L(24:)
	movq	120(%r13), %r11
L(27:)
	movq	112(%r13), %r10
L(30:)
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
L(167:)
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
L(170:)
	movq	16(%r13), %rax
	cmpl	$7, %r14d
	movq	(%r13), %r15
	movq	%rax, -48(%rbp)
	jle	L(34)
	movlpd	168(%r13), %xmm9
L(36:)
	movlpd	160(%r13), %xmm8
L(39:)
	movq	152(%r13), %r14
L(42:)
	movq	144(%r13), %r12
L(45:)
	movq	136(%r13), %rbx
L(48:)
	movq	128(%r13), %rax
L(51:)
	movq	120(%r13), %r11
L(54:)
	movq	112(%r13), %r10
L(57:)
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
L(7:)
	jne	L(10)
	xorpd	%xmm9, %xmm9
	jmp	L(9)
L(175:)
	xorpd	%xmm9, %xmm9
	P2ALIGN(4,7)
	jmp	L(60)
L(34:)
	P2ALIGN(4,7)
	jne	L(37)
	xorpd	%xmm9, %xmm9
	P2ALIGN(4,7)
	jmp	L(36)
L(161:)
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
L(10:)
	cmpl	$5, %r14d
	jg	L(176)
	jne	L(16)
	xorl	%r14d, %r14d
	movq	%r14, -64(%rbp)
	movlpd	-64(%rbp), %xmm9
	movsd	%xmm9, %xmm8
	jmp	L(15)
L(64:)
	P2ALIGN(4,3)
	je	L(177)
	cmpl	$3, %r14d
	jle	L(70)
	xorl	%r14d, %r14d
	movq	%r14, -64(%rbp)
	movq	%r14, %rbx
	movq	%r14, %r12
	movlpd	-64(%rbp), %xmm9
	jmp	L(69)
L(37:)
	cmpl	$5, %r14d
	jg	L(178)
	jne	L(43)
	xorpd	%xmm8, %xmm8
	movsd	%xmm8, -64(%rbp)
	movq	-64(%rbp), %r14
	movsd	%xmm8, %xmm9
	jmp	L(42)
L(176:)
	xorl	%r14d, %r14d
	movq	%r14, -64(%rbp)
	movlpd	-64(%rbp), %xmm9
	jmp	L(12)
L(177:)
	xorl	%r14d, %r14d
	movq	%r14, -64(%rbp)
	movq	%r14, %r12
	movlpd	-64(%rbp), %xmm9
	jmp	L(66)
L(178:)
	xorpd	%xmm8, %xmm8
	movsd	%xmm8, %xmm9
	jmp	L(39)
L(162:)
	movq	16(%r13), %rax
	movw	%r11w, (%rax)
	jmp	L(31)
L(163:)
	movq	16(%r13), %rax
	movl	%r11d, (%rax)
	jmp	L(31)
L(16:)
	cmpl	$3, %r14d
	jle	L(19)
	xorl	%r14d, %r14d
	movq	%r14, -64(%rbp)
	movq	%r14, %r12
	movlpd	-64(%rbp), %xmm9
	movsd	%xmm9, %xmm8
	jmp	L(18)
L(70:)
	jne	L(73)
	xorl	%r14d, %r14d
	movq	%r14, -64(%rbp)
	movq	%r14, %rbx
	movq	%r14, %r12
	movlpd	-64(%rbp), %xmm9
	movq	%r14, %r11
	jmp	L(72)
L(43:)
	cmpl	$3, %r14d
	jle	L(46)
	xorpd	%xmm8, %xmm8
	movsd	%xmm8, -64(%rbp)
	movq	-64(%rbp), %r12
	movsd	%xmm8, %xmm9
	movq	%r12, %r14
	jmp	L(45)
L(19:)
	jne	L(22)
	xorl	%r14d, %r14d
	movq	%r14, -64(%rbp)
	movq	%r14, %r12
	movq	%r14, %rbx
	movlpd	-64(%rbp), %xmm9
	movsd	%xmm9, %xmm8
	jmp	L(21)
L(73:)
	cmpl	$1, %r14d
	jle	L(76)
	xorl	%r14d, %r14d
	movq	%r14, -64(%rbp)
	movq	%r14, %rbx
	movq	%r14, %r12
	movlpd	-64(%rbp), %xmm9
	movq	%r14, %rax
	movq	%r14, %r11
	jmp	L(75)
L(46:)
	jne	L(49)
	xorpd	%xmm8, %xmm8
	movsd	%xmm8, -64(%rbp)
	movq	-64(%rbp), %r12
	movsd	%xmm8, %xmm9
	movq	%r12, %r14
	movq	%r12, %rbx
	jmp	L(48)
L(22:)
	cmpl	$1, %r14d
	jle	L(25)
	xorl	%r14d, %r14d
	movq	%r14, -64(%rbp)
	movq	%r14, %r12
	movq	%r14, %rax
	movlpd	-64(%rbp), %xmm9
	movq	%r14, %rbx
	movsd	%xmm9, %xmm8
	jmp	L(24)
L(49:)
	cmpl	$1, %r14d
	jle	L(52)
	xorpd	%xmm8, %xmm8
	movsd	%xmm8, -64(%rbp)
	movq	-64(%rbp), %r12
	movsd	%xmm8, %xmm9
	movq	%r12, %r14
	movq	%r12, %rax
	movq	%r12, %rbx
	jmp	L(51)
L(76:)
	jne	L(179)
	xorl	%r14d, %r14d
	movq	%r14, -64(%rbp)
	movq	%r14, %rbx
	movq	%r14, %r12
	movlpd	-64(%rbp), %xmm9
	movq	%r14, %rax
	movq	%r14, %r11
	movq	%r14, %r10
	jmp	L(78)
L(25:)
	jne	L(180)
	xorl	%r14d, %r14d
	movq	%r14, -64(%rbp)
	movq	%r14, %r12
	movq	%r14, %rax
	movlpd	-64(%rbp), %xmm9
	movq	%r14, %rbx
	movq	%r14, %r11
	movsd	%xmm9, %xmm8
	jmp	L(27)
L(110:)
	andl	$512, %r10d
	testl	%r10d, %r10d
	je	L(31)
	movq	32(%r13), %r10
	leaq	-1(%r10), %rax
	cmpq	$15, %rax
	ja	L(31)
	cmpq	$1, %r10
	je	L(161)
	cmpq	$2, %r10
	je	L(181)
	cmpq	$3, %r10
	P2ALIGN(4,5)
	je	L(182)
	cmpq	$4, %r10
	P2ALIGN(4,5)
	je	L(183)
	cmpq	$5, %r10
	P2ALIGN(4,5)
	je	L(184)
	cmpq	$6, %r10
	P2ALIGN(4,5)
	je	L(185)
	cmpq	$7, %r10
	P2ALIGN(4,5)
	je	L(186)
	leaq	-8(%r10), %rax
	cmpq	$8, %rax
	P2ALIGN(4,3)
	ja	L(31)
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
	je	L(31)
	cmpq	$9, %rax
	je	L(187)
	cmpq	$10, %rax
	je	L(188)
	cmpq	$11, %rax
	P2ALIGN(4,5)
	je	L(189)
	cmpq	$12, %rax
	P2ALIGN(4,5)
	je	L(190)
	cmpq	$13, %rax
	P2ALIGN(4,5)
	je	L(191)
	cmpq	$14, %rax
	P2ALIGN(4,5)
	je	L(192)
	cmpq	$15, %rax
	P2ALIGN(4,5)
	je	L(193)
	cmpq	$16, %rax
	P2ALIGN(4,5)
	jne	L(31)
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
	jmp	L(31)
	P2ALIGN(4,7)
L(179:)
	xorpd	%xmm8, %xmm8
	movsd	%xmm8, -64(%rbp)
	movq	-64(%rbp), %r14
	movsd	%xmm8, %xmm9
	movq	%r14, %r12
	movq	%r14, %rbx
	movq	%r14, %r11
	movq	%r14, %rax
	movq	%r14, %r10
	jmp	L(81)
L(52:)
	jne	L(194)
	xorpd	%xmm8, %xmm8
	movsd	%xmm8, -64(%rbp)
	movq	-64(%rbp), %r12
	movsd	%xmm8, %xmm9
	movq	%r12, %r14
	movq	%r12, %rax
	movq	%r12, %rbx
	movq	%r12, %r11
	jmp	L(54)
L(192:)
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
	jmp	L(31)
L(191:)
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
	jmp	L(31)
L(194:)
	xorl	%r10d, %r10d
	movq	%r10, -64(%rbp)
	movq	%r10, %r14
	movq	%r10, %r12
	movlpd	-64(%rbp), %xmm9
	movq	%r10, %rbx
	movq	%r10, %rax
	movq	%r10, %r11
	movsd	%xmm9, %xmm8
	jmp	L(57)
L(193:)
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
	jmp	L(31)
L(180:)
	xorl	%r10d, %r10d
	movq	%r10, -64(%rbp)
	movq	%r10, %r14
	movq	%r10, %r12
	movlpd	-64(%rbp), %xmm9
	movq	%r10, %rbx
	movq	%r10, %rax
	movq	%r10, %r11
	movsd	%xmm9, %xmm8
	jmp	L(30)
L(172:)
	movzwl	(%r11), %eax
	movq	16(%r13), %r10
	movw	%ax, (%r10)
	jmp	L(31)
L(171:)
	movzbl	(%r11), %eax
	movq	16(%r13), %r10
	movb	%al, (%r10)
	jmp	L(31)
L(182:)
	movq	16(%r13), %rax
	movb	%r11b, (%rax)
	movq	16(%r13), %rax
	sarq	$8, %r11
	movb	%r11b, 1(%rax)
	movq	16(%r13), %rax
	sarq	$8, %r11
	movb	%r11b, 2(%rax)
	jmp	L(31)
L(181:)
	movq	16(%r13), %rax
	movb	%r11b, (%rax)
	movq	16(%r13), %rax
	sarq	$8, %r11
	movb	%r11b, 1(%rax)
	jmp	L(31)
L(174:)
	movq	16(%r13), %r10
	movq	(%r11), %rax
	movq	%rax, (%r10)
	jmp	L(31)
L(173:)
	movq	16(%r13), %r10
	movl	(%r11), %eax
	movl	%eax, (%r10)
	jmp	L(31)
L(190:)
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
	jmp	L(31)
L(189:)
	movq	16(%r13), %rax
	sarq	$8, %rbx
	movb	%dl, 8(%rax)
	movq	16(%r13), %rax
	movb	%bl, 9(%rax)
	movq	16(%r13), %rax
	sarq	$8, %rbx
	movb	%bl, 10(%rax)
	jmp	L(31)
L(188:)
	movq	16(%r13), %rax
	sarq	$8, %rbx
	movb	%dl, 8(%rax)
	movq	16(%r13), %rax
	movb	%bl, 9(%rax)
	jmp	L(31)
L(187:)
	movq	16(%r13), %rax
	movb	%dl, 8(%rax)
	jmp	L(31)
L(186:)
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
	jmp	L(31)
L(185:)
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
	jmp	L(31)
L(184:)
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
	jmp	L(31)
L(183:)
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
	jmp	L(31)
L(FE2:)
	FUNEND(__builtin_avcall, .-__builtin_avcall)
#if !(defined __sun || (defined __APPLE__ && defined __MACH__))
	.section	EH_FRAME_SECTION
L(frame1:)
	.long	L(ECIE1)-.LSCIE1
L(SCIE1:)
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
L(ECIE1:)
L(SFDE1:)
	.long	L(EFDE1)-.LASFDE1
L(ASFDE1:)
	.long	L(ASFDE1)-.Lframe1
	.long	L(FB2)-.
	.long	L(FE2)-.LFB2
	.uleb128 0x0
	.byte	0x4
	.long	L(CFI0)-.LFB2
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	L(CFI1)-.LCFI0
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.long	L(CFI4)-.LCFI1
	.byte	0x8d
	.uleb128 0x5
	.byte	0x8e
	.uleb128 0x4
	.byte	0x8f
	.uleb128 0x3
	.byte	0x4
	.long	L(CFI7)-.LCFI4
	.byte	0x83
	.uleb128 0x7
	.byte	0x8c
	.uleb128 0x6
	.align 8
L(EFDE1:)
#endif
#if defined __linux__ || defined __FreeBSD__ || defined __FreeBSD_kernel__ || defined __DragonFly__
	.section .note.GNU-stack,"",@progbits
#endif
