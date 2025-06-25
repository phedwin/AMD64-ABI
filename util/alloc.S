#include "header.hxx"
    
    
    /* thread safe allocated size */
    .tbss, "awT"
    .type allocated_size, %object
allocated_size: 
    .zero 4
    .size allocated_size, . - allocated_size

    .bss
.lcomm memory, (1 << 13) /* 8K */
    
    /* extern void *mem_alloc(i64); */
    .text
    .globl mem_alloc
    .type mem_alloc, %function
mem_alloc:
    testq %rdi, %rdi
    js __end
    jz __end
    leaq memory(%rip), %rax
    addq %rdi, %rax
LOCAL(__end):
    ret

