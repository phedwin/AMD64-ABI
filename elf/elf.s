	.file	"elf.c"
	.text
	.local	filename
	.comm	filename,8,8
	.globl	globs
	.bss
	.align 32
	.type	globs, @object
	.size	globs, 72
globs:
	.zero	72
	.section	.rodata
.LC0:
	.string	"*bin"
	.text
	.globl	find_binary
	.type	find_binary, @function
find_binary:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$16, %edi
	call	malloc@PLT
	movq	%rax, -24(%rbp)
	leaq	globs(%rip), %rax
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$0, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	glob@PLT
	movq	globs(%rip), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L9
	movq	$0, -16(%rbp)
	nop
	movq	globs(%rip), %rax
	cmpq	%rax, -16(%rbp)
	jnb	.L5
	movq	8+globs(%rip), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	strdup@PLT
	movq	%rax, filename(%rip)
	nop
.L5:
	movq	filename(%rip), %rax
	movq	%rax, %rdi
	call	strdup@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	filename(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	globs(%rip), %rax
	movq	%rax, %rdi
	call	globfree@PLT
	movq	-24(%rbp), %rax
	jmp	.L7
.L9:
	nop
.L3:
	movl	$0, %eax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	find_binary, .-find_binary
	.globl	elf
	.bss
	.align 32
	.type	elf, @object
	.size	elf, 64
elf:
	.zero	64
	.section	.rodata
.LC1:
	.string	"Error"
	.text
	.globl	read_elf_header
	.type	read_elf_header, @function
read_elf_header:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	$0, %eax
	call	find_binary
	movq	%rax, -16(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L11
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	strdup@PLT
	movq	%rax, -40(%rbp)
.L11:
	movl	$64, %edi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L18
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	open@PLT
	movb	%al, -18(%rbp)
	movzbl	-18(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	$64, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	read@PLT
	movb	%al, -17(%rbp)
	cmpb	$64, -17(%rbp)
	je	.L14
	call	__errno_location@PLT
	movl	$52, (%rax)
	jmp	.L13
.L14:
	movzbl	-17(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	elf(%rip), %rax
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	jmp	.L17
.L18:
	nop
.L13:
	cmpq	$0, -16(%rbp)
	je	.L16
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L16:
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	perror@PLT
	movl	$1, %edi
	call	exit@PLT
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	read_elf_header, .-read_elf_header
	.section	.rodata
.LC2:
	.string	"exec_elf.bin"
	.text
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC2(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	read_elf_header
	leaq	elf(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 14.2.0-19ubuntu2) 14.2.0"
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
