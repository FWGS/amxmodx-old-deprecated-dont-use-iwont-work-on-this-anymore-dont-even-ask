	.file	"vacall-i386.c"
	.text
	.align 2
	.p2align 2,,3
	.type	__vacall_r,@function
__vacall_r:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	leal	8(%ebp), %edx
	subl	$56, %esp
	movl	%edx, -52(%ebp)
	leal	-56(%ebp), %edx
	movl	$0, -56(%ebp)
	movl	$0, -48(%ebp)
	movl	$0, -44(%ebp)
	movl	%ebx, -24(%ebp)
	pushl	%edx
	pushl	4(%ecx)
	call	*(%ecx)
	movl	-44(%ebp), %esi
	addl	$16, %esp
	testl	%esi, %esi
	je	.L46
	cmpl	$1, %esi
	je	.L48
	cmpl	$2, %esi
	je	.L48
	cmpl	$3, %esi
	je	.L53
	cmpl	$4, %esi
	je	.L54
	cmpl	$5, %esi
	je	.L55
	cmpl	$6, %esi
	je	.L52
	cmpl	$7, %esi
	je	.L52
	cmpl	$8, %esi
	je	.L52
	cmpl	$9, %esi
	je	.L52
	leal	-10(%esi), %edx
	cmpl	$1, %edx
	ja	.L22
	movl	-32(%ebp), %eax
#APP
	movl -28(%ebp),%edx
.L35:
	.p2align 2,,3
#NO_APP
.L46:
	movl	-56(%ebp), %esi
.L3:
	andl	$512, %esi
	je	.L1
#APP
	movl 0(%ebp),%ecx
#NO_APP
	movl	-52(%ebp), %esp
#APP
	jmp *%ecx
#NO_APP
.L1:
	leal	-8(%ebp), %esp
	popl	%esi
	popl	%edi
	leave
	ret
.L22:
	cmpl	$12, %esi
	je	.L56
	cmpl	$13, %esi
	je	.L57
	cmpl	$14, %esi
	je	.L52
	cmpl	$15, %esi
	jne	.L46
	movl	-56(%ebp), %esi
	testl	$1, %esi
	movl	%esi, %edi
	jne	.L47
	testl	$1024, %esi
	je	.L33
	movl	-40(%ebp), %edx
	cmpl	$1, %edx
	je	.L58
	cmpl	$2, %edx
	je	.L59
	cmpl	$4, %edx
	je	.L60
	cmpl	$8, %edx
	je	.L61
.L33:
	testl	$24, %edi
	jne	.L42
#APP
	leal -8(%ebp), %esp
	popl %esi
	popl %edi
	leave
	ret $4
#NO_APP
.L42:
	andl	$16, %edi
	je	.L3
.L47:
	movl	-48(%ebp), %eax
	jmp	.L3
.L61:
	movl	-48(%ebp), %edx
	movl	(%edx), %eax
#APP
	movl 4(%edx),%edx
#NO_APP
	jmp	.L3
.L60:
	movl	-48(%ebp), %edx
	movl	(%edx), %eax
	jmp	.L3
	.p2align 2,,3
.L59:
	movl	-48(%ebp), %edx
	movzwl	(%edx), %eax
	jmp	.L3
.L58:
	movl	-48(%ebp), %edx
	movzbl	(%edx), %eax
	jmp	.L3
	.p2align 2,,3
.L52:
	movl	-32(%ebp), %eax
	jmp	.L46
.L57:
#APP
	fldl -32(%ebp)
#NO_APP
	jmp	.L46
.L56:
#APP
	flds -32(%ebp)
#NO_APP
	jmp	.L46
	.p2align 2,,3
.L55:
	movzwl	-32(%ebp), %eax
	jmp	.L46
.L54:
	movswl	-32(%ebp),%eax
	jmp	.L46
.L53:
	movzbl	-32(%ebp), %eax
	jmp	.L46
	.p2align 2,,3
.L48:
	movsbl	-32(%ebp),%eax
	jmp	.L46
.Lfe1:
	.size	__vacall_r,.Lfe1-__vacall_r
	.align 2
	.p2align 2,,3
.globl get__vacall_r
	.type	get__vacall_r,@function
get__vacall_r:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	call	.L63
.L63:
	popl	%ebx
	addl	$_GLOBAL_OFFSET_TABLE_+[.-.L63], %ebx
	leal	__vacall_r@GOTOFF(%ebx), %eax
	movl	(%esp), %ebx
	leave
	ret
.Lfe2:
	.size	get__vacall_r,.Lfe2-get__vacall_r
	.ident	"GCC: (GNU) 3.1"
