

#include <stdint.h>
#include <stdio.h>
#include <string.h>

// naive string interning mechanism
char *interned_table[256];
size_t interned_count = 0;

char *intern(char *s) {
	for (size_t i = 0; i < interned_count; i++) {
		if (strcmp(s, interned_table[i]) == 0)
			return interned_table[i];
	}
	interned_table[interned_count++] = strdup(s);
	return interned_table[interned_count - 1];
}

int main() {
	char *a = intern("hello");
	char *b = intern("hello");

	char *aa = "world", *bb = "world";
	printf("%lu %lu\n", (uint64_t)aa, (uint64_t)bb);

	return a == b ? 0 : 1;
}