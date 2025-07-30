
#include <stdio.h>
#include <string.h>
void sub_values(int a, int b, int *rc) {
	*rc = a - b;
	return;
}

void mult_values(int a, int b, int *rc) {
	*rc = a * b;

	return;
}

void add_values(int a, int b, int *rc) {
	*rc = a + b;
	return;
}

void div_values(int a, int b, int *rc) {
	*rc = a / b;
	return;
}


struct Ops {
	char *ops_name;
	void (*func_ptr)(int, int, int *);
} const operations[4] = {
	{ "sub", sub_values },
	{ "mult", mult_values },
	{ "add", add_values },
	{ "div", div_values },
};

int main() {
	int v = 12, x = 10, p = 0;
	char ops_name[12];
	if (!fgets(ops_name, sizeof ops_name, stdin))
		return EOF;
	ops_name[strcspn(ops_name, "\n")] = 0;
	for (size_t i = 0; i < sizeof(operations) / sizeof(*operations); i++) {
		if (!strcmp(ops_name, operations[i].ops_name)) {
			operations[i].func_ptr(v, x, &p);
			break;
		}
	}
	return p;
}
