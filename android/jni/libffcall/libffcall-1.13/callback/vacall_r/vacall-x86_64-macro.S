#include "asm-x86_64.h"
	.file	"vacall-x86_64.c"
	.text
	P2ALIGN(4,15)
	DECLARE_FUNCTION(__vacall_r)
FUNBEGIN(__vacall_r)
L(FB2:)
	pushq	%rbp
L(CFI0:)
	movq	%rsp, %rbp
L(CFI1:)
	movq	%r12, -24(%rbp)
L(CFI2:)
	leaq	16(%rbp), %r11
	leaq	-224(%rbp), %r12
	movq	%r13, -16(%rbp)
L(CFI3:)
	movq	%r14, -8(%rbp)
L(CFI4:)
	subq	$224, %rsp
L(CFI5:)
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
	je	L(65)
	cmpl	$1, %r11d
	je	L(66)
	cmpl	$2, %r11d
	je	L(66)
	cmpl	$3, %r11d
	P2ALIGN(4,5)
	je	L(72)
	cmpl	$4, %r11d
	P2ALIGN(4,5)
	je	L(73)
	cmpl	$5, %r11d
	P2ALIGN(4,5)
	je	L(74)
	cmpl	$6, %r11d
	P2ALIGN(4,5)
	je	L(75)
	cmpl	$7, %r11d
	P2ALIGN(4,5)
	je	L(76)
	cmpl	$8, %r11d
	P2ALIGN(4,5)
	je	L(70)
	cmpl	$9, %r11d
	P2ALIGN(4,5)
	je	L(70)
	cmpl	$10, %r11d
	P2ALIGN(4,5)
	je	L(70)
	cmpl	$11, %r11d
	P2ALIGN(4,5)
	je	L(70)
	cmpl	$12, %r11d
	P2ALIGN(4,5)
	je	L(77)
	cmpl	$13, %r11d
	P2ALIGN(4,5)
	je	L(78)
	cmpl	$14, %r11d
	P2ALIGN(4,5)
	je	L(70)
	cmpl	$15, %r11d
	P2ALIGN(4,5)
	jne	L(65)
	movl	-224(%rbp), %r12d
	movl	%r12d, %r11d
	andl	$1, %r11d
	testl	%r11d, %r11d
	je	L(33)
	movq	-208(%rbp), %rax
	P2ALIGN(4,7)
L(65:)
	movq	-24(%rbp), %r12
	movq	-16(%rbp), %r13
	movq	-8(%rbp), %r14
	leave
	ret
	P2ALIGN(4,7)
L(66:)
	movsbq	-184(%rbp),%rax
	movq	-24(%rbp), %r12
	movq	-16(%rbp), %r13
	movq	-8(%rbp), %r14
	leave
	ret
L(73:)
	movswq	-184(%rbp),%rax
	jmp	L(65)
L(72:)
	movzbq	-184(%rbp), %rax
	jmp	L(65)
L(70:)
	movq	-184(%rbp), %rax
	jmp	L(65)
L(74:)
	movzwq	-184(%rbp), %rax
	jmp	L(65)
L(75:)
	movslq	-184(%rbp),%rax
	jmp	L(65)
L(76:)
	mov	-184(%rbp), %eax
	jmp	L(65)
L(77:)
	movss	-184(%rbp), %xmm0
	jmp	L(65)
L(78:)
	movlpd	-184(%rbp), %xmm0
	jmp	L(65)
L(33:)
	andl	$1024, %r12d
	testl	%r12d, %r12d
	je	L(65)
	movq	-192(%rbp), %r13
	leaq	-1(%r13), %r11
	cmpq	$15, %r11
	ja	L(65)
	movq	-208(%rbp), %r12
	cmpq	$1, %r13
	movzbq	(%r12), %r14
	movq	%r14, %rax
	jbe	L(37)
	movzbq	1(%r12), %r11
	salq	$8, %r11
	orq	%r11, %rax
