OUTPUT_FORMAT("elf64-x86-64")
OUTPUT_ARCH(i386:x86-64)
ENTRY(main)

PHDRS {
    text PT_LOAD FLAGS(0x05);
    data PT_LOAD FLAGS(0x06);
}

SECTIONS {
    . = SIZEOF_HEADERS;

    .text ALIGN(0x10) : { 
        *(.text*) 
        }: text
    .rodata ALIGN(0x10):  { 
        *(.rodata*) 
        }: data
    .data ALIGN(0x10): { /*  if not page aligned, this panics? */
        *(.data*)
    } : data
    .bss ALIGN(0x10) : { 
        *(.bss)
        *(COMMON) /* is this like -fno-common */
        } : data

    /DISCARD/ : {
        *(.debug*)
    }
}