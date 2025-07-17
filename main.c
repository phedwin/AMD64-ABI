

/* read keypresses */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include "editor.h"

#include <termios.h>
static struct termios orig_termios;

__attribute__((destructor)) NO_WHERE disable_raw_mode() {
	tcsetattr(STDIN_FILENO, TCSAFLUSH, &orig_termios);
}

struct Lines {
	char **pN;
	i64 index;
	i64 cap;
};
NO_WHERE __zappend(struct Lines *lines, char *data) {
	if (lines->index >= lines->cap) {
		lines->pN =
		    realloc(lines->pN, (lines->cap *= 2) * sizeof(char *));
		if (!lines->pN) {
			perror("fatal");
			exit(1);
		}
	}
	lines->pN[lines->index++] = data;
}

NO_WHERE enable_raw_mode() {
	struct termios rn;
	tcgetattr(STDIN_FILENO, &orig_termios);
	rn = orig_termios;
	rn.c_lflag = ~(ICANON);
	tcsetattr(STDIN_FILENO, TCSAFLUSH, &rn);
}
int main() {
	struct Lines *lines = malloc(sizeof(struct Lines));
	MEMSET(lines, 0x00, sizeof(struct Lines));
	lines->cap = 3 /* 3 lines */;
	lines->pN = calloc(lines->cap, sizeof(char *));

	char key_press[1024];
	MEMSET(key_press, 0x00, sizeof key_press);

	enable_raw_mode();
	while (fgets(key_press, sizeof key_press, stdin)) {
		key_press[strcspn(key_press, "\n")] = 0;
		__zappend(lines, strdup(key_press));
	}
	for (int i = 0; i < lines->index; i++)
		printf("%s\n", lines->pN[i]);
	for (int i = 0; i < lines->index; i++)
		free(lines->pN[i]);
	free(lines->pN);
	return 0;
}