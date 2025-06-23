
    .text
    .globl _start
    .type _start, %function
_start:
    cli 
    xor %ax, %ax
    mov %ax, %ds 
    mov %ax, %es
    mov %ax, %ss
    mov $0x7c00, %sp //  -Wl, -Ttext=0x7c00
    sti

    mov $msg, %si 
    call print

hang:
    hlt
    jmp hang

print:
    lodsb 
    or %al, %al
    jz .done
    mov $0x0E, %ah
    int $0x10
    jmp print
.done:
    ret

msg:
    .string "Booted from MBR!\r\n"

    .org 510
signature: .short 0xaa55
