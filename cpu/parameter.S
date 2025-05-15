
/*page 23 sysV ABI */

/* rdi, rsi, rdx, rcx, r8, r9  <stack from here> */


    /* int add_values(8 elements) */
FUNCTION(add_values):
    /* pass args to local as local variable - unnecessary this makes alot of cycles */
    mov %rdi -0x8(%rbp)
    add -0x8(%rbp), %rax
    mov %rsi, -0x8(%rbp)
    add -0x8(%rbp), %rax
    mov %rdx, -0x8(%rbp)
    add -0x8(%rbp), %rax
    mov  %rcx, -0x8(%rbp)
    add -0x8(%rbp), %rax
    mov %r8, -0x8(%rbp),
    mov %r9 -16(%rbp)
    add -8(%rbp), -16(%rbp)
    add -16(%rbp), %rax
    ret

FUNCTION(_start):
    
    call add_values
    mov %rax, %rdi
    mov $60, %eax
    syscall

