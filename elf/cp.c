

// COW

#include <stdio.h>
#define CAST_TO_STRING(x) (char *)x

static char buffer[1024];

typedef int Errno;

#include <sys/mman.h>
#include <sys/stat.h>
void handle_fs(char *filename_src, char *filename_dst) {
	FILE *src = fopen(filename_src, "r");
	if (src == 0)
		return;

	FILE *dst = fopen(filename_dst, "w");

	if (dst == 0)
		goto defer;
	size_t read_b, write_b, file_size;

	struct stat stats;

	stat(filename_src, &stats);

	file_size = stats.st_size + 7 & ~7;
	printf("%zu\n", file_size);
	void *mem = mmap(NULL, file_size, PROT_READ, MAP_SHARED | MAP_ANONYMOUS,
			 -1, SEEK_SET);
defer:
	if (src)
		fclose(src);
	return;
}

int main() {
	char *from, *to;
	from = "Makefile";
	to = ".dockerfile";
	handle_fs(from, to);
}