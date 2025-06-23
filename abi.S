// <title> AMD64 ABI </title>
//  * The AMD64 architecture provides 16 general purpose 64-bit registers. 
//
//  In addition the architecture provides 16 SSE registers, each 128 bits wide and 8 
//  x87 floating point registers - 
//  each 80 bits wide. Each of the x87 floating point registers may be referred to in
//  MMX/3DNow! mode as a 64-bit register. All of these registers are global to all procedures
//  active for a given thread.
//
//  Intel AVX (Advanced Vector Extensions) provides 16 256-bit wide AVX registers
//  (%ymm0 - %ymm15). 
//  The lower 128-bits of %ymm0 - %ymm15 are aliased to the respective 128b-bit
//  SSE registers (%xmm0 - %xmm15). Intel AVX-512 provides 32 512-bit wide SIMD registers
//  (%zmm0 - %zmm31). The lower 128-bits of %zmm0 - %zmm31 are aliased to the respective 
//  128 bit SSE registers (%xmm0 - %xmm317 ). The lower 256-bits of %zmm0 - %zmm31 are aliased to the
//  respective 256-bit AVX registers (%ymm0 - %ymm318 ). 
//  For purposes of parameter passing and function return, %xmmN, %ymmN and %zmmN refer to the same register. 
//  Only one of them can be used at the same time. We use vector register to refer to either SSE, AVX or AVX-512
//  register. In addition, Intel AVX-512 also provides 8 vector mask registers (%k0 - %k7), each 64-bit wide.
//  Intel Advanced Matrix Extensions (Intel AMX) is a programming paradigm consisting
//  of two components := a set of 2-dimensional registers (tiles) representing sub-arrays from a
//  larger 2-dimensional memory image, and accelerators able to operate on tiles. 
//  Capability of Intel AMX implementation is enumerated by palettes. Two palettes are supported:
//  palette 0 represents the initialized state and palette 1 consists of 8 tile registers (%tmm0 -
//  %tmm7) of up to 1 KB size, which is controlled by a tile control register.
//  Intel APX (Advanced Performance Extensions) provides 16 general purpose 64-bit
//  registers (%r16 - %r31)

//  This subsection discusses usage of each register. Registers %rbp, %rbx and %r12 through
//  %r15 “belong” to the calling function and the called function is required to preserve their
//  values. In other words, a called function must preserve these registers values for its
//  caller. Remaining registers “belong” to the called function.9 If a calling function wants
//  to preserve such a register value across a function call, it must save the value in its local
//  The CPU shall be in x87 mode upon entry to a function. Therefore, every function
//  that uses the MMX registers is required to issue an emms or femms instruction after using
//  MMX registers, before returning or calling another function. 10 The direction flag DF
//  in the %rFLAGS register must be clear (set to “forward” direction) on function entry and
//  return. Other user flags have no specified role in the standard calling sequence and are not
//  preserved across calls.
//  The control bits of the MXCSR register are callee-saved (preserved across calls), while
//  the status bits are caller-saved (not preserved). The x87 status word register is caller-saved,
//  whereas the x87 control word is callee-saved.


// .macro setup_proc
//     push %rbp
//     mov %rsp, %rbp
// .endm

// FUNCTION(_start):
//     setup_proc
//     call check_callee_saved_reg
//     /* at this point we have the address of %rbp */
//     sub $12, %rsp
//     mov %eax, -0x8(%rbp)
//     mov 8(%rbp), %rdi /* dereference address */
//     // Undefined Behaviour
//     # mov -8(%rbp), %rdi
//     //  CPU  -> switch to kernel
//     mov $60, %eax
//     syscall

//     leave

// The Callers Rules
// The caller should adhere to the following rules when invoking a subroutine :-
//      1. Before calling a subroutine, the caller should save the contents of certain registers 
//  that are designated caller-saved. The caller-saved registers are r10, r11, and any registers that
//  parameters are put into. If you want the contents of these registers to be preserved across the 
//  subroutine call, push them onto the stack.
//      2. To pass parameters to the subroutine, we put up to six of them into registers (in order: rdi, rsi,
// rdx, rcx, r8, r9). If there are more than six parameters to the subroutine, then push the rest onto
// the stack in reverse order (i.e. last parameter first) - since the stack grows down, the first of the
// extra parameters (really the seventh parameter) parameter will be stored at the lowest address (this
// inversion of parameters was historically used to allow functions to be passed a variable number of
// parameters).
//      3. To call the subroutine, use the call instruction. This instruction places the return address on top
// of the parameters on the stack, and branches to the subroutine code.
//      4. After the subroutine returns, (i.e. immediately following the call instruction) the caller must 
// remove  any additional parameters (beyond the six stored in registers) from stack. This restores the stack to
// its state before the call was performed.
//      5. The caller can expect to find the return value of the subroutine in the register RAX.
//      6. The caller restores the contents of caller-saved registers (r10, r11, and any in the parameter 
// passing registers) by popping them off of the stack. The caller can assume that no other registers were
// modified by the subroutine.

// FUNCTION(check_callee_saved_reg):
//     setup_proc
//     mov $10, %eax
//     mov $30, %edi
//     add %edi, %eax
//     leave
//     ret
    /* returns eax & rbp for strace debugging */


//  The Callees Rules
//  The definition of the subroutine should adhere to the following rules :-
//      1. Allocate local variables by using registers or making space on the stack. 
//  Recall, the stack grows down, so to make space on the top of the stack, the stack 
//  pointer should be decremented. The amount by which the stack pointer is 
//  decremented depends on the number of local variables needed [ this is optional btw ]
//   * For example, if a local float and a local long (12 bytes total) were required, 
//  the stack pointer would need to be decremented by 12 to make space for these 
//  local variables
//      sub $12, %rsp
//  As with parameters, local variables will be located at known offsets from the stack pointer.
//
//      2. Next, the values of any registers that are designated callee-saved that will be used 
//  by the function must be saved. To save registers, push them onto the stack. 
//  The callee-saved registers are RBX, RBP and R12 through R15 (RSP will also be preserved 
//  by the call convention, but need not be pushed on the stack during this step).
//  After these three actions are performed, the actual operation of the subroutine may proceed. 
//  When the subroutine is ready to return, the call convention rules continue

//      3. When the function is done, the return value for the function should be placed in 
//  RAX if it is not already there.
//      4. The function must restore the old values of any callee-saved registers 
//  (RBX, RBP, and R12 through R15) that were modified. The register contents are 
//  restored by popping them from the stack. Note, the registers should be popped
//  in the inverse order that they were pushed.
//      5. Next, we deallocate local variables. The easiest way to do this is to 
//  add to RSP the same amount that was subtracted from it in step 1.