#include "utils.h"
void __read_from_cli(int optind_t, int argc, char **argv) {
	/* approach like a file */
	int offset = 0, n;
	for (int i = optind_t; i < argc; i++) {
		n = snprintf(calculator_input_buffer + offset,
			     sizeof(calculator_input_buffer) - offset, "%s ",
			     argv[i]);
		if (n < 0 || n >= sizeof(calculator_input_buffer) - offset)
			return;
		offset += n;
	}
}
void __read_from_file(char *path) {
	FILE *calc_fp = fopen(path, "r");
	if (!calc_fp)
		goto defer;
	do {
		//
	} while (fread(calculator_input_buffer, 1,
		       sizeof(calculator_input_buffer), calc_fp));
	fclose(calc_fp);

	return;
defer:
	perror("Error");
	return;
}
