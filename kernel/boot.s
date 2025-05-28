# 0 "boot.S"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "boot.S"


.code16
.section .text
.global _start

_start:
    cli # clear interrupts
    xor %ax, %ax
    mov %ax, %ds # zero data segment
    mov %ax, %es
    mov %ax, %ss
    mov $0x7C00, %sp # set stack pointer

    mov $msg, %si # point to string
    call print # print string

hang:
    hlt
    jmp hang

print:
    lodsb # load byte from [SI] to AL
    or %al, %al
    jz .done
    mov $0x0E, %ah # BIOS teletype function
    int $0x10
    jmp print
.done:
    ret

msg:
    .asciz "Booted from MBR!\r\n"

# Pad to 510 bytes, then boot signature
.org 510
.code16
.section .text
.global _start

_start:
    cli # clear interrupts
    xor %ax, %ax
    mov %ax, %ds # zero data segment
    mov %ax, %es
    mov %ax, %ss
    mov $0x7C00, %sp # set stack pointer

    mov $msg, %si # point to string
    call print # print string

hang:
    hlt
    jmp hang

print:
    lodsb # load byte from [SI] to AL
    or %al, %al
    jz .done
    mov $0x0E, %ah # BIOS teletype function
    int $0x10
    jmp print
.done:
    ret

msg:
    .asciz "Booted from MBR!\r\n"

    # Pad to 510 bytes, then boot signature
    .org 510
.word 0xAA55
