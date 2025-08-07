#include <elf.h>
#define DEBUGGER(...) fprintf(stderr, __VA_ARGS__)

#include <assert.h>
#include <errno.h>
#include <fcntl.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <unistd.h>

#define memset_b(ptr, value, size)                                    \
	do {                                                          \
		__asm__ volatile("rep; stosb" ::"a"(value), "D"(ptr), \
				 "c"(size));                          \
	} while (0);

int init_syscall(char *sys_name);
typedef union {
	struct {
		uint64_t rax, rdi, rsi, rdx, r10, r8, r9;
	} Reg64;
	struct {
		uint32_t ebx, ecx, edx, esi, edi, ebp;
	} Reg32;

} SyscallRegister;
SyscallRegister *sys;
struct Syscalls {
	char *name;
	int sysNo;
	int __pad;

} const x86syscalls[] = { { "read", 0x000 },
			  { "write", 0x1 },
			  { "exit", 0x03c },
			  { "open", 0x03 },
			  { "mmap", 0x09 } };

int syscall_handler(SyscallRegister *sys) {
	int return_t;
	__asm__ volatile("syscall;"
			 : "=a"(return_t)
			 : "a"(sys->Reg64.rax), "D"(sys->Reg64.rdi),
			   "S"(sys->Reg64.rsi), "d"(sys->Reg64.rdx),
			   "r"(sys->Reg64.r10), "r"(sys->Reg64.r8),
			   "r"(sys->Reg64.r9));
	return return_t;
}

int init_syscall(char *sys_name) {
	/*TODO incase we use this in the future - please switch to a table*/
	for (int sysno = 0; sysno < sizeof(x86syscalls) / sizeof(*x86syscalls);
	     sysno++) {
		if (!strcmp(x86syscalls[sysno].name, sys_name))
			return x86syscalls[sysno].sysNo;
	}

	return -1;
}

#include <stdarg.h>
/* i wrote this routine with a smile on my face btw */
void *syscall_arguments(char *name, uint64_t Nos, ...) {
	SyscallRegister *p = malloc(sizeof(SyscallRegister));
	p->Reg64.rax = init_syscall(name);
	uint64_t *block;
	va_list args;
	va_start(args, Nos);
	block = malloc(sizeof(uint64_t) * 6 /*__size=6*/);
	if (!block)
		goto defer;
	memset_b(block, 0x000, sizeof(uint64_t) * 6 /*__n=6*/);

	for (uint64_t v = 0; v < Nos; v++)
		block[v] = va_arg(args, uint64_t);

	/*block + sizeof -> leaq block(, v, 8) */
	va_end(args);

#if defined(__x86_64) && __linux__
#define PTR_SIZE sizeof(void *)
	char *h = (char *)block;

	// clang-format off
	/* sometimes a little repetition is not bad actually */
	p->Reg64.rdi = block[0];
	p->Reg64.rsi = block[1];
	p->Reg64.rdx = block[2];
	p->Reg64.r10 = block[3];
	p->Reg64.r8  = block[4];
	p->Reg64.r9  = block[5];
	// clang-format on
#else
	// TODO
#endif
	free(h);
	return p;
defer:
	return 0;
}

#include <sys/mman.h>
char *filename = "exit.o";
uint64_t size__, fd;
struct stat stats;
void *mmap_file() {
	fd = open(filename, O_RDONLY);
	if (fd < 0)
		goto defer;
	if (fstat(fd, &stats) < 0)
		goto defer;
	size__ = stats.st_size;

	void *mem = mmap(NULL, size__, PROT_READ, MAP_PRIVATE, fd, SEEK_SET);
	if (mem == MAP_FAILED)
		goto defer;
	close(fd);
	return mem;
defer:
	perror("Error");
	if (fd)
		close(fd);
	return MAP_FAILED;
}

int main(int argc, char *argv[]) {
	char *path = argv[1];
	if (path)
		filename = strdup(path);
	char *elf_data = mmap_file();
	if (!elf_data)
		exit(EXIT_FAILURE);

	Elf64_Ehdr *elf64_hdr = (Elf64_Ehdr *)elf_data;
	/* TODO confirm its an ELF - anyway just proceed this is not production
	 * code */

	printf("ELF Header:\n");
	printf("  Entry Point Address: 0x%lx\n", elf64_hdr->e_entry);
	printf("  Section Header Offset: 0x%lx\n", elf64_hdr->e_shoff);
	printf("  Number of Sections: %u\n", elf64_hdr->e_shnum);
	printf("  Section Header String Table Index: %u\n",
	       elf64_hdr->e_shstrndx);

	Elf64_Shdr *section_header_tb =
	    (Elf64_Shdr *)(elf_data + elf64_hdr->e_shoff);

	if (elf64_hdr->e_shstrndx >= elf64_hdr->e_shnum) {
		munmap(elf_data, size__);
		return 1;
	}
	Elf64_Shdr *shstrtab_hdr = &section_header_tb[elf64_hdr->e_shstrndx];

	char *shstrtab = elf_data + shstrtab_hdr->sh_offset;

	printf("Sections:\n");
	for (int i = 0; i < elf64_hdr->e_shnum; ++i) {
		Elf64_Shdr *current_shdr = &section_header_tb[i];
		printf(
		    "  [%2d] Name: %-20s Type: 0x%x Offset: 0x%lx Size: "
		    "0x%lx\n",
		    i, shstrtab + current_shdr->sh_name, current_shdr->sh_type,
		    current_shdr->sh_offset, current_shdr->sh_size);
	}

	munmap(elf_data, size__);
	if (filename)
		free(filename);
	return 0;
}

