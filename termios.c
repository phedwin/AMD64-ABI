
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <termios.h>
#include <unistd.h>

#define allow_unused __attribute__((unused))

struct termios termios;
static inline char *basename(char *path) {
	char *bn;

	if (!path)
		return NULL;
again:
	bn = strrchr(path, '/');
	if (!bn) {
		/* No slash found, path is basename */
		return path;
	}
	if (bn[1] == '\0') {
		/* Remove trailing slash */
		bn[0] = '\0';
		goto again;
	}
	return ++bn;
}
#include <assert.h>

#define ASSERT(x)                                                             \
	do {                                                                  \
		if (!(x)) {                                                   \
			fprintf(stderr, "Assertion failed: %s, file %s:%d\n", \
				#x, __FILE__, __LINE__);                      \
			abort();                                              \
		}                                                             \
	} while (0)

int main(int argc allow_unused, char **argv allow_unused) {
	allow_unused char *base = NULL;
	ASSERT(base);
	return 0;
}

void die(const char *s) {
	write(STDOUT_FILENO, "\x1b[2J", 4);
	write(STDOUT_FILENO, "\x1b[H", 3);

	perror(s);
	exit(1);
}

void disableRawMode() {
	if (tcsetattr(STDIN_FILENO, TCSAFLUSH, &termios) == -1)
		die("tcsetattr");
}
void enableRawMode() {
	if (tcgetattr(STDIN_FILENO, &termios) == -1)
		die("tcgetattr");
	atexit(disableRawMode);

	struct termios raw = termios;
	raw.c_iflag &= ~(BRKINT | ICRNL | INPCK | ISTRIP | IXON);
	raw.c_oflag &= ~(OPOST);
	raw.c_cflag |= (CS8);
	raw.c_lflag &= ~(ECHO | ICANON | IEXTEN | ISIG);
	raw.c_cc[VMIN] = 0;
	raw.c_cc[VTIME] = 1;

	if (tcsetattr(STDIN_FILENO, TCSAFLUSH, &raw) == -1)
		die("tcsetattr");
}

typedef struct erow {
	int idx;
	int size;
	int rsize;
	char *chars;
	char *render;
	unsigned char *hl;
	int hl_open_comment;
} erow;

struct editorConfig {
	int cx, cy;
	int rx;
	int rowoff;
	int coloff;
	int screenrows;
	int screencols;
	int numrows;
	erow *row;
	int dirty;
	char *filename;
	char statusmsg[80];
	time_t statusmsg_time;
	struct editorSyntax *syntax;
	struct termios orig_termios;
};

struct editorConfig E;

#include <sys/ioctl.h>
int getWindowSize(int *rows, int *cols) {
	struct winsize ws;

	if (ioctl(STDOUT_FILENO, TIOCGWINSZ, &ws) == -1 || ws.ws_col == 0) {
		if (write(STDOUT_FILENO, "\x1b[999C\x1b[999B", 12) != 12)
			return -1;
		// return getCursorPosition(rows, cols);
	} else {
		*cols = ws.ws_col;
		*rows = ws.ws_row;
		return 0;
	}
}

void initEditor() {
	E.cx = 0;
	E.cy = 0;
	E.rx = 0;
	E.rowoff = 0;
	E.coloff = 0;
	E.numrows = 0;
	E.row = NULL;
	E.dirty = 0;
	E.filename = NULL;
	E.statusmsg[0] = '\0';
	E.statusmsg_time = 0;
	E.syntax = NULL;

	if (getWindowSize(&E.screenrows, &E.screencols) == -1)
		die("getWindowSize");
	E.screenrows -= 2;
}
