# Variables
TEST_SRC := test
# Create some dummy files for testing
.PHONY: setup_test_files
setup_test_files:
	@mkdir -p $(TEST_SRC)
	@echo "int main() { return 0; }" > $(TEST_SRC)/file1.c
	@echo "void func() {}" > $(TEST_SRC)/file2.c
	@echo "/* a header */" > $(TEST_SRC)/header.h # Will be ignored by *.c

# Find all .c files in TEST_SRC directory
# The 'wildcard' function expands to existing files matching the pattern
TEST_FILES := $(wildcard $(TEST_SRC)/*.c)

# Correct usage of patsubst
# This will take src/file1.c and make src/file1.o
OBJECTS_FROM_TEST := $(patsubst $(TEST_SRC)/%.c, $(TEST_SRC)/%.o, $(TEST_FILES))

# A target to show the results
.PHONY: debug_vars
debug_vars:
	@echo "TEST_FILES: $(TEST_FILES)"
	@echo "OBJECTS_FROM_TEST: $(OBJECTS_FROM_TEST)"

# Clean up test files
.PHONY: clean_test_files
clean_test_files:
	@rm -rf $(TEST_SRC)

To run:
1. make setup_test_files (to create the dummy files)
2. make debug_vars
3. make clean_test_files (to remove them)
SRC=test
# // 1 
# C_FILES += $(addprefix $(SRC)/, *.c)
# // 2 
C_FILES += $(wildcard $(SRC)/*.c)
C_OBJECTS += $(patsubst %.c, %.o, $(C_FILES))


__:
	@echo $(C_OBJECTS)