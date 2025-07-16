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
