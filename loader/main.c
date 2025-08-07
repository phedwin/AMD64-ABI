/* basic just start with a static ET_EXEC */

#include <stdint.h>
#include <sys/stat.h>

#define loop(start, end, incr)                                    \
	do {                                                      \
		for (int x = start; x < end; x ? x += incr : x++) \
			;                                         \
	} while (0);
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

typedef struct {
	void *p;
	size_t sz;
} Mem;
#include <sys/mman.h>
void *read_file(char *filename) {
	Mem *m = malloc(sizeof(Mem));
	struct stat stats;
	int fd = open(filename, O_RDONLY);
	if (fd < 0)
		goto defer;
	fstat(fd, &stats);
	m->sz = stats.st_size;
	void *p = NULL;
	if ((p = mmap(p, m->sz, PROT_READ, MAP_PRIVATE, fd, SEEK_SET)) ==
	    MAP_FAILED)
		goto defer;
	m->p = p;
	return m;
defer:
	return MAP_FAILED;
}

int main(int argc, char **argv) {
	loop(0, 12, 1);
	FILE *master = fopen("setup.ld", "w+");
	if (!master)
		return 0;
	/* read sections */
	Mem *mem = read_file(argv[1]);
	if (mem == MAP_FAILED)
		exit(EXIT_FAILURE);
	char *mem_p = mem->p;
	Elf64_Ehdr *elf64_h = (Elf64_Ehdr *)mem_p;

	Elf64_Shdr *elf64_Sh = (Elf64_Shdr *)(mem_p + elf64_h->e_shoff);

	Elf64_Shdr *shstrtab_hdr = &elf64_Sh[elf64_h->e_shstrndx];
	char *shstrtab = mem_p + shstrtab_hdr->sh_offset;

	for (int i = 0; i < elf64_h->e_shnum; ++i) {
		Elf64_Shdr *current_shdr = &elf64_Sh[i];
		char *p = shstrtab + current_shdr->sh_name;
	}
	munmap(mem->p, mem->sz);

	free(mem);
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