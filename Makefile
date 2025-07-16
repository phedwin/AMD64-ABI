BUILD := build
FLAGS := -no-pie -nostartfiles
CFLAGS := -Wall
#/* -g & extra flags */
DEBUG ?=
MACHINE ?=

FILE_ASM := $(wildcard *.S)
FILE_C := $(wildcard *.c)
ALL_SRC := $(FILE_ASM) $(FILE_C)

.PHONY: bin

BINARIES := $(patsubst %.S,$(BUILD)/%.bin,$(FILE_ASM))
BINARIES += $(patsubst %.c,$(BUILD)/%.bin,$(FILE_C))

bin: $(BINARIES)
$(BUILD)/%.bin: %.S
	@mkdir -p $(BUILD)
	$(CC) $(DEBUG) $(FLAGS) $< -o $@ 
$(BUILD)/%.bin: %.c
	@mkdir -p $(BUILD)
	$(CC) $(MACHINE) $(CFLAGS) $(DEBUG) $< -o $@

.PHONY: clean
clean:
	rm -rf $(BUILD) *.o