int test_syscalls() {
	char *buf = "hello world\n";
	uint64_t fd = STDOUT_FILENO, len = strlen(buf), status;
	sys = syscall_arguments("write", 3, fd, (uint64_t)buf, len);

	if (!sys)
		return EXIT_FAILURE;
	status = syscall_handler(sys);
	if (status < 0) {
		perror("write Error");
		return EXIT_FAILURE;
	}
	free(sys);
	return EXIT_SUCCESS;
}

#define CWD "."

#define __compiler_allow_unused __attribute__((unused))  // #[allow(unused)]

typedef unsigned long u64;
typedef int i32;
typedef unsigned u32;
typedef void NO_WHERE;

#include <stdbool.h>
#define ERROR DEBUGGER

struct globResults *find_binary();
#include <assert.h>
#include <stdio.h>
#if __STDC_VERSION__ > 201112L
#define MY_COMPILE_TIME_ASSERT(condition, message) \
	_Static_assert(condition, message)
#else
// #warning \
//     "_Static_assert not available, compile-time assertions may be less robust."
#define MY_COMPILE_TIME_ASSERT(condition, message) \
	typedef char static_assertion_failed_##__LINE__[(condition) ? 1 : -1]
#endif

#define public __attribute__((visibility("default")))
#define private static
#define __inline inline private
__inline void file_exists_cwd(char *dirpath,
			      _Bool *status,
			      char *filename,
			      char *extension_) __compiler_allow_unused;

#include <glob.h>

glob_t globs;
_Thread_local int value = 0;

struct globResults {
	unsigned char argc;
	char *filename;
};

struct globResults *find_binary() {
	struct globResults *p = malloc(sizeof(struct globResults));
	glob("*bin", 0, NULL, &globs);
	p->argc = globs.gl_pathc;
	if (!p->argc)
		goto defer;
	for (size_t i = 0; i < globs.gl_pathc; i++) {
		char *bin_path = globs.gl_pathv[i];
		filename = strdup(bin_path);
		break;
	}
	p->filename = strdup(filename);
	if (filename)
		free(filename);
	globfree(&globs);
	return p;
defer:
	return (struct globResults *)0;
}
#if defined(__i386__) && (__linux__)
#define ELF_HEADER_SIZE sizeof(Elf32_Ehdr)
#elif __x86_64__ && __linux__
#define ELF_HEADER_SIZE sizeof(Elf64_Ehdr)
#endif

void *read_elf_header(char *filename) {
	/* double check file */
	// _Bool status = false;
	/*TODO check path exist or execv */
	// file_exists_cwd(CWD, &status, filename, NULL);
	struct globResults *res = find_binary();
	if (!filename)
		filename = strdup(res->filename);
#if defined(__i386__) && (__linux__)
	Elf32_Ehdr *elf_hdr = malloc(ELF_HEADER_SIZE);
#elif __x86_64__ && __linux__
	Elf64_Ehdr *elf_hdr = malloc(ELF_HEADER_SIZE);
#endif

	unsigned char fd, read_t;
	if (!elf_hdr)
		goto defer;
	fd = open(filename, O_RDONLY);
	if (fd < 0)
		goto defer;
	// free(filename);
	read_t = read(fd, elf_hdr, ELF_HEADER_SIZE);
	if (read_t != ELF_HEADER_SIZE) {
		/* doesnt set errno so?? lets set it*/
		errno = EBADE;
		goto defer;
	}
	return elf_hdr;
defer:
	if (res) {
		free(res->filename);
		free(res);
	}
	perror("Error");
	exit(EXIT_FAILURE);
}

__inline void file_exists_cwd(char *dirpath,
			      _Bool *status,
			      char *filename,
			      char *extension_) {
	if (extension_) {
		find_binary(); /*serioulsy*/
		*status = true;
	}

	*status = false;
}