#include "header.hxx"

    .bss
.lcomm buffer, 1024

    .text
    .globl __cat
    .type __cat, %function
LOCAL(__cat):
    testq %rdi, %rdi
    jz .Lend               /* if path == NULL, end */

    /* open(path, O_RDONLY) */
    mov $SYS_OPEN, %rax
    mov $O_RDONLY, %rsi
    syscall
    /* check error */
    testb %al, %al
    js .Lend               /* if ret < 0 (error), end */
    mov %rax, %r12         /* save fd */

LOCAL(.Lread_loop):
    movq $SYS_READ, %rax
    movq %r12, %rdi         /* fd */
    leaq buffer(%rip), %rsi
    movq $1024, %rdx
    syscall
    testq %rax, %rax
    js .Lclose             /* read error -> close */
    jz .Lclose             /* read returned 0 -> EOF -> close */

    /* save read bytes  */
    movq %rax, %rcx

    mov $SYS_WRITE, %rax
    mov $STDOUT_FILENO, %rdi
    leaq buffer(%rip), %rsi
    /* %rdx = number of bytes read (was returned in %rax & saved in %rcx) */
    mov %rcx, %rdx /* write(fd, buf, sizeof buf); */

    syscall
    jmp .Lread_loop

LOCAL(.Lclose):
    mov $SYS_CLOSE, %rax
    mov %r12, %rdi
    syscall

LOCAL(.Lend):
    ret
