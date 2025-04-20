/*! TODO, from entry _start. Load the envp & save the register across the call to setenv_ 
 *! `Also nice to know envp, are in the higher addresses of memory layout` below below below rsp
 *! the space for envp is fixed & if we deplet it we then need to malloc. 
 */

    .bss
    .global ___environ
data: .skip 8 * 256 // wait is this right? 

    .globl setenv_
    .type setenv_, @function
setenv_:
setup:
    xor %rdi, %rdi /*! key */
    xor %rsi, %rsi /*! value */
    /* if rdx is 0, dont change! */
    testb  %dl, %dl
    jz Local_done
    
    /* else scan the envp & change the key=value */
    leaq 16(%rsp), %rbx
    testb %bl, %bl
    jz Local_done
Local_loop:
    movq (%rbx), %rsi
    testb %sil, %sil
    jz Local_done


    addq $8, %rbx

Local_done:
    retq


    .global _start
    .type _start, @function
_start:
    xor %dil, %dil
    call exit@PLT

