
    .data
elf: .string "elf32\n"

    .text
    .globl main
    .type main, %function
main:
    mov $1, %ebx
    mov $1, %eax
    int $0x80


