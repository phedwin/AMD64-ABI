

#include <assert.h>
#include <errno.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <unistd.h>

#define CWD "."

#define __compiler_allow_unused __attribute__((unused))  // #[allow(unused)]

typedef unsigned long u64;
typedef int i32;
typedef unsigned u32;
typedef void NO_WHERE;

#include <stdbool.h>
#define DEBUGGER(...) fprintf(stderr, __VA_ARGS__)
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

#include <elf.h>
#include <glob.h>

static char *filename;
glob_t globs;

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
char elf[ELF_HEADER_SIZE];

void read_elf_header(char *filename) {
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
	memcpy((Elf64_Ehdr *)elf, elf_hdr, read_t);
	free(elf_hdr);
	return;
defer:
	if (res) {
		free(res->filename);
		free(res);
	}
	perror("Error");
	exit(EXIT_FAILURE);
}

int main(void) {
	char *filename = "exec_elf.bin";
	read_elf_header(filename);

	printf("%s\n", &elf[EI_MAG0] /* printf will 0 terminate */);
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