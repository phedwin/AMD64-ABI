
#include <sys/ioctl.h>
#include <termios.h>
#include <unistd.h>
#include "include.h"

struct termios termios, raw;
__attribute__((destructor)) NO_WHERE disable_raw_mode() {
	ioctl(STDIN_FILENO, TCSETS, &termios);
}
NO_WHERE enable_raw_mode() {
	ioctl(STDIN_FILENO, TCGETS, &termios);
	raw = termios;
	raw.c_iflag &= ~(BRKINT | ICRNL | INPCK | ISTRIP | IXON);
	raw.c_oflag &= ~(OPOST);
	raw.c_cflag |= (CS8);
	raw.c_lflag &= ~(ECHO | ICANON | IEXTEN | ISIG);
	raw.c_cc[VMIN] = 0;
	raw.c_cc[VTIME] = 1;
	ioctl(STDIN_FILENO, TCSETS, &raw);
}

int main() {
	enable_raw_mode();
	char b;
	do {
		//
	} while (read(STDIN_FILENO, &b, 1) == 1);
}