SOURCE 		= $(wildcard *.c)
BINARIES	= $(patsubst %.c, %.out, $(SOURCE))
RUN 		?= build/gap_buffer.out
all:$(BINARIES)
	./$(RUN) #@$(MAKE) -C build && 
%.out: %.c | build
	cc -g -o build/$@ $^
build:
	mkdir -p build