.PHONY: all assemble link clean

FLAGS := -fomit-frame-pointer
_START := -Ttext=0x7c00
all: 
	@gcc sse.c -o ssse.o && ./ssse.o 
# 	@gcc -nostartfiles -o parameter.o parameter.S  -lc -no-pie && ./parameter.o me you and us # argc -> 5
# all: assemble link img
assemble:
	@gcc -m16 -ffreestanding -c ivt.S -o ivt.o

link:
	@ld -m elf_i386 $(_START) --oformat=binary -o ivt.bin ivt.o

img: 
	@qemu-system-x86_64 ivt.bin
clean:
	@rm -f *.o *.bin
