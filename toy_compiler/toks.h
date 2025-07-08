
#include "utils.h"

typedef enum {
	TOKEN_NUMBER,
	TOKEN_PLUS,
	TOKEN_MINUS,
	TOKEN_MULTIPLY,
	TOKEN_DIVIDE,
	TOKEN_EOF,
	TOKEN_OPEN_BRACKET,
	TOKEN_CLOSE_BRACKET,
	TOKEN_UNKNOWN,
} TokenType;
#define MAX_CALCULATIONS 1024

struct Tokens {
	TokenType type;
	union {
		char *ops;
		double value;
	};
};

struct Lexer {
	char *begin;
	char *end;
	/* DEBUG & error locations */
	size_t cursor;
};

struct Tokens __get_toks(struct Lexer *lexer, char *input);