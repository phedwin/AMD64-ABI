#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "util/utils.h"

struct Strings {
	char **words;
	size_t index;
	size_t cap;
};

void push_string(char *new, struct Strings *str) {
	str->words[str->index + 1] = new;
}

void __decode_bits(size_t N) {
	char buf[64];
	size_t i = 0;
	while (i < sizeof buf) {
		// buf[i] = ((N >> i) & 0x1) + '0';
		buf[i] = (N >> i & 0x01) + '0';
		i++;
	}

	printf("%s\n", buf);
}

int main(int argc, char **argv) {
	__decode_bits(10);
}

static inline size_t find_sq(int p) {
	return p * p;
}

void __given_square(size_t *values, size_t n) {
	int p, m;
	for (p = 0; p < n; p++) {
		for (m = 1; m < n; m++) {
			if ((find_sq(p) + find_sq(m)) == n) {
				values[0] = p * p;
				values[1] = m * m;
				return;
			}
		}
	}
	return;
}
void decode_signed_8bits(signed char val, signed char *rc);

void __mem_layout(int argc, char **argv) {
	char *buffer_t = "apple";
	char *cp = malloc(strlen(buffer_t));
	size_t p = 0;
	for (int i = 0; i < strlen(buffer_t); i++) {
		if (buffer_t[i] != 'p') {
			cp[p] = buffer_t[i];
			p++;
		}
	}
	cp[p] = 0;
	char buffer[80];
	size_t bytes_read, offset_t = 0;
	for (int p = 0; p < argc; p++) {
		bytes_read = snprintf(buffer + offset_t,
				      sizeof buffer - offset_t, "%s ", argv[p]);
		offset_t += bytes_read;
	}
	buffer[strlen(buffer) - 1] = 0; /* remove the trailing space
					 */
	printf("%s\n", cp);
	free(cp);
}
int test_bin_encode_decode(size_t);
int chaos_sys_progs(int argc, char **argv) {
	long long int rc = 7;
	test_bin_encode_decode(rc);
	/* read some bit*/
	rc = 0xdeadcafe; /* 1010 */

	char n[10];
	int x = 0, index = 0, val = 1;
	printf("Enter a three-digit nonnegative number: ");
	scanf("%s", n);
	index = strlen(n) - 1;
	do {
		if (n[index] >= '0' && n[index] <= '9') {
			x += (n[index] - '0') * val;
			val *= 10;
		}
		index--;
	} while (index != -1);
	printf("The number is %d\n", x);
	// set Nth bitx = x | (1<<N);
	// clear Nth bitx = x & (~(1 <<N ));
	// read Nth bit(x & (1<<N)) >> N
	return 0;
}

int test_bin_encode_decode(size_t N) {
	size_t shift = 0, p;
	__memset(&p, 0x00, sizeof(size_t)); /* zero  out so we can start over */

	do {
		p |= (1 << shift) & N % 2;
		shift++;
		N /= 2;
	} while (N);

	/* since we expect all 1 for test to pass we dont need sorting this */
	return p;
}

void decode_signed_8bits(signed char val, signed char *rc) {
	if ((val & 0x80) == 0) {
		*rc = val;
		// msb is 0 so treat like unsigned
	} else {
		uint8_t inverted = ~val;
		uint8_t twos_complement = inverted + 1;
		*rc = ((int)twos_complement);
	}
}
#include <stdarg.h>
#include <unistd.h>
int proceding_character() {
	char word[80];
	size_t size;
	char *ps = NULL;
	getline(&ps, &size, stdin);

	int index = 0, p = 0;
	do {
		if (ps[index] == ps[index + 1]) {
			p = 1;
			while (ps[index] == ps[index + p])
				p++;
			index += p;
		}
		index++;

	} while (ps[index]);
	return p;
}