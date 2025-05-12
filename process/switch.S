#include "../linkage.h"

    .code16
FUNCTION(_start):
    cli
    xor %ax, %ax
    mov %ax, %ds
    mov %ax, %ss
    mov $0x9000, %sp

    lgdt gdt_desc

    mov %cr0, %eax
    or $1, %eax
    mov %eax, %cr0

    ljmp $0x08, $protected_mode_entry

    .code32
FUNCTION(protected_mode_entry):
    mov $0x10, %ax
    mov %ax, %ds
    mov %ax, %ss

    /* Enable PAE and Long Mode */
    mov %cr4, %eax
    or $0x20, %eax           /* Set PAE */
    mov %eax, %cr4

    /* Set up PML4, PDPT, PDT */
    mov $page_table_base, %eax
    mov %eax, %cr3

    /* Enable long mode */
    mov $0xc0000080, %ecx
    rdmsr
    or $0x100, %eax
    wrmsr

    /* Enable paging */
    mov %cr0, %eax
    or $0x80000000, %eax
    mov %eax, %cr0

    ljmp $0x18, $long_mode_entry

    .code64
FUNCTION(long_mode_entry):
    mov $0x20, %ax
    mov %ax, %ds
    mov %ax, %ss
    hlt

    .align 8
gdt:
    .quad 0x0000000000000000
    .quad 0x00cf9a000000ffff     /* 0x08 - 32-bit code */
    .quad 0x00cf92000000ffff     /* 0x10 - 32-bit data */
    .quad 0x00af9a000000ffff     /* 0x18 - 64-bit code */

gdt_desc:
    .word gdt_end - gdt - 1
    .long gdt

gdt_end:

    .align 4096
page_table_base:
    /* PML4 */
    .quad pdpt | 0x03
    .align 4096
pdpt:
    .quad pdt | 0x03
    .align 4096

    .section .data "rw"
pdt:
    /* 1GiB identity-mapped */
    .quad 0x0000000000000083     /* 2MB page, RW, Present */

.bss
.fill 510 - (. - _start), 1, 0
.word 0xAA55 // signature
