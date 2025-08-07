#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct __text {
	char p;
	struct __text *pp;
} __attribute__((__aligned__(16))) Text;

Text *head = NULL;

void append_editor(char value) {
	Text *temp = malloc(sizeof(Text));
	if (!temp)
		return;
	temp->p = value;
	temp->pp = head;
	head = temp;
}
void free_list(Text *current_head) {
	Text *temp;
	while (current_head != NULL) {
		temp = current_head;
		current_head = current_head->pp;
		free(temp);
	}
}

int main(void) {
	char *p = "Hello world";

	// head is correctly initialized to NULL
	for (int i = 0; i < strlen(p); i++)
		append_editor(p[i]);

	// Use a temporary pointer for traversal to avoid losing the head
	Text *current = head;
	while (current) {
		printf("%c\n", current->p);
		current = current->pp;
	}

	// Don't forget to free the memory
	free_list(head);

	return 0;
}