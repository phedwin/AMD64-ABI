# Variables
CC = gcc                    # The C compiler to use
CFLAGS = -Wall -g           # Compiler flags: -Wall (all warnings), -g (debug info)
# FLAG := -c                # This flag is implicit in the compile rules, don't define it globally like this unless needed for specific context
                        # It's better to put -c directly in the compile command.

# Directory where your source files are located
SRC_DIR = src

# Source files located in SRC_DIR
# Use 'addprefix' to put the directory path in front of each source file
SRC_FILES = $(addprefix $(SRC_DIR)/, fs.c toks.c)

# Source file in the current directory (assuming main.c is here)
MAIN_SRC = main.c

# All source files combined
ALL_SOURCES = $(MAIN_SRC) $(SRC_FILES)

# Object files. Use 'patsubst' to substitute paths and suffixes.
# $(patsubst %.c, %.o, $(SRC_FILES)) will create src/fs.o src/toks.o
# $(MAIN_SRC:.c=.o) will create main.o
OBJECTS = $(MAIN_SRC:.c=.o) $(patsubst $(SRC_DIR)/%.c, $(SRC_DIR)/%.o, $(SRC_FILES))


# Final executable name
EXEC = simple_compiler

# The default target (what happens when you just type 'make')
# It should depend on the executable
.PHONY: all
all: $(EXEC)

# Rule to build the executable
# The executable depends on all object files
$(EXEC): $(OBJECTS)
	$(CC) $(CFLAGS) $(OBJECTS) -o $@

# Generic rule for compiling .c files into .o files
# This is a pattern rule: %.o depends on %.c
# Make knows how to apply this to all object files derived from C files.
# For files in SRC_DIR, we need a specific pattern.

# Rule for compiling .c files in the current directory (e.g., main.c)
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Rule for compiling .c files in the 'src/' directory
# This handles src/fs.o and src/toks.o
$(SRC_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(CFLAGS) -c $< -o $@


# Clean rule: remove all generated files
.PHONY: clean
clean:
	rm -f $(EXEC) $(OBJECTS) $(SRC_DIR)/*.o

# Phony targets:
# .PHONY is a special directive that tells Make that 'all' and 'clean' are
# not actual files to be created. This prevents issues if you happen to
# create a file named 'all' or 'clean' in your directory.