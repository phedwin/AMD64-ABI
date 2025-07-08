
#include "toks.h"

struct Tokens __get_toks(struct Lexer *lexer) {
	char *endptr;
	struct Tokens type;
	__memset(&type, 0x00, sizeof(struct Tokens));
	/*trim __start */
	while (isspace((unsigned char)*lexer->begin) && *lexer->begin)
		lexer->begin++;
	if (*lexer->begin == '\0') {
		type.type = TOKEN_EOF;
		return type;
	}
	if (isdigit((unsigned char)*lexer->begin)) {
		type.type = TOKEN_NUMBER;
		type.value = strtod(lexer->begin, &endptr);
		lexer->begin = endptr;
	}

	switch (*lexer->begin) {
		case '(': {
			type.type = TOKEN_OPEN_BRACKET;
			type.ops = "(";
			return type;
		}
		case ')': {
			type.type = TOKEN_CLOSE_BRACKET;
			type.ops = ")";
			return type;
		}

		case '+': {
			type.type = TOKEN_PLUS;
			type.ops = "+";
			return type;
		}
		case '-': {
			type.type = TOKEN_MINUS;
			type.ops = "-";
			return type;
		}
		case '*': {
			type.type = TOKEN_MULTIPLY;
			type.ops = "*";
			return type;
		}
		case '/': {
			type.type = TOKEN_DIVIDE;
			type.ops = "/";
			return type;
		}
		default:
			return type;
	}
}

void __initialize_lex(struct Lexer *lex, char *input) {
	if (lex == NULL)
		lex = malloc(sizeof(struct Lexer));
	lex->cursor = 0;
	lex->begin = input;
	lex->end = input + lex->cursor;
}