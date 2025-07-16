
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
    xor %edx, %edx
1:
    cmpl %ecx, %edx
    jz 2f
    leal value(,%edx, 4), %ebx
	leaq fmt(%rip), %rdi
    movl (%ebx), %esi /* val */
	xor %al, %al
	call printf@PLT
    inc %edx
    jmp 1b
2:
	xor %di, %di
	call exit@PLT
