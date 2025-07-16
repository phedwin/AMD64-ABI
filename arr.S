
#include "include.p"

    .file "arr.S"



	.data
value: .4byte 4,54,514,6,50
len = . - value
fmt: .string "%d\n"

	.text
    .type __effect_rbx, %function
__effect_rbx:
    SAVE_CALLEE_SAVED %rbx
    mov $1, %rbx
    RESTORE_CALLEE_SAVED %rbx
    ret

	.globl _start
	.type _start, %function
_start:
    movl $len, %ebx
    shrl $2, %ebx
    decl %ebx
    leaq value(%rip) /* saved */, %r12 
1:
    cmp $0, %ebx
    jl 2f

    leaq fmt(%rip), %rdi
    leaq (%r12, %rbx, 4), %rsi
    mov (%rsi), %rsi 
    xor %al, %al
    call printf@PLT
    dec %ebx
    jmp 1b

2:
    xor %edi, %edi
    call exit@PLT