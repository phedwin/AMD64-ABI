

// rax reg >:: va_arg count 0 INTEGER REG, 1 switches to VECTOR REG

#include <stdarg.h>
int variables(int count /*! RAX */, ...) {
	va_list ap;
	int sum = 0, k;
	va_start(ap, count);

	for (k = 0; k < count; k++)
		sum += va_arg(ap, int);
	va_end(ap);
	return sum;
}

int main() {
	return variables(5 /*count=RAX & RAX = 5 */, 12, 15, 16, 17, 18);
}