
#include <stdarg.h>

#define STDOUT_FILENO 1

typedef signed int i32;
typedef unsigned char u8;
typedef signed long int i64;

extern i64 __write(u8 fd, void *buf, i64);  // fd, buf, count
extern void __exit(i32) __attribute__((noreturn));

void __strlen(char *p, i64 *rc) {
	char *pp = p;
	do {
	} while (*pp++);
	*rc = pp - p;
}

void __attribute__((format(printf, 3, 4))) __snprintf(char *p,
						      i64 offset,
						      char *word,
						      ...) {
	va_list ap;
	va_start(ap, word);
	//

	va_end(ap);
}

extern void __add_values_effect_with_us8_asm(u8 *v, u8 *w);

static inline int itoa_u8(unsigned char val, char *dst) {
	int len = 0;
	if (val >= 100) {
		dst[len++] = '0' + val / 100;
		val %= 100;
	}
	if (val >= 10 || len > 0) {
		dst[len++] = '0' + val / 10;
		val %= 10;
	}
	dst[len++] = '0' + val;
	return len;
}

void kmain(int argc, char **argv, char **envp) {
	/* packed addtions*/
	u8 d[4] = { 13, 34, 35, 45 }, w[4] = { 12, 32, 43, 1 };
	char buf[1024];

	/* memset(buf, 0x00, sizeof buf)*/
	__asm__ volatile("rep; stosb" ::"a"(0x00), "D"(buf), "c"(sizeof buf));
	__add_values_effect_with_us8_asm(d, w);

	int pos = 0;
	for (int r = 0; r < 4; r++) {
		pos += itoa_u8(d[r], &buf[pos]);
		buf[pos++] = ' ';
	}
	buf[pos] = 0;

	i64 rc;
	__strlen(buf, &rc);
	__write(STDOUT_FILENO, buf, rc);

	__write(STDOUT_FILENO, "\n", 1);
	for (int r = 0; r < argc; r++) {
		i64 current_arg_length;
		__strlen(argv[r], &current_arg_length);

		__write(STDOUT_FILENO, argv[r], current_arg_length);

		__write(STDOUT_FILENO, "\n", 1);
	}

	__exit(0);
}