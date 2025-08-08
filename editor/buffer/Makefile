.PHONY: all  clean



CFLAGS 		= -Wall -Wextra -Wpedantic -fsanitize=address,undefined -g -Iinclude
LDFLAGS 	= -fsanitize=address,undefined
SOURCE 		= $(wildcard src/*.c)
OUT 		= $(patsubst %.c, %.o, $(SOURCE))
BEAR 		?=
all: gapbuffer
gapbuffer: $(OUT) | vscode
	$(BEAR) -- $(CC) $(LDFLAGS) -o $@ $^
vscode:
	$(BEAR) = $(shell which bear)
clean:
	rm -f gapbuffer $(OUT)
