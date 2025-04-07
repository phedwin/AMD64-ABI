
    
fmt: .asciz "%s\n"

    .text
    .type _start, @function
    .globl _start
_start:
    /* get OS proc arguments */
    movq 8(%rsp), %rbx /* we have argv at this point */
    xor %rcx, %rcx


/* i have something eating me up while writing this, im on AMD64 and their sysV ABI docs
   says something like this, i will paraphrase. the processor start in x87 SSE/FPU
   & this means with variable argument like printf if it finds something in %al that is not
   zero then it moves to the vector registered

   TL;DR: dont use rax to do any variadic 🌲
*/
print_argv_until:
    leaq 0(%rbx,%rcx,8), %rdx
    testq %rdx, %rdx

    /* hey we hit NULL */
    jz .Local_done
    leaq fmt(%rip), %rdi
    mov %rdx, %rsi
    xor %al, %al /*! clear out so we dont fall into xmm */
    call printf@PLT
    inc %rcx /* increment our index */
    jmp print_argv_until

.Local_done:
    xor %dil, %dil
    call exit@PLT


/* mov 32(%rsp), %rsi  envp starts maybe because im passing an argument after main
        so huhhh (%rsp) is argc, the stack starts and then argv starts & 8(%rsp) is the prog name and 
        16(%rsp) is our argv[0] if defined if not defined i assume it goes to NULL & then we skip the 8 &
        move to 24 & thats where our envp starts. but here our arguments were

        asm: build
	        $(CC) -nostartfiles -o $</program node.S -lc -no-pie && ./$</program phedwin
        
        so at 16(%rsp) we have phedwin & 24(%rsp) is NULL then 32(%rsp) is our first env value
*/




.bss
.lcomm buffer, 1024