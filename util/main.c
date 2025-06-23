

/* test cat*/

#include "utils.h"
int main(int a, char **b) {
	char *pathname = b[1];
	if (pathname)
		__cat(pathname);
	return 0;
}