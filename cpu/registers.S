// img := layout*. | register*. ^ png

//  * The AMD64 architecture provides 16 general purpose 64-bit registers. 
//  In addition the architecture provides 16 SSE registers, each 128 bits wide and 8 x87 floating point registers 
//  each 80 bits wide. Each of the x87 floating point registers may be referred to in
//  MMX/3DNow! mode as a 64-bit register. All of these registers are global to all procedures
//  active for a given thread.

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