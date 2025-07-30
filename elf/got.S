/* got.S */

.extern value

    .text
    .globl main
main:
    mov $0x03c, %rax
    // static binary -static | -c 
    // movslq value(%rip), %rdi

    // relative binary -fPIC
    mov value@GOTPCREL(%rip), %rdi
    movl (%rdi), %edi
    syscall

