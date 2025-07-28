syscall_arguments:
        pushq   %rbp
        movq    %rsp, %rbp
        subq    $288, %rsp
        testb   %al, %al
        je      .LBB0_15
        movaps  %xmm0, -208(%rbp)
        movaps  %xmm1, -192(%rbp)
        movaps  %xmm2, -176(%rbp)
        movaps  %xmm3, -160(%rbp)
        movaps  %xmm4, -144(%rbp)
        movaps  %xmm5, -128(%rbp)
        movaps  %xmm6, -112(%rbp)
        movaps  %xmm7, -96(%rbp)
.LBB0_15:
        movq    %r9, -216(%rbp)
        movq    %r8, -224(%rbp)
        movq    %rcx, -232(%rbp)
        movq    %rdx, -240(%rbp)
        movq    %rdi, -16(%rbp)
        movq    %rsi, -24(%rbp)
        movl    $56, %edi
        callq   malloc@PLT
        movq    %rax, -32(%rbp)
        movq    -16(%rbp), %rdi
        callq   init_syscall
        movslq  %eax, %rcx
        movq    -32(%rbp), %rax
        movq    %rcx, (%rax)
        leaq    -64(%rbp), %rax
        leaq    -256(%rbp), %rcx
        movq    %rcx, 16(%rax)
        leaq    16(%rbp), %rcx
        movq    %rcx, 8(%rax)
        movl    $48, 4(%rax)
        movl    $16, (%rax)
        movl    $48, %edi
        callq   malloc@PLT
        movq    %rax, -40(%rbp)
        cmpq    $0, -40(%rbp)
        jne     .LBB0_2
        jmp     .LBB0_12
.LBB0_2:
        jmp     .LBB0_3
.LBB0_3:
        movq    -40(%rbp), %rdi
        xorl    %eax, %eax
        movl    $48, %ecx
        rep
        stosb   %al, %es:(%rdi)
        movl    $0, -68(%rbp)
.LBB0_5:
        movslq  -68(%rbp), %rax
        cmpq    -24(%rbp), %rax
        jae     .LBB0_11
        leaq    -64(%rbp), %rax
        movq    %rax, -272(%rbp)
        movl    -64(%rbp), %eax
        movl    %eax, -260(%rbp)
        cmpl    $40, %eax
        ja      .LBB0_8
        movq    -272(%rbp), %rcx
        movl    -260(%rbp), %edx
        movslq  %edx, %rax
        addq    16(%rcx), %rax
        addl    $8, %edx
        movl    %edx, (%rcx)
        movq    %rax, -280(%rbp)
        jmp     .LBB0_9
.LBB0_8:
        movq    -272(%rbp), %rcx
        movq    8(%rcx), %rax
        movq    %rax, %rdx
        addq    $8, %rdx
        movq    %rdx, 8(%rcx)
        movq    %rax, -280(%rbp)
.LBB0_9:
        movq    -280(%rbp), %rax
        movq    (%rax), %rdx
        movq    -40(%rbp), %rax
        movslq  -68(%rbp), %rcx
        movq    %rdx, (%rax,%rcx,8)
        movl    -68(%rbp), %eax
        addl    $1, %eax
        movl    %eax, -68(%rbp)
        jmp     .LBB0_5
.LBB0_11:
        leaq    -64(%rbp), %rax
        movq    -40(%rbp), %rax
        movq    (%rax), %rcx
        movq    -32(%rbp), %rax
        movq    %rcx, 8(%rax)
        movq    -40(%rbp), %rax
        movq    8(%rax), %rcx
        movq    -32(%rbp), %rax
        movq    %rcx, 16(%rax)
        movq    -40(%rbp), %rax
        movq    16(%rax), %rcx
        movq    -32(%rbp), %rax
        movq    %rcx, 24(%rax)
        movq    -40(%rbp), %rax
        movq    24(%rax), %rcx
        movq    -32(%rbp), %rax
        movq    %rcx, 32(%rax)
        movq    -40(%rbp), %rax
        movq    32(%rax), %rcx
        movq    -32(%rbp), %rax
        movq    %rcx, 40(%rax)
        movq    -40(%rbp), %rax
        movq    40(%rax), %rcx
        movq    -32(%rbp), %rax
        movq    %rcx, 48(%rax)
        movq    -40(%rbp), %rdi
        callq   free@PLT
        movq    -32(%rbp), %rax
        movq    %rax, -8(%rbp)
        jmp     .LBB0_13
.LBB0_12:
        movq    $0, -8(%rbp)
.LBB0_13:
        movq    -8(%rbp), %rax
        addq    $288, %rsp
        popq    %rbp
        retq

init_syscall:
        pushq   %rbp
        movq    %rsp, %rbp
        subq    $32, %rsp
        movq    %rdi, -16(%rbp)
        movl    $0, -20(%rbp)
.LBB1_1:
        movslq  -20(%rbp), %rax
        cmpq    $5, %rax
        jae     .LBB1_6
        movslq  -20(%rbp), %rcx
        leaq    x86syscalls(%rip), %rax
        shlq    $4, %rcx
        addq    %rcx, %rax
        movq    (%rax), %rdi
        movq    -16(%rbp), %rsi
        callq   strcmp@PLT
        cmpl    $0, %eax
        jne     .LBB1_4
        movslq  -20(%rbp), %rcx
        leaq    x86syscalls(%rip), %rax
        shlq    $4, %rcx
        addq    %rcx, %rax
        movl    8(%rax), %eax
        movl    %eax, -4(%rbp)
        jmp     .LBB1_7
.LBB1_4:
        jmp     .LBB1_5
