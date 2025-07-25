

#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <unistd.h>

typedef unsigned long u64;
typedef int i32;
typedef unsigned u32;
typedef void NO_WHERE;

#define DEBUGGER(...) fprintf(stderr, __VA_ARGS__)

#if defined(__linux) && defined(__x86_64__) || (__i386__)

#include <elf.h>
NO_WHERE main(int argc, char **argv) {
	int fd = open("image.bin", O_RDWR);
	if (fd < 0)
		return;
	Elf32_Ehdr *elf = malloc(sizeof(Elf32_Ehdr));
	if (elf == 0)
		return;
	read(fd, elf, sizeof(Elf32_Ehdr));
	printf("%d\n", elf->e_type);
	free(elf);
	return;
}
#endif