

#include <elf.h>
#include <stdio.h>
#include <unistd.h>

static char *path = "build/branching.out";

char elf_buf[256];

#include <fcntl.h>
void read_elf(char *restrict a) {
	int fd, bytes;
	if ((fd = open(path, O_RDONLY)) < 0)
		return;
	Elf64_Ehdr elf;

	read(fd, &elf, sizeof elf);
	printf("%hu\n", elf.e_machine);
}
