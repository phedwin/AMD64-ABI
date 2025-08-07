
    .text
    .globl main
main:
    pushq $0x40
    pushq $0x3c
    popq %rax
    popq %rdi
    // movq value@GOTPCREL(%rip), %rdi
    // movl (%rdi), %edi
    // movslq value(%rip), %rdi
    syscall
