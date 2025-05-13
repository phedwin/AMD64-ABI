// ILLEGAL on userspace, stub on bootloader!

#include <stdio.h>

static void bits(unsigned long value) {
	unsigned bit_len = sizeof(value) * 8;
	for (int u = bit_len - 1; u >= 0; u--)
		printf("%lu", (value >> u) & 1);
	putchar('\n');
}

#define CR0(cr, fmt, ...)                                        \
	do {                                                     \
		__asm__ volatile("mov %%cr1, %0" : "=r"(*(cr))); \
		fprintf(stdout, fmt, __VA_ARGS__);               \
		bits(*(cr));                                     \
	} while (0)

int main() {
	unsigned long cr0;
	CR0(&cr0, "%s\n", "value of cr0");
}
