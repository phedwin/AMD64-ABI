
# build our toy compiler
FLAG := -c
SOURCES=fs.c toks.c
OBJECTS=$(SOURCES:.c=.o)
EXEC=simple_compiler

