.PHONY: all assemble link clean


_start := -Ttext=0x7c00
all: assemble link img
assemble:
	gcc -m16 -ffreestanding -c ivt.S -o ivt.o

link:
	ld -m elf_i386 $(_start) --oformat=binary -o ivt.bin ivt.o

img: 
	qemu-system-x86_64 ivt.bin
clean:
	rm -f *.o *.bin
