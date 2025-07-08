
#include <stdio.h>
int main(int argc, char const *argv[]) {
	int a, b, *p;
	p = &a;
	p ++;
	printf("%p %p\n", &b, p);
	return 0;
}