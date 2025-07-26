

#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <unistd.h>

typedef unsigned long u64;
typedef int i32;
typedef unsigned u32;
typedef void NO_WHERE;

#include <stdbool.h>
#define DEBUGGER(...) fprintf(stderr, __VA_ARGS__)
#define ERROR DEBUGGER

#include <elf.h>
static char *filename = "exit";

void main(int argc, char **argv) {
	int fd;
	/* write an elf*/
	// fd = open(filename, O_RDWR | O_CREAT, 0711);
	fd = open(filename, O_RDONLY);

	if (fd < 0)
		return;
	// char *headers = "7f 45 4c 46 02 01 01 00 00 00 00 00 00 00 00 00";
	// write(fd, headers, strlen(headers));
#if defined(__linux__) && defined(__x86_64__)
	Elf64_Ehdr *elf = malloc(sizeof(Elf64_Ehdr));
	if (elf == NULL)
		return;
	read(fd, elf, sizeof(Elf64_Ehdr));
	DEBUGGER("size 0x%lx\n", elf->e_entry);

/* this also depends on the elf being opened to be compiled with gcc -m32 */
#elif (__i386__) && (__linux__)
	Elf32_Ehdr *elf = malloc(sizeof(Elf32_Ehdr));
	if (elf == NULL)
		return;
	read(fd, elf, sizeof(Elf32_Ehdr));
	DEBUGGER("size %d\n", elf->e_ehsize);
#endif
	free(elf);
	exit(EXIT_SUCCESS);
}
