
#include <stdio.h>
#define prologue      \
	"push %rbp\n" \
	"mov %rsp, %rbp\n"
#define epilogue           \
	"mov %rbp, %rsp\n" \
	"pop %rbp\n"       \
	"ret\n"

void main() {
	fprintf(stdout, "%s%s", prologue, epilogue);
}