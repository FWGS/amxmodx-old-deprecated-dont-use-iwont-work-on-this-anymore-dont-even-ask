#include "asm-x86_64.h"
	.file	"vacall-x86_64.c"
	.text
	P2ALIGN(4,15)
.globl C(__vacall)
	DECLARE_FUNCTION(__vacall)
FUNBEGIN(__vacall)
L(FB2:)
	pushq	%rbp
L(CFI0:)
	movq	%rsp, %rbp
L(CFI1:)
	pushq	%r13
L(CFI2:)
	leaq	16(%rbp), %r10
	pushq	%r12
L(CFI3:)
	subq	$192, %rsp
L(CFI4:)
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
	call	*C(vacall_function)(%rip)
	movl	-184(%rbp), %r10d
	testl	%r10d, %r10d
	je	L(65)
	cmpl	$1, %r10d
	je	L(66)
	cmpl	$2, %r10d
	je	L(66)
	cmpl	$3, %r10d
	P2ALIGN(4,5)
	je	L(72)
	cmpl	$4, %r10d
	P2ALIGN(4,5)
	je	L(73)
	cmpl	$5, %r10d
	P2ALIGN(4,5)
	je	L(74)
	cmpl	$6, %r10d
	P2ALIGN(4,5)
	je	L(75)
	cmpl	$7, %r10d
	P2ALIGN(4,5)
	je	L(76)
	cmpl	$8, %r10d
	P2ALIGN(4,5)
	je	L(70)
	cmpl	$9, %r10d
	P2ALIGN(4,5)
	je	L(70)
	cmpl	$10, %r10d
	P2ALIGN(4,5)
	je	L(70)
	cmpl	$11, %r10d
	P2ALIGN(4,5)
	je	L(70)
	cmpl	$12, %r10d
	P2ALIGN(4,5)
	je	L(77)
	cmpl	$13, %r10d
	P2ALIGN(4,5)
	je	L(78)
	cmpl	$14, %r10d
	P2ALIGN(4,5)
	je	L(70)
	cmpl	$15, %r10d
	P2ALIGN(4,5)
	jne	L(65)
	movl	-208(%rbp), %r11d
	movl	%r11d, %r10d
	andl	$1, %r10d
	testl	%r10d, %r10d
	je	L(33)
	movq	-192(%rbp), %rax
	P2ALIGN(4,7)
L(65:)
	addq	$192, %rsp
	popq	%r12
	popq	%r13
	leave
	ret
	P2ALIGN(4,7)
L(66:)
	movsbq	-168(%rbp),%rax
	addq	$192, %rsp
	popq	%r12
	popq	%r13
	leave
	ret
L(73:)
	movswq	-168(%rbp),%rax
	jmp	L(65)
L(72:)
	movzbq	-168(%rbp), %rax
	jmp	L(65)
L(70:)
	movq	-168(%rbp), %rax
	jmp	L(65)
L(74:)
	movzwq	-168(%rbp), %rax
	jmp	L(65)
L(75:)
	movslq	-168(%rbp),%rax
	jmp	L(65)
L(76:)
	mov	-168(%rbp), %eax
	jmp	L(65)
L(77:)
	movss	-168(%rbp), %xmm0
	jmp	L(65)
L(78:)
	movlpd	-168(%rbp), %xmm0
	jmp	L(65)
L(33:)
	andl	$1024, %r11d
	testl	%r11d, %r11d
	je	L(65)
	movq	-176(%rbp), %r12
	leaq	-1(%r12), %r10
	cmpq	$15, %r10
	ja	L(65)
	movq	-192(%rbp), %r11
	cmpq	$1, %r12
	movzbq	(%r11), %r13
	movq	%r13, %rax
	jbe	L(37)
	movzbq	1(%r11), %r10
	salq	$8, %r10
	orq	%r10, %rax
L(37:)
	cmpq	$2, %r12
	jbe	L(39)
	movzbq	2(%r11), %r10
	salq	$16, %r10
	orq	%r10, %rax
L(39:)
	cmpq	$3, %r12
	jbe	L(41)
	movzbq	3(%r11), %r10
	salq	$24, %r10
	orq	%r10, %rax
L(41:)
	cmpq	$4, %r12
	jbe	L(43)
	movzbq	4(%r11), %r10
	salq	$32, %r10
	orq	%r10, %rax
L(43:)
	cmpq	$5, %r12
	jbe	L(45)
	movzbq	5(%r11), %r10
	salq	$40, %r10
	orq	%r10, %rax
L(45:)
	cmpq	$6, %r12
	jbe	L(47)
	movzbq	6(%r11), %r10
	salq	$48, %r10
	orq	%r10, %rax
L(47:)
	cmpq	$7, %r12
	jbe	L(49)
	movzbq	7(%r11), %r10
	salq	$56, %r10
	orq	%r10, %rax
L(49:)
	cmpq	$8, %r12
	jbe	L(65)
	movzbq	8(%r11), %r13
	cmpq	$9, %r12
	movq	%r13, %rdx
	jbe	L(52)
	movzbq	9(%r11), %r10
	salq	$8, %r10
	orq	%r10, %rdx
L(52:)
	cmpq	$10, %r12
	jbe	L(54)
	movzbq	10(%r11), %r10
	salq	$16, %r10
	orq	%r10, %rdx
L(54:)
	cmpq	$11, %r12
	jbe	L(56)
	movzbq	11(%r11), %r10
	salq	$24, %r10
	orq	%r10, %rdx
L(56:)
	cmpq	$12, %r12
	jbe	L(58)
	movzbq	12(%r11), %r10
	salq	$32, %r10
	orq	%r10, %rdx
L(58:)
	cmpq	$13, %r12
	jbe	L(60)
	movzbq	13(%r11), %r10
	salq	$40, %r10
	orq	%r10, %rdx
L(60:)
	cmpq	$14, %r12
	jbe	L(62)
	movzbq	14(%r11), %r10
	salq	$48, %r10
	orq	%r10, %rdx
L(62:)
	cmpq	$15, %r12
	jbe	L(65)
	movzbq	15(%r11), %r10
	salq	$56, %r10
	orq	%r10, %rdx
	jmp	L(65)
L(FE2:)
	FUNEND(__vacall, .-__vacall)
#if !(defined __sun || (defined __APPLE__ && defined __MACH__))
	.section	EH_FRAME_SECTION
L(frame1:)
	.long	L(ECIE1)-.LSCIE1
L(SCIE1:)
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
L(ECIE1:)
L(SFDE1:)
	.long	L(EFDE1)-.LASFDE1
L(ASFDE1:)
	.long	L(ASFDE1)-.Lframe1
	.quad	L(FB2)
	.quad	L(FE2)-.LFB2
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
	.byte	0x8c
	.uleb128 0x4
	.byte	0x8d
	.uleb128 0x3
	.align 8
L(EFDE1:)
#endif
#if defined __linux__ || defined __FreeBSD__ || defined __FreeBSD_kernel__ || defined __DragonFly__
	.section .note.GNU-stack,"",@progbits
#endif
