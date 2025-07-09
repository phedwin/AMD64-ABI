
#include <stdio.h>
#include <stdlib.h>
#include "fs.h"
#include "toks.h"

enum { CLI_FL, FILE_FL };

struct Token_list {
	struct Tokens *toks;
};

#define MAX_TOKENS 128
struct Tokens *token_stream[MAX_TOKENS];
int ntoks = 0;

void __peek(struct Lexer *lexer) {
	struct Tokens *tok;
	while ((tok = __get_toks(lexer, lexer->begin)) != NULL) {
		if (tok->type == TOKEN_EOF) {
			token_stream[ntoks++] = tok;
			break;
		}
		token_stream[ntoks++] = tok;
	}
}

int main(int argc, char **argv) {
	struct Lexer p;
	char *res = malloc(MAX_CALCULATIONS);
	if (res == NULL)
		goto defer;
	__memset(res, 0x000, MAX_CALCULATIONS);

	__read_from_file("sample", res);
	if (strlen(res) <= 0)
		goto defer;
	__initialize_lex(&p, res);

	__peek(&p);
	struct Tokens *tok;

	free(res);
	exit(EXIT_SUCCESS);
defer:
	if (res)
		free(res);
	return EXIT_FAILURE;
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
				// __read_from_file(path);
			} break;
			case 'b': {
				flag = CLI_FL;
				// __read_from_cli(optind, argc, argv);
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
}
