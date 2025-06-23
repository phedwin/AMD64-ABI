
#include "header.hxx"
    .bss
.lcomm buffer, 1024

    .text
    .globl __cat
    .type __cat, %function
__cat:
LOCAL(__open_file):
    testq %rdi, %rdi
    jz __end
    mov $SYS_OPEN, %rax
    mov $O_RDONLY, %rsi
    syscall
    /* handle error - not really just return */
    testb %al, %al
    jz __end
    mov %rax, %rdi
    mov $SYS_READ, %rax

    /** FIXME REDUCE ALL THESE TO MACROS **/
LOCAL(__while):
    leaq buffer(%rip), %rsi
    mov $1024, %rdx
    syscall
LOCAL(__write_to_standard_out):
    mov $SYS_WRITE, %rax
    mov $STDOUT_FILENO, %rdi
    leaq buffer(%rip), %rsi
    mov $1024, %rdx
    syscall

LOCAL(__close_file):
    mov $3, %rax
    mov $SYS_CLOSE, %rdi
    syscall
LOCAL(__end):
    ret
