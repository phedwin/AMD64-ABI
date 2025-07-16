
    .data
fmt: .string "%s\n"
p: .string "does printf clobber rcx"

    .text

    .globl _start
_start:
    mov $0xa, %rcx
    leaq fmt(%rip), %rdi
    leaq p(%rip), %rsi
    xor %al, %al
    call printf@PLT /* take rcx to zero */
    mov %rcx, %rdi
    call exit@PLT
