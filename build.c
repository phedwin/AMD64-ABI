

#include <bits/types/timer_t.h>
#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <time.h>

struct FileOps { 
}; 

struct File {
	char *path; /* absolute path*/
	struct stat *(*file_stats)(char *path);
	_Bool is_dirty;
};
struct stat *file_status(char *__name) {
	void *tmp = malloc(sizeof(struct stat));
	struct stat *p = NULL;
	if (stat(__name, tmp) == 0)
		p = tmp;
	return p;
}

void main(int argc, char **argv) {
	struct File master = {
		.path = realpath(*argv, NULL),
		.file_stats = file_status,
	};
	if (!master.path)
		goto defer;
	struct stat *pStats = master.file_stats(master.path);
	if (pStats == NULL)
		goto defer;
	time_t now = time(NULL);             // Get current epoch time
	struct tm *local = localtime(&now);  // Convert to local time

	char buf[16];
	strftime(buf, sizeof(buf), "%T", local);  // Format as "HH:MM:SS"
	printf("Current time: %s\n", buf);

	free(master.path);
	free(pStats);
	exit(EXIT_SUCCESS);
defer:
	if (master.path)
		free(master.path);
	exit(errno);
}
