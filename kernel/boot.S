.code16
# .section .text
# .global _start

# _start:
#     cli                     # clear interrupts
#     xor %ax, %ax
#     mov %ax, %ds            # zero data segment
#     mov %ax, %es
#     mov %ax, %ss
#     mov $0x7c00, %sp        # set stack pointer

#     mov $msg, %si           # point to string
#     call print              # print string

# hang:
#     hlt
#     jmp hang
      xor %cx, %cx
# print:
#     rep; lodsb  ds:si -> %al rep ; c 
#     or %al, %al
#     jz .done
#     mov $0x0E, %ah          
#     int $0x10
#     jmp print
# .done:
#     ret


# msg:
#     .asciz "Booted from MBR!\r\n"
    
    .org 510
.short 0xaa55
