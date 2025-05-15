#include "common.h"

.macro setup_proc
    push %rbp
    mov %rsp, %rbp
.endm

FUNCTION(add_sse_reg):
    setup_proc
    movss   %xmm0, -4(%rbp)
    movsd   %xmm1, -16(%rbp)
    movss   %xmm2, -8(%rbp)
    movq    %rdi, -24(%rbp)
    pxor    %xmm0, %xmm0
    cvtss2sd    -4(%rbp), %xmm0
    addsd   -16(%rbp), %xmm0
    movsd   %xmm0, -32(%rbp)
    fldl    -32(%rbp)
    fldt    16(%rbp)
    faddp   %st, %st(1)
    flds    -8(%rbp)
    faddp   %st, %st(1)
    movq    -24(%rbp), %rax
    fstpt   (%rax)
    nop
    leave
    ret