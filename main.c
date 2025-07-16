
#include <stdio.h>
#include <stdlib.h>

typedef unsigned long long int u64;

struct Node {
	int *data;
	u64 N;
	u64 cap;
};

void *zmalloc(unsigned);
#pragma returns_new_memory(zmalloc)
void zappend(int value, struct Node *node) {
	if (node->N >= node->cap) {
		node->data =
		    realloc(node->data, (node->cap *= 2) * sizeof(int));
		if (node->data == 0) {
			perror("fatal");
			return;
		}
	}
	node->data[node->N++] = value;
	return;
}

int main(void) {
	struct Node *node = malloc(sizeof(struct Node));
#if defined(__x86_64__)
	__asm__ volatile("rep; stosb" ::"a"(0x00), "D"(node),
			 "c"(sizeof(struct Node)));
#else
#error "include <string.h>"
	memset(node, 0x00, sizeof(struct Node));
#endif
	node->cap = 10;
	node->data = NULL;
	node->data = realloc(node->data, sizeof(int) * node->cap);
	for (int r = 0; r < 0xa; r++)
		zappend(r, node);
	for (int r = 0; r < 0xa; r++)
		printf("%c%d\n", 0x03a, node->data[r]);

	free(node->data);
	free(node);
}