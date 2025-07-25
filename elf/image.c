#include <stdio.h>
#include <stdlib.h>

int main() {
	char *elf = "elf";

	while (*elf) {
		printf("0x%x\n", *elf);
		elf++;
	}
	return EXIT_SUCCESS;
}