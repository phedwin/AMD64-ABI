#define VARIABLE(var, type, value) var: .type value
#define EXPORT_SYM(sym) .globl sym; .type sym, %function; sym:
#define LOCAL_SYM(sym) sym

    .data
VARIABLE(fmt, string, "%s\n") # Format string for printf

    .text
EXPORT_SYM(_start)
    # Stack layout on entry to _start (with -nostartfiles, no return address pushed by kernel):
    # %rsp+0     -> argc (integer value)
    # %rsp+8     -> argv[0] (pointer to program name string)
    # %rsp+16    -> argv[1]
    # ...
    # %rsp + 8*(argc+1) -> envp[0]
    # ...

    # Standard function prologue to set up a stack frame.
    # 'push %rbp' saves the old %rbp, and moves %rsp down by 8 bytes.
    # 'mov %rsp, %rbp' sets %rbp to the new top of stack.
    #
    # Current stack after prologue (offsets relative to %rbp):
    # %rbp+0     -> [saved %rbp from caller] (the value pushed by 'push %rbp')
    # %rbp+8     -> argc (original 0(%rsp))
    # %rbp+16    -> argv[0] (original 8(%rsp))
    # %rbp+24    -> argv[1] (original 16(%rsp))
    # ...
    mov %rsp, %rbp

    // # 1. Get argc (argument count)
    // # argc is now at 8 bytes above the new base pointer (%rbp).
    // movq 0(%rbp), %rcx       # %rcx = argc

    // # 2. Calculate the base address of the argv array of pointers
    // # argv[0] is at 16 bytes above the new base pointer (%rbp).
    // leaq 8(%rbp), %rdx      # %rdx = address of argv[0]

    // # 3. Calculate the offset from argv[0] to argv[argc] (the NULL terminator of argv)
    // # argc is in %rcx. Each pointer is 8 bytes. So, offset = argc * 8.
    // movq %rcx, %rax          # Copy argc to %rax for multiplication
    // shl $3, %rax             # %rax = argc * 8

    // # 4. Add this offset to the base address of argv[0]
    // # %rdx now points to argv[argc] (the NULL pointer that marks the end of the argv array).
    // addq %rax, %rdx          # %rdx = address of argv[0] + (argc * 8)

    // # 5. Move to the first environment pointer (envp[0])
    // # envp[0] is immediately after argv[argc] (the NULL pointer), so add 8 bytes.
    // addq $8, %rdx            # %rdx = address of envp[0] (this is a pointer to a pointer)

    # ... (rest of the prologue)

    # 1. Get argc (argument count)
    # argc is at 8 bytes above the base pointer (%rbp).
    movq 0(%rbp), %rcx       # %rcx = argc

    # 2. Calculate the address of envp[0] directly using base, index, scale addressing.
    # The effective address calculation for 'leaq 24(%rbp, %rcx, 8), %rdx' is:
    # %rdx = %rbp + ( %rcx * 8 ) + 24
    # Which corresponds to: %rbp + (argc * 8) + 24
    # This precisely points to the location of envp[0] on the stack.
    leaq 16(%rbp, %rcx, 8), %rdx # %rdx = address of envp[0] (this is a pointer to a pointer)

LOCAL_SYM(while):

    # 3. Load the actual string pointer for envp[0]
    # Dereference %rdx to get the string's actual memory address.
    movq (%rdx), %rsi        # %rsi = value at %rdx (the actual string pointer for envp[0])


    testw %si, %si
    jz LOCAL_SYM(exit_routine)
    # ... (rest of the printf call and exit routine)

    # 6. Load the actual string pointer for envp[0]
    # Dereference %rdx to get the string's actual memory address.
    // movq (%rdx), %rsi        # %rsi = value at %rdx (the actual string pointer for envp[0])

    # Prepare the format string for printf
    leaq fmt(%rip), %rdi     # %rdi = address of "%s\n"

    # Set %al to 0 for printf, indicating no floating-point arguments are passed.
    xor %al, %al

    # Call printf to print the first environment variable string
    call printf@PLT
    addq $8, %rdx
    jmp LOCAL_SYM(while)

# Exit routine:
# It's crucial to call exit as _start doesn't have a return address to go back to.
LOCAL_SYM(exit_routine):
    xor %edi, %edi           # Set exit code to 0 (successful execution)
    call exit@PLT