/* basic just start with a static ET_EXEC */

#include <stdint.h>
#define __compiler_allow_unused __attribute__((unused))

#include <elf.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

typedef _Bool bool;
/*is it an elf*/
__compiler_allow_unused int is_elf(void *mem) {
	int rc = 0;
#if defined(__x86_64__) && (__linux__)
	Elf64_Ehdr *p = mem;
#elif defined(__i386__) && (__linux__)
	Elf32_Ehdr *p = mem;
#endif
	if (!memcmp(&p->e_ident[EI_MAG0], ELFMAG, SELFMAG))
		rc = 1;
	return rc;
}
void *_read_elf_hdr(char *filename) {
	int fd;
#if defined(__x86_64__) && (__linux__)
	size_t SIZEOF_HEADERS = 0x40;
	Elf64_Ehdr *hdr = malloc(SIZEOF_HEADERS);
#else
	size_t SIZEOF_HEADERS = 0x32;
	Elf32_Ehdr *hdr = malloc(SIZEOF_HEADERS);
#endif
	fd = open(filename, O_RDONLY);
	read(fd, hdr, SIZEOF_HEADERS);
	return hdr;
}
int main(int argc, char **argv) {
	Elf64_Ehdr *p = _read_elf_hdr(argv[1]);
	if (!is_elf(p))
		goto defer;

	__compiler_allow_unused Elf64_Off p_ff = p->e_phoff;
	Elf64_Half p_nums = p->e_phnum;
	printf("%hu", p_nums);
	return EXIT_SUCCESS;
defer:
	return EXIT_FAILURE;
}
