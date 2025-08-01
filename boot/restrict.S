	.file	"restrict.c"
	.text
	.p2align 4
	.globl	bench_with_restrict
	.type	bench_with_restrict, @function
bench_with_restrict:
.LFB23:
	.cfi_startproc
	endbr64
	movq	%rdx, %r9
	testl	%ecx, %ecx
	je	.L1
	leal	-1(%rcx), %eax
	movd	(%rdx), %xmm2
	cmpl	$2, %eax
	jbe	.L6
	movl	%ecx, %edx
	xorl	%eax, %eax
	pxor	%xmm1, %xmm1
	shrl	$2, %edx
	salq	$4, %rdx
	.p2align 5
	.p2align 4
	.p2align 3
.L4:
	movdqu	(%rdi,%rax), %xmm0
	movdqu	(%rsi,%rax), %xmm3
	addq	$16, %rax
	paddd	%xmm3, %xmm0
	paddd	%xmm0, %xmm1
	cmpq	%rax, %rdx
	jne	.L4
	movdqa	%xmm1, %xmm0
	psrldq	$8, %xmm0
	paddd	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	psrldq	$4, %xmm0
	paddd	%xmm0, %xmm1
	paddd	%xmm1, %xmm2
	testb	$3, %cl
	je	.L5
	movl	%ecx, %eax
	andl	$-4, %eax
.L3:
	movslq	%eax, %rdx
	movd	(%rsi,%rdx,4), %xmm1
	movd	(%rdi,%rdx,4), %xmm0
	leaq	0(,%rdx,4), %r8
	paddd	%xmm1, %xmm0
	leal	1(%rax), %edx
	paddd	%xmm0, %xmm2
	cmpl	%ecx, %edx
	jnb	.L5
	movd	4(%rsi,%r8), %xmm1
	movd	4(%rdi,%r8), %xmm0
	addl	$2, %eax
	paddd	%xmm1, %xmm0
	paddd	%xmm0, %xmm2
	cmpl	%ecx, %eax
	jnb	.L5
	movd	8(%rdi,%r8), %xmm1
	movd	8(%rsi,%r8), %xmm0
	paddd	%xmm1, %xmm0
	paddd	%xmm0, %xmm2
.L5:
	movd	%xmm2, (%r9)
.L1:
	ret
.L6:
	xorl	%eax, %eax
	jmp	.L3
	.cfi_endproc
.LFE23:
	.size	bench_with_restrict, .-bench_with_restrict
	.p2align 4
	.globl	bench_no_restrict
	.type	bench_no_restrict, @function
bench_no_restrict:
.LFB24:
	.cfi_startproc
	endbr64
	movq	%rdi, %r9
	testl	%ecx, %ecx
	je	.L15
	movl	%ecx, %ecx
	movl	(%rdx), %edi
	xorl	%eax, %eax
	leaq	0(,%rcx,4), %r8
	.p2align 5
	.p2align 4
	.p2align 3
.L17:
	movl	(%rsi,%rax), %ecx
	addl	(%r9,%rax), %ecx
	addq	$4, %rax
	addl	%ecx, %edi
	movl	%edi, (%rdx)
	cmpq	%rax, %r8
	jne	.L17
.L15:
	ret
	.cfi_endproc
.LFE24:
	.size	bench_no_restrict, .-bench_no_restrict
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"sum %d"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB25:
	.cfi_startproc
	endbr64
	movl	$268, %edx
	leaq	.LC0(%rip), %rsi
	movl	$2, %edi
	xorl	%eax, %eax
	jmp	__printf_chk@PLT
	.cfi_endproc
.LFE25:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 14.2.0-4ubuntu2) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
