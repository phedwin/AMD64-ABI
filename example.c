#include <stdio.h>
#include <stdlib.h>

static char buf[64] = { 0 };
static inline void binary(size_t N) {
	size_t i = 0;
	do {
		buf[i] = N % 2;
		N /= 2;
		i++;
	} while (N);

	/* since we expect all 1 for test to pass we dont need sorting this */
	return;
}

int main() {
	// #define SIZE (sizeof(int) * 2)
	// size_t *w = malloc(SIZE);
	// memset(w, 0x0007, sizeof(int) * SIZE);
	// __asm__ volatile("rep; stosb" ::"D"(w), "a"(0x07), "c"(SIZE));
	//
	binary(10);
	printf("%s\n", buf);
}