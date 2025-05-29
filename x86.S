

/* print arrays of strings */

/* print arrays of strings */

    .section .rodata
str1: .string "hello"
str2: .string "world"
str3: .string "foo"

strings:
    .quad str1
    .quad str2
    .quad str3
    .quad 0


fmt:
    .string "%s\n"

    .text
    .global print_string_arrays
    .type print_string_arrays, @function
print_string_arrays:

    leaq strings(%rip), %rbx    // Load the address of the 'strings' array into %rbx
    xor %r10, %r10              // Initialize %r10 (index) to 0

1:
    mov (%rbx), %rsi    // Load the string pointer into %rsi
    test %rsi, %rsi             // Test if the string pointer is null
    jz .exit                    // If null, exit the loop

    leaq fmt(%rip), %rdi        // Load the format string address into %rdi for printf
    xor %rax, %rax              // Clear %rax to indicate no floating-point arguments for printf

    call printf@PLT             // Call printf

    addq $8, %rbx
    jmp 1b                      // Jump back to the beginning of the loop

.exit:
    ret


    .global _start
    .type _start, @function
_start:
    call print_string_arrays

    mov $60, %rax
    xor %rdi, %rdi
    syscall 