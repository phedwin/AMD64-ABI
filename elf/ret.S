
    .text
    .globl increment_thread_local
    .type increment_thread_local, %function
increment_thread_local:
    // mov %fs:0, %rax
    movb global_value, %cl
    incb %cl
    ret

    .text
    .globl main
main:
    call increment_thread_local
    movb $0x3c, %al
    movzbl %cl, %edi
    syscall

    .data
signal_: .int 139 #// SIGSEGV
    // .section .tdata? is this a thing but since it goes thru my linker wellllll????
    .globl global_value
    .type global_value, %object
global_value: .int 0 #// %fs:0




