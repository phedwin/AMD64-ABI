

#include <stdio.h>

void bits(int value) {
	unsigned bit_len = sizeof(value) * 8;
	for (int u = bit_len - 1; u >= 0; u--)
		printf("%d", (value >> u) & 1);
}