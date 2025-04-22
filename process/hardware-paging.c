/*! setup*/

#include <stdio.h>
void square(int value, int *ans) {
	value *= value;
	*ans = value;
}

#include "common.h"

int main(int argc, char **argv, char **envp) {
	int ans, value;
	char *number = argv[1];

	if (number) {
		value = strtol(number, 0, 10);
		square(value, &ans);
	}
	printf("%d\n", ans);
	return 0;
}