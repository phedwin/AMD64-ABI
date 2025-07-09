

#include "fs.h"
#include <stdio.h>

void __read_from_cli(int optind_t, int argc, char **argv, char *res) {
	char buf[1024] = { 0 };
	int offset = 0, n;
	for (int i = optind_t; i < argc; i++) {
		n = snprintf(buf + offset, sizeof buf - offset, "%s ", argv[i]);
		if (n < 0 || n >= sizeof(buf) - offset)
			return;

		offset += n;
	}
	memcpy(res, buf, offset);

	return;
}
void __read_from_file(char *path, char *res) {
	FILE *calc_fp = fopen(path, "r");
	char buf[1024] = { 0 };
	if (calc_fp == NULL)
		goto defer;
	do {
		//
	} while (fread(buf, 1, sizeof buf, calc_fp));
	memcpy(res, buf, strlen(buf));
	fclose(calc_fp);
	return;
defer:
	perror("Error");
	return;
}
