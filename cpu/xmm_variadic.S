    /* test for %rax in variadic to either use GPR or Vector register */
    /* if %rax == 0 GPR else Vector */

FUNCTION(variables):
.LFB0:
	subq	$248, %rsp
	movl	%edi, 12(%rsp)
	movq	%rsi, 72(%rsp)
	movq	%rdx, 80(%rsp)
	movq	%rcx, 88(%rsp)
	movq	%r8, 96(%rsp)
	movq	%r9, 104(%rsp)
	testb	%al, %al
	je	.L2
	movaps	%xmm0, 112(%rsp)
	movaps	%xmm1, 128(%rsp)
	movaps	%xmm2, 144(%rsp)
	movaps	%xmm3, 160(%rsp)
	movaps	%xmm4, 176(%rsp)
	movaps	%xmm5, 192(%rsp)
	movaps	%xmm6, 208(%rsp)
	movaps	%xmm7, 224(%rsp)
.L2:
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	movl	$0, 24(%rsp)
	movl	$8, 32(%rsp)
	movl	$48, 36(%rsp)
	leaq	256(%rsp), %rax
	movq	%rax, 40(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 48(%rsp)
	movl	$0, 28(%rsp)
	jmp	.L3
.L6:
	movl	32(%rsp), %eax
	cmpl	$47, %eax
	ja	.L4
	movq	48(%rsp), %rax
	movl	32(%rsp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	32(%rsp), %edx
	addl	$8, %edx
	movl	%edx, 32(%rsp)
	jmp	.L5
.L4:
	movq	40(%rsp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, 40(%rsp)
.L5:
	movl	(%rax), %eax
	addl	%eax, 24(%rsp)
	addl	$1, 28(%rsp)
.L3:
	movl	28(%rsp), %eax
	cmpl	12(%rsp), %eax
	jl	.L6
	movl	24(%rsp), %eax
	movq	56(%rsp), %rdx
	subq	%fs:40, %rdx
	je	.L8
	call	__stack_chk_fail@PLT
.L8:
	addq	$248, %rsp
	ret
