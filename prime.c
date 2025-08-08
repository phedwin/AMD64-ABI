#include <stdio.h>
#include <stdlib.h>  // For malloc and free
#include <string.h>  // For strlen

typedef struct __text {
	char p;
	struct __text *next;
} __attribute__((__aligned__(16))) Text;

Text *head = NULL;

// This function now correctly prepends a new node to the list.
void append_editor(char value) {
	// 1. Allocate memory for a new node
	Text *temp = malloc(sizeof(Text));
	if (temp == NULL) {
		printf("Memory allocation failed!\n");
		return;
	}

	// 2. Set the data for the new node
	temp->p = value;

	// 3. Point the new node's 'next' pointer to the current head
	temp->next = head;

	// 4. Update the head to point to the new node (making it the new head)
	head = temp;
}

// Function to free the allocated memory to prevent leaks
void free_list(Text *current_head) {
	Text *temp;
	while (current_head != NULL) {
		temp = current_head;
		current_head = current_head->next;
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
		current = current->next;
	}

	// Don't forget to free the memory
	free_list(head);

	return 0;
}