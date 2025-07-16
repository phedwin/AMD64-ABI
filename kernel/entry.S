
    .text
EXPORT_SYM(__write)
    mov $SYS_WRITE, %rax
    syscall
    ret

EXPORT_SYM(__exit)
    mov $SYS_EXIT, %rax
    syscall

// bootstrap entry
EXPORT_SYM(_start)
    movq 0(%rsp), %rdi
    leaq 8(%rsp), %rsi 


    call kmain

    UNREACHABLE

EXPORT_SYM(__add_values_effect_with_us8_asm)
    pushq %rbp
    movq %rsp, %rbp
    movq (%rdi), %xmm0
    movq (%rsi), %xmm1
    paddusb %xmm1, %xmm0
    movq %xmm0, (%rdi)
    leave
    ret