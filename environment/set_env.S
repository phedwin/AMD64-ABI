    .data
environ:
    .quad 0          # make it writable — in real case this is set by loader

    .text
    .global setenv_
setenv_:
    push %rbp
    mov %rsp, %rbp

    # args: rdi = name, rsi = value, rdx = rewrite
    # build: "name=value" string on stack or heap

    # just a fake example here, you’d normally call snprintf or do it manually
    # simulate strdup(buf_environ) part
    # call malloc and copy the string

    # call malloc(size)
    mov $32, %rdi               # fake fixed size for now
    call malloc
    mov %rax, %r12              # r12 = malloced pointer

    # copy "key=value" string to r12
    # let’s just pretend we already have the full string at rsi
    mov %rsi, %r13              # r13 = pointer to string "KEY=VALUE"
copy_loop:
    movb (%r13), %al
    movb %al, (%r12)
    testb %al, %al
    je done_copy
    inc %r13
    inc %r12
    jmp copy_loop
done_copy:

    # set *environ = new string
    mov environ(%rip), %rdi     # rdi = environ (pointer to pointer)
    mov %rax, (%rdi)            # *environ = malloced string

    # set environ[1] = NULL
    add $8, %rdi                # environ + 8 = second slot
    mov $0, (%rdi)

    mov $1, %eax                # return 1
    pop %rbp
    ret
