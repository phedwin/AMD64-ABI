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



.section .text
.globl cmp
cmp:
    # int cmp(const void *a, const void *b)
    # Arguments:
    #   %rdi: const void *a
    #   %rsi: const void *b

    movl (%rdi), %eax   # Move the integer pointed to by a into %eax
    movl (%rsi), %ecx   # Move the integer pointed to by b into %ecx
    subl %ecx, %eax     # Subtract b from a (%eax = a - b)
    ret                 # Return the result in %eax

.globl findMedianSortedArrays
findMedianSortedArrays:
    # double findMedianSortedArrays(int *nums1, int nums1Size, int *nums2, int nums2Size)
    # Arguments:
    #   %rdi: int *nums1
    #   %rsi: int nums1Size
    #   %rdx: int *nums2
    #   %rcx: int nums2Size

    # Prologue
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $64, %rsp    # Allocate space for local variables and array on stack.
                         # This should be enough for a small T. For larger T,
                         # consider dynamic allocation with malloc.

    # Register assignments for clarity:
    # %r10: nums1Size (from %rsi)
    # %r11: nums2Size (from %rcx)
    # %r12: T (total size)
    # %r13: array base address (local stack variable)

    movl    %esi, %r10d  # nums1Size
    movl    %ecx, %r11d  # nums2Size

    # Calculate T = nums1Size + nums2Size
    addl    %r10d, %r11d # %r11d now holds T (total size)
    movq    %r11, %r12   # Copy T to %r12 for 64-bit operations if needed

    # Local array 'array' on the stack
    # Assuming 'array' starts at %rbp - 64 (adjust as needed based on other locals)
    leaq    -64(%rbp), %r13 # Load effective address of array start

    # Merge nums1 into array
    xorl    %eax, %eax  # i = 0
    jmp     .L_merge_nums1_cond
.L_merge_nums1_loop:
    movl    (%rdi, %rax, 4), %edx # Load nums1[i]
    movl    %edx, (%r13, %rax, 4) # Store nums1[i] into array[i]
    incl    %eax                # i++
.L_merge_nums1_cond:
    cmpl    %r10d, %eax         # Compare i with nums1Size
    jl      .L_merge_nums1_loop

    # Merge nums2 into array
    xorl    %eax, %eax          # i = 0 for nums2
    movq    %r10, %r8           # %r8 holds the offset for array (nums1Size)
    jmp     .L_merge_nums2_cond
.L_merge_nums2_loop:
    movl    (%rdx, %rax, 4), %ecx # Load nums2[i]
    movl    %ecx, (%r13, %r8, 4) # Store nums2[i] into array[nums1Size + i]
    incl    %eax                # i++
    incq    %r8                 # Increment offset for array
.L_merge_nums2_cond:
    cmpl    %r11d, %eax         # Compare i with nums2Size (This should be i with original %r11d (nums2Size))
                                # Fix: This loop's condition should be compared with the original nums2Size (%rcx)
                                #      or use a separate counter for array index.
                                # Corrected logic below for nums2 merge.

    # Corrected nums2 merge:
    # The array index for nums2 should be `nums1Size + i`.
    # Let's re-do the merge for nums2:
    movl    %esi, %eax          # %eax = nums1Size (starting index for nums2 elements in 'array')
    xorl    %edx, %edx          # %edx = 0 (loop counter for nums2)
    jmp     .L_merge_nums2_cond_fixed
.L_merge_nums2_loop_fixed:
    movl    (%rcx, %edx, 4), %r9d # Load nums2[edx] (using %rcx for original nums2 pointer)
    movl    %r9d, (%r13, %rax, 4) # Store nums2[edx] into array[eax]
    incl    %eax                # Increment array index
    incl    %edx                # Increment nums2 counter
.L_merge_nums2_cond_fixed:
    cmpl    %r10d, %edx         # Compare nums2 counter with nums2Size (original %rcx)
    jl      .L_merge_nums2_loop_fixed

    # Call qsort
    # qsort(&array, T, sizeof(int), cmp);
    # Arguments for qsort:
    # %rdi: base address of array
    # %rsi: number of elements (T)
    # %rdx: size of each element (sizeof(int) = 4)
    # %rcx: pointer to comparison function (cmp)
    movq    %r13, %rdi           # &array
    movq    %r12, %rsi           # T
    movl    $4, %edx             # sizeof(int)
    leaq    cmp(%rip), %rcx      # Address of cmp function
    call    qsort

    # Check if T is odd or even
    # if (T % 2 != 0)
    movq    %r12, %rax           # T
    movq    %rax, %rdx           # Copy T to %rdx for division
    shrq    $63, %rdx            # Sign extend to get 0 or 1 for division
    andq    $1, %rax             # T % 2 (result in %rax)
    testq   %rax, %rax           # Check if T % 2 is 0
    jne     .L_odd_median        # If not zero (odd), jump to odd median calculation

.L_even_median:
    # Even length
    # N = (array[T / 2 - 1] + array[T / 2]) / 2.0;
    movq    %r12, %rax           # T
    shrq    $1, %rax             # T / 2 (integer division) -> index of second middle element
    decq    %rax                 # T / 2 - 1 -> index of first middle element

    movl    (%r13, %rax, 4), %esi # Load array[T/2 - 1] into %esi
    incq    %rax                 # Now %rax is T / 2
    movl    (%r13, %rax, 4), %edi # Load array[T/2] into %edi

    # Sum the two middle elements
    addl    %edi, %esi           # %esi = array[T/2 - 1] + array[T/2]

    # Convert to double and divide by 2.0
    # Use float division instructions
    pxor    %xmm0, %xmm0        # Clear %xmm0
    cvtsi2sd %esi, %xmm0        # Convert sum (integer) to double in %xmm0
    movsd   .L_two_0_double(%rip), %xmm1 # Load 2.0 into %xmm1
    divsd   %xmm1, %xmm0        # %xmm0 = %xmm0 / %xmm1 (sum / 2.0)
    jmp     .L_median_exit

.L_odd_median:
    # Odd length
    # N = array[T / 2];
    movq    %r12, %rax           # T
    shrq    $1, %rax             # T / 2 (integer division) -> index of median element

    movl    (%r13, %rax, 4), %esi # Load array[T / 2] into %esi (integer)

    # Convert to double
    pxor    %xmm0, %xmm0        # Clear %xmm0
    cvtsi2sd %esi, %xmm0        # Convert integer to double in %xmm0

.L_median_exit:
    # Result is in %xmm0
    movq    %rbp, %rsp
    popq    %rbp
    ret

.section .rodata
.align 8
.L_two_0_double:
    .double 2.0