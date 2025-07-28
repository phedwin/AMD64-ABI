    .code64

    .section .deubbger
.Ldebug_value: 
    ret

    .section .bss
.lcomm buffer, (1 << 10)

    .section .rodata
rodata_name: .string  "phedwin"

/* default linker, see offset when _start is not used */
// does it still 4mb  + PHDR_SIZE

    .text
    .globl main
    .type main, %function
main:
    mov $60, %eax
    mov $1, %dil
    syscall


    .section .text_wildcard # does this works *(.text*)
    .globl new_section
    .type new_section, %function
new_section:
    ret
