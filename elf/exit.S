    .code64
#/* default linker, see offset when _start is not used */
#// does it still 4mb  + PHDR_SIZE
    .globl main
    .type main, %function
main:
    mov $60, %eax
    mov $1, %dil
    syscall

