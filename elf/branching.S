


1:
    mov    -0x8(%rbp), %rax       # windows pointer
    mov    (%rax), %rax           # deref function pointer
    mov    -0x10(%rbp), %rdi      # load &rectangle
    call   *%rax                  # ← indirect call!