.LBB1_5:
        movl    -20(%rbp), %eax
        addl    $1, %eax
        movl    %eax, -20(%rbp)
        jmp     .LBB1_1
.LBB1_6:
        movl    $-1, -4(%rbp)
.LBB1_7:
        movl    -4(%rbp), %eax
        addq    $32, %rsp
        popq    %rbp
        retq

main:
        pushq   %rbp
        movq    %rsp, %rbp
        leaq    .L.str(%rip), %rdi
        movl    $1, %esi
        movl    $130, %edx
        movb    $0, %al
        callq   syscall_arguments
        movq    %rax, sys(%rip)
        movq    sys(%rip), %rax
        movq    (%rax), %rax
        movq    sys(%rip), %rcx
        movq    8(%rcx), %rdi
        movq    %rax, %rax
        syscall

        xorl    %eax, %eax
        popq    %rbp
        retq

find_binary:
        pushq   %rbp
        movq    %rsp, %rbp
        subq    $32, %rsp
        movl    $16, %edi
        callq   malloc@PLT
        movq    %rax, -16(%rbp)
        leaq    .L.str.5(%rip), %rdi
        xorl    %esi, %esi
        xorl    %eax, %eax
        movl    %eax, %edx
        leaq    globs(%rip), %rcx
        callq   glob@PLT
        movq    globs(%rip), %rax
        movb    %al, %cl
        movq    -16(%rbp), %rax
        movb    %cl, (%rax)
        movq    -16(%rbp), %rax
        cmpb    $0, (%rax)
        jne     .LBB3_2
        jmp     .LBB3_6
.LBB3_2:
        movq    $0, -24(%rbp)
        movq    -24(%rbp), %rax
        cmpq    globs(%rip), %rax
        jae     .LBB3_5
        movq    globs+8(%rip), %rax
        movq    -24(%rbp), %rcx
        movq    (%rax,%rcx,8), %rax
        movq    %rax, -32(%rbp)
        movq    -32(%rbp), %rdi
        callq   strdup@PLT
        movq    %rax, filename(%rip)
.LBB3_5:
        movq    filename(%rip), %rdi
        callq   strdup@PLT
        movq    %rax, %rcx
        movq    -16(%rbp), %rax
        movq    %rcx, 8(%rax)
        movq    filename(%rip), %rdi
        callq   free@PLT
        leaq    globs(%rip), %rdi
        callq   globfree@PLT
        movq    -16(%rbp), %rax
        movq    %rax, -8(%rbp)
        jmp     .LBB3_7
.LBB3_6:
        movq    $0, -8(%rbp)
.LBB3_7:
        movq    -8(%rbp), %rax
        addq    $32, %rsp
        popq    %rbp
        retq

read_elf_header:
        pushq   %rbp
        movq    %rsp, %rbp
        subq    $32, %rsp
        movq    %rdi, -8(%rbp)
        callq   find_binary
        movq    %rax, -16(%rbp)
        cmpq    $0, -8(%rbp)
        jne     .LBB4_2
        movq    -16(%rbp), %rax
        movq    8(%rax), %rdi
        callq   strdup@PLT
        movq    %rax, -8(%rbp)
.LBB4_2:
        movl    $64, %edi
        callq   malloc@PLT
        movq    %rax, -24(%rbp)
        cmpq    $0, -24(%rbp)
        jne     .LBB4_4
        jmp     .LBB4_9
.LBB4_4:
        movq    -8(%rbp), %rdi
        xorl    %esi, %esi
        movb    $0, %al
        callq   open@PLT
        movb    %al, -25(%rbp)
        movzbl  -25(%rbp), %eax
        cmpl    $0, %eax
        jge     .LBB4_6
        jmp     .LBB4_9
.LBB4_6:
        movzbl  -25(%rbp), %edi
        movq    -24(%rbp), %rsi
        movl    $64, %edx
        callq   read@PLT
        movb    %al, -26(%rbp)
        movzbl  -26(%rbp), %eax
        cmpq    $64, %rax
        je      .LBB4_8
        callq   __errno_location@PLT
        movl    $52, (%rax)
        jmp     .LBB4_9
.LBB4_8:
        movq    -24(%rbp), %rsi
        movzbl  -26(%rbp), %eax
        movl    %eax, %edx
        leaq    elf(%rip), %rdi
        callq   memcpy@PLT
        movq    -24(%rbp), %rdi
        callq   free@PLT
        jmp     .LBB4_13
.LBB4_9:
        cmpq    $0, -16(%rbp)
        je      .LBB4_11
        movq    -16(%rbp), %rax
        movq    8(%rax), %rdi
        callq   free@PLT
        movq    -16(%rbp), %rdi
        callq   free@PLT
.LBB4_11:
        leaq    .L.str.6(%rip), %rdi
        callq   perror@PLT
        movl    $1, %edi
        movb    $60, %al
        syscall

.LBB4_13:
        addq    $32, %rsp
        popq    %rbp
        retq

.L.str:
        .asciz  "exit"

sys:
        .quad   0

.L.str.1:
        .asciz  "read"

.L.str.2:
        .asciz  "write"

.L.str.3:
        .asciz  "open"

.L.str.4:
        .asciz  "mmap"

x86syscalls:
        .quad   .L.str.1
        .long   0
        .long   0
        .quad   .L.str.2
        .long   1
        .long   0
        .quad   .L.str
        .long   60
        .long   0
        .quad   .L.str.3
        .long   3
        .long   0
        .quad   .L.str.4
        .long   9
        .long   0

value:
        .long   0

.L.str.5:
        .asciz  "*bin"

globs:
        .zero   72

elf:
        .zero   64

.L.str.6:
        .asciz  "Error"