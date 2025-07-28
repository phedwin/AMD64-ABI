OUTPUT_FORMAT("elf64-x86-64")
OUTPUT_ARCH(i386:x86-64)
ENTRY(main)

PHDRS {
    text PT_LOAD FLAGS(0x05);
    data PT_LOAD FLAGS(0x06);
    /* this bullshit doesnt work lol */
    /* R   PT_LOAD FLAGS(0x04);
    W   PT_LOAD FLAGS(0x02);
    X   PT_LOAD FLAGS(0x01);
    RW  PT_LOAD FLAGS(R | W);
    RX  PT_LOAD FLAGS(R | X); */
}

SECTIONS {
    . = 0x400000;

    .text ALIGN(0x1000):    { 
        *(.text*) 
        }: text
    .rodata ALIGN(0x001000): { 
        *(.rodata*) 
        }: data

    .bss ALIGN(0x01000) : { 
        *(.bss)
        *(COMMON) /* is this like -fno-common */
        } : data

    /DISCARD/ : {
        *(.debug*)
    }
}