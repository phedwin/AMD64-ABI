
    .code16
    .globl copy
    .type copy, %function
copys:
    push %si
    push %di
    push %cx
    rep; movsb



    .code64
    .globl _start
_start:
    mov $0x3c, %eax
    movslq %eax, %rdi
    shr $2, %rdi
    syscall


