/* start of something great Jul 17, 25 Alusa why are u topless? 1. 52 in the morning */

#include "include.S"
#include "syscall.S"



    .bss
    .p2align 8
original_termios: .skip TERMIOS_STRUCT_SIZE_MAGIC /* based on sizeof struct termios */
raw_termios: .skip TERMIOS_STRUCT_SIZE_MAGIC

    .data
read_buffer: .zero 1024
    .text
EXPORT_SYM(_start)
.L__disable__raw_mode:
    call enable_raw_mode
    /* start reading from stdin ➜ read(1, read_buf, sizeof read_buf)  */
.L__read__stdin: 
    movb $SYS_READ, %al
    movb $STDIN_FILENO, %dil
    leaq read_buffer(%rip), %rsi
    movw $1024, %dx
    call sys_read
    pushq %rax

.L__write__stdout:
    movb $SYS_WRITE, %al
    movb $STDOUT_FILENO, %dil
    leaq read_buffer(%rip), %rsi
    pop %rdx 
    call sys_write
.L__exit__start_rout:
    call disable_raw_mode
    mov $SYS_EXIT, %eax
    xorw %di, %di
    call sys_exit

/* - this routine only works after disable_raw_mode, thats where orig termios is initialized -*/
EXPORT_SYM(disable_raw_mode)
    movb $STDIN_FILENO, %dil
    movb $TCSAFLUSH, %sil
    leaq original_termios(%rip), %rdx
    call tcsetattr
    ret

EXPORT_SYM(enable_raw_mode)
    /* Get original settings */
    movb $STDIN_FILENO, %dil
    leaq original_termios(%rip), %rsi
    call tcgetattr

    leaq original_termios(%rip), %rsi
    leaq raw_termios(%rip), %rdi
    movq $TERMIOS_STRUCT_SIZE_MAGIC, %rdx 
    // call __memcpy /* where? */

.L__patch_raw_termios:
    // 0 - 3 input mode flags 
    movl (%rdi), %eax
    andl $~(BRKINT | ICRNL | INPCK | ISTRIP | IXON), %eax
    movl %eax, (%rdi)

    // 4 - 7 output mode
    movl 4(%rdi), %eax
    andl $~(OPOST), %eax
    movl %eax, 4(%rdi)

    movl 8(%rdi), %eax
    orl  $(CS8), %eax
    movl %eax, 8(%rdi)

    // local mode 12 - 16
    movl 12(%rdi), %eax
    andl $~(ECHO | ICANON | IEXTEN | ISIG), %eax
    movl %eax, 12(%rdi)
    // control characters 5 & 6 
    // c_cc[VMIN] = 0
    movb $0, 17+6(%rdi)

    // c_cc[VTIME] = 1
    movb $1, 17+5(%rdi)
    

    movb $STDIN_FILENO, %dil
    movb $TCSAFLUSH, %sil
    leaq raw_termios(%rip), %rdx
    call tcsetattr
    ret



