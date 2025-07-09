
#include "toks.h"
#include <stdio.h>
#include <string.h>

struct Tokens *__get_toks(struct Lexer *lexer, char *input) {
	if (lexer == NULL)
		return NULL;

	struct Tokens *type = malloc(sizeof(struct Tokens));
	__memset(type, 0x00, sizeof(struct Tokens));

	while (isspace((unsigned char)*lexer->begin) && *lexer->begin)
		lexer->begin++;

	if (*lexer->begin == '\0') {
		type->type = TOKEN_EOF;
		return type;
	}

	// Handle numbers
	if (isdigit((unsigned char)*lexer->begin)) {
		char *endptr;
		type->type = TOKEN_NUMBER;
		type->value = strtod(lexer->begin, &endptr);
		lexer->begin = endptr;
		return type;  // important!
	}

	// Handle single-character operators
	switch (*lexer->begin) {
		case '+':
			type->type = TOKEN_PLUS;
			type->ops = "+";
			lexer->begin++;
			return type;
		case '-':
			type->type = TOKEN_MINUS;
			type->ops = "-";
			lexer->begin++;
			return type;
		case '*':
			type->type = TOKEN_MULTIPLY;
			type->ops = "*";
			lexer->begin++;
			return type;
		case '/':
			type->type = TOKEN_DIVIDE;
			type->ops = "/";
			lexer->begin++;
			return type;
		case '(':
			type->type = TOKEN_OPEN_BRACKET;
			type->ops = "(";
			lexer->begin++;
			return type;
		case ')':
			type->type = TOKEN_CLOSE_BRACKET;
			type->ops = ")";
			lexer->begin++;
			return type;
		default:
			// Unknown token — free and return NULL
			free(type);
			return NULL;
	}
}

void __initialize_lex(struct Lexer *lex, char *input) {
	if (lex == 0)
		lex = malloc(sizeof(struct Lexer));
	lex->cursor = 0;
	lex->begin = input;
	lex->end = input + lex->cursor;
}