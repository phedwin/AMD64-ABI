
#include "include.p"
#include "syscall.p"
/* start of something great Jul 17, 25 Alusa why are u topless? 1. 52 in the morning */

/* Let’s try and read keypresses from the user. (The lines you need to add are highlighted and marked with arrows) .*/

    .bss
.lcomm buffer, 1024

    .data
string_fmt: .string "%s"
    .text
EXPORT_SYM(_start)
    /* read user input ➜ read(1, buffer, sizeof buffer)  */
    mov $SYS_READ, %rax
    mov $STDIN_FILENO, %rdi
    leaq buffer(%rip), %rsi
    movw $1024, %dx
    syscall

    leaq string_fmt(%rip), %rdi
    leaq buffer(%rip), %rsi
    xor %al, %al
    call printf@PLT

    xor %di, %di
    call exit@PLT
    
    UNREACHABLE
