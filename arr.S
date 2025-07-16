
	.data
value: .int 4,54,514,6,50
len = . - value
fmt: .string "%d\n"



	.text
	.globl _start
	.type _start, %function
_start:
    movl $len, %ecx 
    shrl $2, %ecx
    decl %ecx
1:
    cmp $0, %ecx
    jl 2f

    leal value(, %ecx, 4), %ebx
    leaq fmt(%rip), %rdi
    movl (%ebx), %esi
    xor %al, %al
    pushq %rcx
    call printf@PLT
    popq %rcx
    dec %ecx
    jmp 1b

2:
    xor %edi, %edi
    call exit@PLT