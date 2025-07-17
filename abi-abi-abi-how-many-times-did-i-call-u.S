/*  Printf -> vfprintf -> buffered I/O -> fwrite -> write (rax *1* ) -> (rdi, rsi, rdx) clobber rcx r11 */
/*  This is because i debugged a loop for hours because i couldnt get myself to actually read the linux sysv ABI docs 
    i was using an rcx for counter(well), there was an eternal loop 
    
*/
    .data
fmt: .string "%s\n"
p: .string "does printf clobber rcx"

    .text

    .globl _start
_start:
    mov $0xa, %rcx
    leaq fmt(%rip), %rdi
    leaq p(%rip), %rsi
    xor %al, %al
    call printf@PLT /* resets rcx to zero */
    mov %rcx, %rdi
    call exit@PLT
