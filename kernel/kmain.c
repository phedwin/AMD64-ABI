

#include <stdio.h>
#include <stdlib.h>
typedef unsigned long u64;
typedef unsigned char u8;
extern u64 _syscall(int sysNo, void *, void *, void *, void *);

u64 _strlen(char *p) {
	char *pp = p;
	while (*pp)
		pp++;
	return pp - p;
}

typedef unsigned short u16;
void write_16b(u16 *p, u16 w_value) {
	*p = w_value >> 8 & 0xff | w_value & 0xff;
	return;
}
void read_16B(u16 bytes, u8 *results) {
	*results = bytes & 0xff;
	*(results + 1) = (bytes >> 8) & 0xff;
	return;
}
void main() {
	u8 *T = malloc(sizeof(u8 *));
	read_16B(4095, T);
	printf("%d", *(T + 1));
	// char *buf = "Hello world!";

	return;
	// u64 FD_STDOUT = 1, size = _strlen(buf);
	// u64 rc = _syscall(1, (void *)&FD_STDOUT, buf, (void *)&size, 0);
}