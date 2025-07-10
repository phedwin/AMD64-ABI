#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

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
int main(int argc, char **argv) {
	signed char rc = -2;  //  0010 - 1101 + 1110
	printf("%i\n", rc >> 8 & 0x01);
	return 0;
}

static char buf[64] = { 0 };
void binary(size_t N) {
	size_t i = 0;
	do {
		buf[i] = (N % 2) + '0';
		N /= 2;
		i++;
	} while (N);

	/* since we expect all 1 for test to pass we dont need sorting this */
	return;
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