

#include <stdio.h>
#include <string.h>
#include "common.h"

void bits(int value) {
	unsigned bit_len = sizeof(value) * 8;
	for (int u = bit_len - 1; u >= 0; u--) {
		/*! (value >> u) & 1; */
	}
}

SECTION(".rodata") int const_value = 10;
SECTION(".data") char *string = "hello world";

void mutate_string() {
	int k;
	for (k = 0; k < strlen(string); k++) {
		// shouldnt panic, string is default .rodata
		string[k] = 'a';
		// should panic, section is rodata & we cant change that
		const_value += k;
	}
	printf("%d\n", const_value);
}

int main(void) {
	mutate_string();
}
