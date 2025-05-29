

    .global write_data
    .type write_data, @function
write_data:
    xor %rdi, %rdi
lf:
    .size write_data, . - write_data   

    .global _start
_start:
    mov $60, %rax
    syscall