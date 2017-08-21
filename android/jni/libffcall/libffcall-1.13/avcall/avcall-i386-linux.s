	.file	"avcall-i386.c"
	.text
	.align 2
	.p2align 2,,3
.globl __builtin_avcall
	.type	__builtin_avcall,@function
__builtin_avcall:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	movl	8(%ebp), %edi
	movl	20(%edi), %eax
	subl	%edi, %eax
	leal	-32(%eax), %edx
	sarl	$2, %edx
	xorl	%ecx, %ecx
	subl	$1024, %esp
	cmpl	%edx, %ecx
	movl	%esp, %esi
	jge	.L62
	.p2align 2,,3
.L6:
	movl	32(%edi,%ecx,4), %eax
	movl	%eax, (%esi,%ecx,4)
	incl	%ecx
	cmpl	%edx, %ecx
	jl	.L6
.L62:
	testb	$8, 4(%edi)
	je	.L64
	movl	12(%edi), %eax
	cmpl	$16, %eax
	je	.L70
.L7:
	cmpl	$13, %eax
	je	.L71
	cmpl	$14, %eax
	je	.L72
	call	*(%edi)
	movl	12(%edi), %esi
	cmpl	$1, %esi
	movl	%eax, %ecx
	je	.L9
	testl	%esi, %esi
	je	.L66
	cmpl	$2, %esi
	je	.L68
	cmpl	$3, %esi
	je	.L68
	cmpl	$4, %esi
	je	.L68
	cmpl	$5, %esi
	je	.L67
	cmpl	$6, %esi
	je	.L67
	cmpl	$7, %esi
	je	.L66
	cmpl	$8, %esi
	je	.L66
	cmpl	$9, %esi
	je	.L66
	cmpl	$10, %esi
	je	.L66
	leal	-11(%esi), %eax
	cmpl	$1, %eax
	jbe	.L69
	cmpl	$15, %esi
	je	.L66
	cmpl	$16, %esi
	je	.L73
	.p2align 2,,3
.L9:
	leal	-8(%ebp), %esp
	popl	%esi
	xorl	%eax, %eax
	popl	%edi
	leave
	ret
.L73:
	movl	4(%edi), %eax
	testl	$1, %eax
	je	.L39
	movl	16(%edi), %eax
	cmpl	$1, %eax
	je	.L74
	cmpl	$2, %eax
	je	.L75
	cmpl	$4, %eax
	je	.L76
	cmpl	$8, %eax
	je	.L77
	leal	3(%eax), %edx
	shrl	$2, %edx
	decl	%edx
	js	.L9
	movl	8(%edi), %esi
.L51:
	movl	(%ecx,%edx,4), %eax
	movl	%eax, (%esi,%edx,4)
	decl	%edx
	jns	.L51
	jmp	.L9
.L77:
	movl	(%ecx), %edx
	movl	8(%edi), %eax
	movl	%edx, (%eax)
	movl	4(%ecx), %edx
.L65:
	movl	%edx, 4(%eax)
	jmp	.L9
.L76:
	movl	8(%edi), %edx
	movl	(%ecx), %eax
	movl	%eax, (%edx)
	jmp	.L9
.L75:
	movl	8(%edi), %edx
	movw	(%ecx), %ax
	movw	%ax, (%edx)
	jmp	.L9
.L74:
	movl	8(%edi), %edx
	movb	(%ecx), %al
	movb	%al, (%edx)
	jmp	.L9
	.p2align 2,,3
.L39:
	testl	$512, %eax
	je	.L9
	movl	16(%edi), %eax
	cmpl	$1, %eax
	je	.L68
	cmpl	$2, %eax
	je	.L67
	cmpl	$4, %eax
	je	.L66
	cmpl	$8, %eax
	jne	.L9
.L69:
	movl	8(%edi), %eax
	movl	%ecx, (%eax)
	jmp	.L65
	.p2align 2,,3
.L66:
	movl	8(%edi), %eax
	movl	%ecx, (%eax)
	jmp	.L9
.L67:
	movl	8(%edi), %eax
	movw	%cx, (%eax)
	jmp	.L9
.L68:
	movl	8(%edi), %eax
	movb	%cl, (%eax)
	jmp	.L9
.L72:
	call	*(%edi)
	movl	8(%edi), %eax
	fstpl	(%eax)
	jmp	.L9
.L71:
	call	*(%edi)
	movl	8(%edi), %eax
	fstps	(%eax)
	jmp	.L9
.L70:
#APP
	movl 8(%edi),%ebx
#NO_APP
	jmp	.L7
.L64:
	movl	12(%edi), %eax
	jmp	.L7
.Lfe1:
	.size	__builtin_avcall,.Lfe1-__builtin_avcall
	.ident	"GCC: (GNU) 3.1"
