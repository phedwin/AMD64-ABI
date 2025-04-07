#/* if undefined therefore use clang */

CC ?= /bin/clang
AS ?= /bin/nasm

#! conditional target
ARCH = $(shell uname -s)

STACK_ARGS=0x1000 stack pthread_initialized 

all: compile
.PHONY: compile clean asm
#/* ! Nothing to be done here
compile: build | build
	@$(CC) -o $</main.o main.c && ./$</main.o -D name=_POSIX_THREADS use me
clean:
	@rm -rf *.o *.so *.out *.a build
build:
	@mkdir -p $@
static: build 
	$(CC) -static -o $</main.la main.c
asm: build
	$(CC) -nostartfiles -o $</program argv.S -lc -no-pie && ./$</program phedwin 
