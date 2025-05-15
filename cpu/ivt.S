
#include "common.h"
// Interrupt Vector Table https://wiki.osdev.org/Interrupt_Vector_Table
// Jump to navigationJump to search
// On the x86 architecture, the Interrupt Vector Table (IVT) is a table that
// specifies the addresses of all the 256 interrupt handlers used in real mode.
// The IVT is typically located at 0000:0000, and is 0x400 bytes in size (4
// bytes for each interrupt -> 256  * 4). Although the default address can be changed using
// the LIDT instruction on newer CPUs, this is usually not done because it is
// both inconvenient and incompatible with other implementations and/or older
// software (e.g. MS-DOS programs). However, note that the code must remain in
// the first MiB of RAM.

// Idea loop every IVT entry in our "bootloader"


#define DISK_SECTOR 4096
#DEFINE DISK_BLOCK_SIZE (DISK_SECTOR / 8)
#define GRUB_BOOT_MACHINE_SIGNATURE	0xaa55

    .code16




    .text
FUNCTION(_start):
    call print_something
    jmp .

FUNCTION(print_something):
    movw $words, %si
1:
    movb (%si), %al
    movb $0xe, %ah
    int $0x10
    testb %al, %al
    jz done
    inc %si
    jmp 1b
done:
    ret

words: 
    .asciz "bootloader"
    .byte 0  

    . = 510
    .word GRUB_BOOT_MACHINE_SIGNATURE

