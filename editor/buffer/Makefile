.PHONY: all  clean



CFLAGS 		= -Wall -Wextra -Wpedantic -fsanitize=address,undefined -g -Iinclude
LDFLAGS 	= -fsanitize=address,undefined
SOURCE 		= $(wildcard src/*.c)
OUT 		= $(patsubst %.c, %.o, $(SOURCE))

all: gapbuffer
gapbuffer: $(OUT)
	$(CC) $(LDFLAGS) -o $@ $^
clean:
	rm -f gapbuffer $(OUT)
