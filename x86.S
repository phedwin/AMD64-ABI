
#define EXPORT_SYM(sym) .globl sym; .type sym, %function; sym:
#define LOCAL_SYM(sym)  .L##sym:

    .data
msg: .string "outside code segment with 32 bit code\n"
len = . - msg

    .text
EXPORT_SYM(__write)

    movl $4, %eax

    movl $1, %ebx
    movl $msg, %ecx
    movl $len, %edx
    int $0x80
    ret

EXPORT_SYM(_start)
    call __write

1:  jmp 3f
2:
LOCAL_SYM(local)
    movl $1, %eax
    movl $0, %ebx
    int $0x80
3:  movl $0xf, %ebx
    jmp 2b
