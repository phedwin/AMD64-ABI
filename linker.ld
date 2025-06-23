/* linker.ld */
ENTRY(main)
OUTPUT_FORMAT("elf32-i386")
OUTPUT_ARCH(i386)

PHDRS {
  text PT_LOAD FLAGS(5); /* 0b101 = R + X */
  data PT_LOAD FLAGS(6); /* 0b110 = R + W */
}

SECTIONS {
  /* Virtual memory base address for code (like what Linux expects) */
  . = 0x08048000;

  /* Code segment */
  .text : {
    *(.text)
  }: text

  /* Data segment */
  .data : {
    *(.data)
  }: data

  /* BSS segment (uninitialized) */
  .bss : {
    *(.bss)
  }
}
