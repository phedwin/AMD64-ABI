OUTPUT_FORMAT("elf32-i386")
OUTPUT_ARCH(i386)
ENTRY(main)

SECTIONS {
    . = 0x400000;
    .text : { *(.text)}
}