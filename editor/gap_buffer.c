
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
typedef unsigned long u64;

/* arraylist */
struct Array {
	char **arr;
	u64 cap;
	u64 index;
};

struct Array *begin = 0;
void append(char *value) {
	if (begin == 0)
		begin = malloc(sizeof(struct Array)), begin->cap = 5,
		begin->index = 0,
		begin->arr = calloc(begin->cap, sizeof(char *));
	if (begin->index >= begin->cap) {
		begin->arr =
		    realloc(begin->arr, (begin->cap *= 2) * sizeof(char *));
	}
	begin->arr[begin->index++] = strdup(value);
}

void main(void) {
	char *p[3] = { "hello", "world", "us" };
	for (int i = 0; i < 3l; i++) {
		append(p[i]);
	}
	u64 index = sizeof(p) / sizeof(p[0]);
	do {
		printf("%s\n", *begin->arr);
		--index;
	} while (*(begin->arr++) && index);

	exit(EXIT_SUCCESS);
}

struct Line {
	char **line;
	unsigned long ln;
	struct Line *next_line;
};