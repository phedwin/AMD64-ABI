
CFLAGS =
ASMFLAGS = -nostartfiles -lc -no-pie
ifeq ($(OS),Windows_NT)
  $(error  Dude?)
endif

SRC_DIR = .
BUILD_DIR = build


DIRS := $(shell find $(SRC_DIR) -type d)

C_FILES := $(foreach dir,$(DIRS),$(wildcard $(dir)/*.c))

ASM_FILES := $(foreach dir,$(DIRS),$(wildcard $(dir)/*.S))


all: $(BUILD_DIR) $(C_FILES:%.c=$(BUILD_DIR)/%.out)


asm: $(ASM_FILES:%.S=$(BUILD_DIR)/%.program)


$(BUILD_DIR):
	@mkdir -p $(BUILD_DIR)


$(BUILD_DIR)/%.out: %.c
	@$(CC) $(CFLAGS) -o $(BUILD_DIR)/$(@F) $<


$(BUILD_DIR)/%.program: %.S
	@$(CC) $(ASMFLAGS) -o $(BUILD_DIR)/$(@F) $< && ./$(BUILD_DIR)/$(@F)


clean:
	@rm -rf $(BUILD_DIR)

.PHONY: all clean asm
