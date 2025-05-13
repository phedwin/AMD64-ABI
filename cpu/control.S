

#include "common.h"
    .extern bits
    .extern printf
/* control registers 1. cr0 */
FUNCTION(check_every_cr0_bit):
setup:
    movl %cr0, %edi
    call bits

FUNCTION(_start):
    call check_every_cr0_bit
    jmp 1f
1:
    mov 60, %eax
    xor %dil, %dil
    syscall