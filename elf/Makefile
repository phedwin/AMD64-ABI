
default:
	@$(AS) -g -o ret.o ret.S && $(LD) -T exit.ld -o ret.bin ret.o && ./ret.bin
all: tiny_c tiny_asm tiny
tiny_c: tiny.c
	clang -O2 -static $< -o $@

tiny_asm: tiny.s
	clang -nostartfiles -nostdlib -static $< -o $@
	strip $@

tiny: src/main.rs
	cargo run
clean: 
	rm -rf *.bin *.out *.o *.bin *.puff *.log tiny_c tiny_asm out