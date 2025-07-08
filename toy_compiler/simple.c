
#include "toks.h"

/* this is what we are going to lex - actually */
static char calculator_input_buffer[MAX_CALCULATIONS];

enum { CLI_FL, FILE_FL };

void main(int argc, char **argv) {
	exit(EXIT_SUCCESS);
}

#include "fs.h"
void __usage(int argc, char **argv) {
	/*from cli */
	char *path = NULL, *input;
	int rc, flag = -1;
	while ((rc = getopt(argc, argv, "f:b")) != -1) {
		switch (rc) {
			case 'f': {
				flag = FILE_FL;
				path = strdup(optarg);
				__read_from_file(path);
			} break;
			case 'b': {
				flag = CLI_FL;
				__read_from_cli(optind, argc, argv);
			} break;
			default: {
				fprintf(stderr, "Usage: %s [-f <arg>] [file]\n",
					argv[0]);
				exit(EXIT_SUCCESS);
			}
		};
	}
	if (path != NULL && flag) {
		free(path);
	}

	printf("%s", calculator_input_buffer);
}
