## <u> questions, from AMD SYS V ABI </u>

1.  "The CPU shall be in x87 mode upon entry to a function" wat is this mode? & what does
    this mean also the documents further in the book continues with this "3.4Process Initialization
    3.4.1Initial Stack and Register State
    Special Registers
    The AMD64 architecture defines floating point instructions. At process startup the two
    floating point units, SSE2 and x87, both have all floating-point exception status flags
    cleared. The status of the control words is as defined in tables 3.4 and 3.5."
2.  The end of the input argument area shall be aligned on a 16 (32 or 64, if **m256 or
    **m512 is passed on stack) byte boundary. In other words, the stack needs to be 16 (32
    or 64) byte aligned immediately before the call instruction is executed
3.  The maximum aligned boundary is the maximum alignment of all variables passed on stack. In C11,
    variable of type typedef struct { \_Alignas (512) int i; } var_t; is aligned to 512 bytes. Also what does alignment really mean?
4.  The conventional use of %rbp as a frame pointer for the stack frame may be avoided by using %rsp
    (the stack pointer) to index into the stack frame. This technique saves two instructions in the prologue and epilogue and makes one additional general-purpose register (%rbp) available [explain]
5.  Intel AVX (Advanced Vector Extensions) provides 16 256-bit wide AVX registers
    (%ymm0 - %ymm15). The lower 128-bits of %ymm0 - %ymm15 are aliased to the respective 128b-bit
    SSE registers (%xmm0 - %xmm15). Intel AVX-512 provides 32 512-bit wide SIMD registers
    (%zmm0 - %zmm31). The lower 128-bits of %zmm0 - %zmm31 are aliased to the respective 128b-
    bit SSE registers (%xmm0 - %xmm317 ). The lower 256-bits of %zmm0 - %zmm31 are aliased to the
    respective 256-bit AVX registers (%ymm0 - %ymm318 ). For purposes of parameter passing and
    function return, %xmmN, %ymmN and %zmmN refer to the same register. Only one of them can
    be used at the same time. We use vector register to refer to either SSE, AVX or AVX-512
    register. In addition, Intel AVX-512 also provides 8 vector mask registers (%k0 - %k7), each
    64-bit wide.
6.  The classification of aggregate (structures and arrays) and union types works as follows: If the size of an object is larger than eight eightbytes, or it contains unaligned fields,
    it has class MEMORY ( i dont understand what they mean by this but i have tried to pass an array with awfully big size & it segfault so my first thought is stack is 8k on my system? but now that i read this its giving me weird questions. maybe stack size is not th only thing)
    This is what class Memory mean incase u dont have context

    -   MEMORY This class consists of types that will be passed and returned in memory via
        the stack.

    *   here is the entire text

    ```
         3.2.3
        Parameter Passing

        After the argument values have been computed, they are placed either in registers or
        pushed on the stack. The way how values are passed is described in the following sections.
        Definitions We first define a number of classes to classify arguments. The classes are
        corresponding to AMD64 register classes and defined as:

        INTEGER This class consists of integral types that fit into one of the general purpose
        registers.

        SSE The class consists of types that fit into a vector register.

        SSEUP The class consists of types that fit into a vector register and can be passed and
        returned in the upper bytes of it.

        X87, X87UP These classes consists of types that will be returned via the x87 FPU.
        COMPLEX_X87 This class consists of types that will be returned via the x87 FPU.

        NO_CLASS This class is used as initializer in the algorithms. It will be used for padding
        and empty structures and unions.

    ```

    c code

    ```
        /_ registers taken from xmm0 ... progressively to 15 _/

        void xmm_registers(float a, double b, double c) {
        float average = a + b +c;

            return;

        }

        int implement_some_of_the_vector_SSE() {
        xmm_registers(12.9930, 9943.43, 392.0);

    }

    /* generate asm */

    ```

7.  For calls that may call functions that use varargs or stdargs (prototype-less calls or calls
    to functions containing ellipsis (. . . ) in the declaration) %al is used as hidden argument
    to specify the number of vector registers used? what does this even mean
    (yknow sometimes i have segault when i call printf@PLT and i need to xor %al, %al, i just never knew why)

```


follow up here is code & u can see clearly, there are testing for 0 in %al & once they find it it changes the whole trajectory of the register maybe from SSE TO integer(GPR) registers


the code i wrote to reproduce it

#include <stdarg.h>

char *printf_t(char *fmt, ...) {
    va_list list;

    va_start(list, fmt);

    char *arguments = va_arg(list, char *);
    va_end(list);

    return arguments;
}


printf_t:
        pushq   %rbp
        movq    %rsp, %rbp
        subq    $128, %rsp
        testb   %al, %al /* looks like when we make the func call w/ the ellipses ... theres something throw at %al and it get checked? */
        je      .LBB0_5
        movaps  %xmm0, -176(%rbp)
        movaps  %xmm1, -160(%rbp)
        movaps  %xmm2, -144(%rbp)
        movaps  %xmm3, -128(%rbp)
        movaps  %xmm4, -112(%rbp)
        movaps  %xmm5, -96(%rbp)
        movaps  %xmm6, -80(%rbp)
        movaps  %xmm7, -64(%rbp)
.LBB0_5:
        movq    %r9, -184(%rbp)
        movq    %r8, -192(%rbp)
        movq    %rcx, -200(%rbp)
        movq    %rdx, -208(%rbp)
        movq    %rsi, -216(%rbp)
        movq    %rdi, -8(%rbp)
        leaq    -32(%rbp), %rax
        leaq    -224(%rbp), %rcx
        movq    %rcx, 16(%rax)
        leaq    16(%rbp), %rcx
        movq    %rcx, 8(%rax)
        movl    $48, 4(%rax)
        movl    $8, (%rax)
        leaq    -32(%rbp), %rax
        movq    %rax, -240(%rbp)
        movl    -32(%rbp), %eax
        movl    %eax, -228(%rbp)
        cmpl    $40, %eax
        ja      .LBB0_2
        movq    -240(%rbp), %rcx
        movl    -228(%rbp), %edx
        movslq  %edx, %rax
        addq    16(%rcx), %rax
        addl    $8, %edx
        movl    %edx, (%rcx)
        movq    %rax, -248(%rbp)
        jmp     .LBB0_3
.LBB0_2:
        movq    -240(%rbp), %rcx
        movq    8(%rcx), %rax
        movq    %rax, %rdx
        addq    $8, %rdx
        movq    %rdx, 8(%rcx)
        movq    %rax, -248(%rbp)
.LBB0_3:
        movq    -248(%rbp), %rax
        movq    (%rax), %rax
        movq    %rax, -40(%rbp)
        movq    -40(%rbp), %rax
        addq    $128, %rsp
        popq    %rbp
        retq
```
