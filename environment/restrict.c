// vectorization restrict.S

#include "env.h"

void bench_with_restrict(int *restrict p,
			 int *restrict x,
			 int *restrict sum_,
			 unsigned size) {
	int q;
	for (q = 0; q < size; q++)
		*sum_ += (p[q] + x[q]);

	return;
}
void bench_no_restrict(int *p, int *x, int *sum_, unsigned size) {
	int q;
	for (q = 0; q < size; q++)
		*sum_ += (p[q] + x[q]);

	return;
}

int main(void) {
	int sum = 0;
	int values[5] = {
		13, 54, 5, 56, 6,
	};

	bench_no_restrict(values, values, &sum, 5);
	printf("sum %d", sum);

	return 0;
}