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

struct Machine {
	uint64_t *ip;
	SyscallRegister *state;
};
#include <stdarg.h>
/* i wrote this routine with a smile on my face btw */
void *syscall_arguments(char *name, uint64_t Nos, ...) {
	SyscallRegister *p = malloc(sizeof(SyscallRegister));
	p->Reg64.rax = init_syscall(name);
	uintptr_t *block;
	va_list args;
	va_start(args, Nos);
	block = malloc(sizeof(uint64_t) * 6 /*__size=6*/);
	if (!block)
		goto defer;
	memset_b(block, 0x000, sizeof(uint64_t) * 6 /*__n=6*/);
	for (uint64_t v = 0, inc = 0; v < Nos; v++, inc += 8)
		memcpy(block + inc, va_arg(args, void *), sizeof(void *));
	va_end(args);

#if defined(__x86_64) && __linux__
#define PTR_SIZE sizeof(void *)
	char *h = (char *)block;

	// clang-format off
	/* sometimes a little repetition is not bad actually */
	memcpy(&p->Reg64.rdi, block,       PTR_SIZE);
	memcpy(&p->Reg64.rsi, block += 8,  PTR_SIZE);
	memcpy(&p->Reg64.rdx, block += 8,  PTR_SIZE);
	memcpy(&p->Reg64.r10, block += 8,  PTR_SIZE);
	memcpy(&p->Reg64.r8,  block += 8,  PTR_SIZE);
	memcpy(&p->Reg64.r9,  block += 8,  PTR_SIZE);
	// clang-format on
#else
	// TODO
#endif
	free(h);
	return p;
defer:
	return 0;
}

int main(void) {
	char *buf = "hello world";
	uint64_t fd = STDOUT_FILENO, len = strlen(buf);
	sys = syscall_arguments("write", 3, &fd, buf, &len);

	__asm__ volatile("syscall;" ::"a"(sys->Reg64.rax), "D"(sys->Reg64.rdi),
			 "S"(buf), "d"(sys->Reg64.rdx));

	free(sys);
	return 0;
}

struct Syscalls {
	char *name;
	int sysNo;
	int __pad;

} const x86syscalls[] = { { "read", 0x000 },
			  { "write", 0x1 },
			  { "exit", 0x03c },
			  { "open", 0x03 },
			  { "mmap", 0x09 } };

int init_syscall(char *sys_name) {
	/*TODO incase we use this in the future - please switch to a table*/
	for (int sysno = 0; sysno < sizeof(x86syscalls) / sizeof(*x86syscalls);
	     sysno++) {
		if (!strcmp(x86syscalls[sysno].name, sys_name))
			return x86syscalls[sysno].sysNo;
	}

	return -1;
}
#define SYSCALL(name, ...)                  \
	do {                                \
		int v = init_syscall(name); \
		__asm__(                    \
		    "mov %1, %%eax;"        \
		    "syscall" ::i "v",      \
		    "D"(0), "S"(), );       \
	} while (0);

#define sys_exit(value)                       \
	do {                                  \
		__asm__ volatile(             \
		    "movb $0x3c, %%al;"       \
		    "syscall;" ::"D"(value)); \
	} while (0);

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

#include <elf.h>
#include <glob.h>

static char *filename;
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
	sys_exit(EXIT_FAILURE);
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