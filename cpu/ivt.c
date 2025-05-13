// Interrupt Vector Table https://wiki.osdev.org/Interrupt_Vector_Table
// Jump to navigationJump to search
// On the x86 architecture, the Interrupt Vector Table (IVT) is a table that
// specifies the addresses of all the 256 interrupt handlers used in real mode.
// The IVT is typically located at 0000:0000H, and is 400H bytes in size (4
// bytes for each interrupt). Although the default address can be changed using
// the LIDT instruction on newer CPUs, this is usually not done because it is
// both inconvenient and incompatible with other implementations and/or older
// software (e.g. MS-DOS programs). However, note that the code must remain in
// the first MiB of RAM.
