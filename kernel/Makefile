# Makefile for bootloader
ASM=as --32
LD=ld -m elf_i386 -Ttext 0x7c00 --oformat binary
QEMU=qemu-system-i386

SRC=boot.S
OBJ=boot.o
BIN=boot.bin

all: $(BIN)

$(OBJ): $(SRC)
	$(ASM) $< -o $@

$(BIN): $(OBJ)
	$(LD) $< -o $@

run: $(BIN)
	$(QEMU) -drive format=raw,file=$(BIN)

clean:
	rm -f $(OBJ) $(BIN)
