

#define EXPORT_SYM(sym) .globl sym; .type sym, %function; sym:
#define LOCAL_SYM(sym) sym:
#define UNREACHABLE nop

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


//     .data /* figure out how to .irp || .rpt this */
//     .globl string_fmt
//     .type string_fmt, %object 
// string_fmt: .string "%s"