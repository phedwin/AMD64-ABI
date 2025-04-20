# xv6

1. An x86 page table is logically an array of 2^20 (1,048,576) page table entries
   (PTEs). Each PTE contains a 20-bit physical page number (PPN) and some flags. The
   paging hardware translates a virtual address by using its top 20 bits to index into the
   page table to find a PTE, and replacing those bits with the PPN in the PTE. The pag-
   ing hardware copies the low 12 bits unchanged from the virtual to the translated phys-
   ical address. Thus a page table gives the operating system control over virtual-to-phys-
   ical address translations at the granularity of aligned chunks of 4096 (2^12) bytes.
   Such a chunk is called a page
