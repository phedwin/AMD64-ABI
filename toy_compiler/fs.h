#ifndef FILE_UTILITIES
#define FILE_UTILITIES

#include "../util/utils.h"

static inline int __digit(char *value,
			  int base /*at this point - it ony supports 10 */) {
	int rc = 0, i, wc = 1;
	char buf_[sizeof(char) * 12 /* 32 bit max*/], *p = value;
	for (i = strlen(p) - 1; i >= 0; i--) {
		if (!isdigit(p[i]))
			return -1;
		rc += (p[i] - '0') * wc;
		wc *= base;
	}
	return rc;
}
API void __read_from_cli(int optind_t, int argc, char **argv, char *res);
/* @brief get w/e we want to calculate from an actual file sitting anywhere */
API void __read_from_file(char *path, char *res);
/* unwrap to -1 when (unsigned)~0 + 1 or fails to parse to int */
int __digit(char *value, int base /*at this point - it ony supports 10 */);

#endif /*FILE_UTILITIES*/
