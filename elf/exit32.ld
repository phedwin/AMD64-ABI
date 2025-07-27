/* OUTPUT_FORMAT("elf32-x86-64", "elf32-x86-64", "elf32-x86-64") */
OUTPUT_FORMAT("elf32-i386")
OUTPUT_ARCH(i386)
ENTRY(main)

. = 0x400000;
SECTIONS {
    .text : { *(.text) }
}