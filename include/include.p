

#define EXPORT_SYM(sym) .globl sym; .type sym, %function; sym:
#define LOCAL_SYM(sym) .L##sym:
#define UNREACHABLE nop
#define END_SYM(u) UNREACHABLE

#define STDIN_FILENO 0x0
#define STDOUT_FILENO 0x1
#define STDERR_FILENO 0x2


.macro SAVE_CALLEE_SAVED regs:vararg
    .irp reg,\regs
        pushq \reg
    .endr
.endm

.macro RESTORE_CALLEE_SAVED regs:vararg
    .irp reg,\regs
        popq \reg
    .endr
.endm

#define SYSCALL(sysName)         \
	EXPORT_SYM(__##sysName); \
	syscall;                 \
	ret

SYSCALL(write)
SYSCALL(open)
SYSCALL(close)
SYSCALL(stat)
SYSCALL(fstat)
SYSCALL(mmap)
SYSCALL(munmap)
SYSCALL(socket)
SYSCALL(fork)
SYSCALL(brk)
SYSCALL(kill)
SYSCALL(connect)
SYSCALL(rename)
SYSCALL(chmod)
SYSCALL(exit)