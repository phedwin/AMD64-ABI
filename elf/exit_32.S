#// main starts at 0x400000 + offset (0x32)
#/*
#   
#   
#   ➜  elf git:(main) ✗ ./exec_elf.sh --32
#   ➜  elf git:(main) ✗ readelf -l exit
#   
#   Elf file type is EXEC (Executable file)
#   Entry point 0x400000
#   There is 1 program header, starting at offset 52
#   
#   Program Headers:
#     Type           Offset   VirtAddr   PhysAddr   FileSiz MemSiz  Flg Align
#     LOAD           0x001000 0x00400000 0x00400000 0x0000c 0x0000c R E 0x1000
#   
#    Section to Segment mapping:
#     Segment Sections...
#      00     .text 
#   ➜  elf git:(main) ✗ 
#   
#   
#*/

    .text
    .globl main
    .type main, %function
main:
    mov     $1, %eax    #// Syscall number for exit (SYS_exit) is 1 on 32-bit Linux
    mov     $1, %ebx    #// Exit status 1
    int     $0x80       #// Perform the 32-bit syscall via interrupt 0x80


