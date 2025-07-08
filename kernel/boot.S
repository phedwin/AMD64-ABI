
    .text
    .globl _syscall
    .type _syscall, %function
_syscall:
    mov %rdi, %rax /* syscall number */
    mov %rsi, %rdi
    mov %rdx, %rsi
    mov %rcx, %rdx
    syscall
    ret
    
    .globl _start
    .type _start, %function
_start:
    // cli /* clear BIOS interrupts */
    // xor %ax, %ax
    // mov %ax, %ds
    // mov %ax, %ss
    // mov %ax, %es
    // sti

    call kmain

    // .org 510
// .SIGNATURE: .word 0xaa55
