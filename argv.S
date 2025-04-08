    .data
fmt: .asciz "%s\n"  # Format string for printf: print a string followed by a newline

    .text
    .global _start
    .type _start, @function
    
_start:
    mov %rsp, %rbp                   # Save the original stack pointer (%rsp) into the base pointer (%rbp).
                                     # This is a common practice for accessing function arguments.
    mov (%rbp), %rdi                 # Move the value at the memory location pointed to by %rbp (which is argc)
                                     # into the %rdi register. The first element on the stack during a call
                                     # is typically the argument count (argc). Although we don't use it in this
                                     # specific loop, it's good practice to acknowledge it.
    lea 8(%rbp), %rbx                # Load the effective address of 8 bytes offset from %rbp into %rbx.
                                     # This address points to the beginning of the argv array (argv[0]).
                                     # The arguments are placed on the stack after argc.

.loop:
    mov (%rbx), %rsi                 # Move the value at the memory location pointed to by %rbx into %rsi.
                                     # Since %rbx holds the address of argv[i], this dereferences the pointer
                                     # and loads the address of the i-th command-line argument string into %rsi.
    testb %sil, %sil                 # Test if the value in %rsi is zero (NULL). The argv array is NULL-terminated.
    je .done                         # If the zero flag is set (meaning %rsi is NULL), jump to the .done label.

    lea fmt(%rip), %rdi              # Load the effective address of the format string "fmt" into %rdi.
                                     # %rdi is the first argument for the printf function (the format string).
    xor %al, %al                     # Clear the lower 8 bits of %rax (%al). This is important for calling
                                     # variadic functions like printf in x86-64. It indicates that no
                                     # floating-point arguments are being passed in XMM registers.

    call printf@PLT                  # Call the printf function (from the Procedure Linkage Table).
                                     # %rdi contains the format string, and %rsi contains the argument string.

    add $8, %rbx                     # Increment the address in %rbx by 8 bytes. Since each element in the
                                     # argv array is a pointer (8 bytes on a 64-bit system), this moves %rbx
                                     # to point to the next element in the argv array (the next argument).
    jmp .loop                        # Jump back to the beginning of the .loop to process the next argument.

.done:
    xor %edi, %edi                   # Clear the %edi register. This sets the exit status code to 0.
                                     # %edi is the argument for the exit system call.
    call exit@PLT                    # Call the exit function (from the Procedure Linkage Table) to terminate
                                     # the program.