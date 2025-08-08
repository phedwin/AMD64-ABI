TODO rewrite

# BUILD := build
# FLAGS := -no-pie -nostartfiles -ffreestanding
# CFLAGS := -Iinclude -g


# #/* top level  c & asm file */
# FILE_ASM := $(wildcard *.S)
# FILE_C := $(wildcard *.c)

# #/* sub directories */
# SUBDIRS := editor
# SUBDIRS += vm
# SUBDIR_C := $(foreach dir,$(SUBDIRS),$(wildcard $(dir)/*.c))
# SUBDIR_S := $(foreach dir,$(SUBDIRS),$(wildcard $(dir)/*.S))

# ALL_SRC := $(FILE_ASM) $(FILE_C) $(SUBDIR_C) $(SUBDIR_S)

# BINARIES := $(patsubst %.S,$(BUILD)/%.bin,$(FILE_ASM))
# BINARIES += $(patsubst %.c,$(BUILD)/%.bin,$(FILE_C))
# BINARIES += $(patsubst %.S,$(BUILD)/%.bin,$(SUBDIR_S))
# BINARIES += $(patsubst %.c,$(BUILD)/%.bin,$(SUBDIR_C))

# .PHONY: bin all clean

# all: bin

# bin: $(BINARIES)

# $(BUILD)/%.bin: %.S
# 	@mkdir -p $(BUILD)
# 	@mkdir -p $(BUILD)/$(SUBDIRS)
# 	$(CC) $(FLAGS) $(CFLAGS) $< -o $@ build/editor.o
# $(BUILD)/%.bin: %.c
# 	@mkdir -p $(BUILD)
# 	@mkdir -p $(BUILD)/$(SUBDIRS)
# 	$(CC) $(MACHINE) $(CFLAGS) $< -o $@
# clean:
# 	rm -rf $(BUILD) *.o
