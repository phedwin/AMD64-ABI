BUILD_DIR = build
EXEC = $(BUILD_DIR)/main
___: main.c
	@$(CC) -c cat.S -o $(BUILD_DIR)/cat.o
	@$(CC) -o $(EXEC) $< $(BUILD_DIR)/cat.o 
	@./$(EXEC) words