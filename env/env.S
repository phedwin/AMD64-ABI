
// #define EXPORT_SYM(value) 
//     .globl value; \
//     .type value, %function; \
//     value:;

format: .asciz "%s"

    .globl _start
    .type _start, %function
_start:
    movq (%rsp), %rdi
    leaq 8(%rsp), %rsi

    movq %rdi, %rdx
    shlq $3, %rdx
    addq $8, %rdx
    leaq (%rsi, %rdx), %rdx
    xor %rbx, %rbx
.loop:
    leaq (%rdx, %rbx, 8), %rsi
    testb %sil, %sil
    je .done
    leaq format(%rip), %rdi
    xor %al, %al
    call printf@PLT
    inc %rbx
    jmp .loop

.done:
    mov $60, %rax
    xor %rdi, %rdi
    syscall 



