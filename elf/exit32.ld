/* OUTPUT_FORMAT("elf32-x86-64", "elf32-x86-64", "elf32-x86-64") */
OUTPUT_FORMAT("elf32-i386")
OUTPUT_ARCH(i386)
ENTRY(main)


PHDRS {
    TEXT PT_LOAD FLAGS(0x005);
    DATA PT_LOAD FLAGS(0x006);
}
. = 0x400000;
SECTIONS {
    .text : { *(.text) } :TEXT
    .data ALIGN(0X10) : { *(.data) }: DATA
     /DISCARD/ : {
        *(.comment)
        *(.note)
        *(.symtab)
        *(.strtab)
        *(.shstrtab)
    }
}