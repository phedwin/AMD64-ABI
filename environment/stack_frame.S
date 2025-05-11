
#include "../linkage.h"

FUNCTION(add_value):
    push %rbp            #` Save old %rbp
    mov %rsp, %rbp       #` Set up new frame pointer

    #  Perform the function logic (using arguments in %rdi, %rsi)
    add %rdi, %rsi       # Add the two arguments#
    mov %rsi, %rax       # Store the result in %rax (return value)#
    pop %rbp             # Restore old %rbp
    ret                  # Return to the caller


FUNCTION(_start):
    mov $40, %rdi
    mov $6, %rsi
    call add_value
    mov %rax, %rdi
    movw $60, %ax        
    # xor %dil, %dil
    syscall

FUNCTION(test_frame):
    push %rbp
    mov  %rsp, %rbp

    # (1) save return address
    mov 8(%rbp), %rax    # return address into rax

    # (2) save old rbp
    mov 0(%rbp), %rbx    # old %rbp into rbx

    # (3) simulate calling with more than 6 args manually
    # normally you'd call from C or hand-craft a caller#
    # (4) prove locals
    mov $1234, -8(%rbp)   # store local var
    mov -8(%rbp), %rcx    # read local back

    # (5) red zone - we’ll write to it then crash if it’s clobbered
    # mov $0xdeadbeef, -128(%rsp)  # write into red zone

    leave
    ret