L(37:)
	cmpq	$2, %r13
	jbe	L(39)
	movzbq	2(%r12), %r11
	salq	$16, %r11
	orq	%r11, %rax
L(39:)
	cmpq	$3, %r13
	jbe	L(41)
	movzbq	3(%r12), %r11
	salq	$24, %r11
	orq	%r11, %rax
L(41:)
	cmpq	$4, %r13
	jbe	L(43)
	movzbq	4(%r12), %r11
	salq	$32, %r11
	orq	%r11, %rax
L(43:)
	cmpq	$5, %r13
	jbe	L(45)
	movzbq	5(%r12), %r11
	salq	$40, %r11
	orq	%r11, %rax
L(45:)
	cmpq	$6, %r13
	jbe	L(47)
	movzbq	6(%r12), %r11
	salq	$48, %r11
	orq	%r11, %rax
L(47:)
	cmpq	$7, %r13
	jbe	L(49)
	movzbq	7(%r12), %r11
	salq	$56, %r11
	orq	%r11, %rax
L(49:)
	cmpq	$8, %r13
	jbe	L(65)
	movzbq	8(%r12), %r14
	cmpq	$9, %r13
	movq	%r14, %rdx
	jbe	L(52)
	movzbq	9(%r12), %r11
	salq	$8, %r11
	orq	%r11, %rdx
L(52:)
	cmpq	$10, %r13
	jbe	L(54)
	movzbq	10(%r12), %r11
	salq	$16, %r11
	orq	%r11, %rdx
L(54:)
	cmpq	$11, %r13
	jbe	L(56)
	movzbq	11(%r12), %r11
	salq	$24, %r11
	orq	%r11, %rdx
L(56:)
	cmpq	$12, %r13
	jbe	L(58)
	movzbq	12(%r12), %r11
	salq	$32, %r11
	orq	%r11, %rdx
L(58:)
	cmpq	$13, %r13
	jbe	L(60)
	movzbq	13(%r12), %r11
	salq	$40, %r11
	orq	%r11, %rdx
L(60:)
	cmpq	$14, %r13
	jbe	L(62)
	movzbq	14(%r12), %r11
	salq	$48, %r11
	orq	%r11, %rdx
L(62:)
	cmpq	$15, %r13
	jbe	L(65)
	movzbq	15(%r12), %r11
	salq	$56, %r11
	orq	%r11, %rdx
	jmp	L(65)
L(FE2:)
	FUNEND(__vacall_r, .-__vacall_r)
	P2ALIGN(4,15)
.globl C(get__vacall_r)
	DECLARE_FUNCTION(get__vacall_r)
FUNBEGIN(get__vacall_r)
L(FB3:)
	pushq	%rbp
L(CFI6:)
	leaq	C(__vacall_r)(%rip), %rax
	movq	%rsp, %rbp
L(CFI7:)
	leave
	ret
L(FE3:)
	FUNEND(get__vacall_r, .-get__vacall_r)
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
	.long	L(CFI2)-.LCFI1
	.byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	L(CFI5)-.LCFI2
	.byte	0x8e
	.uleb128 0x3
	.byte	0x8d
	.uleb128 0x4
	.align 8
L(EFDE1:)
L(SFDE3:)
	.long	L(EFDE3)-.LASFDE3
L(ASFDE3:)
	.long	L(ASFDE3)-.Lframe1
	.long	L(FB3)-.
	.long	L(FE3)-.LFB3
	.uleb128 0x0
	.byte	0x4
	.long	L(CFI6)-.LFB3
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	L(CFI7)-.LCFI6
	.byte	0xd
	.uleb128 0x6
	.align 8
L(EFDE3:)
#endif
#if defined __linux__ || defined __FreeBSD__ || defined __FreeBSD_kernel__ || defined __DragonFly__
	.section .note.GNU-stack,"",@progbits
#endif
