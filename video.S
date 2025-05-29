.code16
.global _start

_start:
    cli
    xor %ax, %ax
    mov %ax, %ds        # Clear DS

    mov $0xB800, %ax
    mov %ax, %es        # Set ES to video memory segment

    movw $0x0F41, %ax   # 'A' + attribute
    movw %ax, %es:(0)   # Write to video memory at offset 0

hang:
    jmp hang

.org 510
    .word 0xAA55
