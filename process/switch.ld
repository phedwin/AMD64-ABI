ENTRY(_start)

SECTIONS {
    /* Load the binary at 0x100000 (1MiB) */
    . = 0x100000;

    .text : {
        *(.text*)
    }

    .rodata : {
        *(.rodata*)
    }

    .data : {
        *(.data*)
    }

    .bss : {
        *(.bss*)
        *(COMMON)
    }

    /* Align page tables at 2MiB for simplicity */
    . = ALIGN(0x200000);
    .page_tables : {
        *(.page_tables*)
    }
}
