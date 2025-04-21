

#include <bits/posix1_lim.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

/*! process control*/

char temp[] = "/tmp/fileXXXXXX";
static char *file;
static int fd;

typedef void (*ExitFunc)(void);

/*proc gen unique filename*/
char buf_filename[32];

void filename(char *extension) {
	char *unique_filename = "unix_🌲_";
	pid_t name = getpid();

	snprintf(buf_filename, sizeof(buf_filename), "%s_%d_.%s",
		 unique_filename, name, extension);
}

void clean_routine() {
	if (unlink(file) < 0)
		return;

	if (close(fd) < 0)
		return;

	filename("png");

	printf("%s\n", buf_filename);

	if ((fd = mkstemp(temp)) < 0)
		return;
	file = temp;
	char *msg = "phedwin";
	printf("gen file = %s\n", file);
	size_t bytes_wr;
	if ((bytes_wr = write(fd, msg, strlen(msg))) < 0)
		return;

	atexit(clean_routine);
}

int globvar = 6;
/* external variable in initialized data */
char buf[_POSIX_PATH_MAX] = "a write to stdout\n";

void main(int argc, char **argv) {
	int var;
	pid_t pid;
	/* automatic variable on the stack */
	var = 88;

	char *path = argv[1];
	if (path == 0)
		return;

	FILE *fp;
	fp = fopen(path, "w+");
	if (fp == 0)
		return;

	size_t write_bytes;

	printf("before fork\n");
	/* we don’t flush stdout */

	if ((pid = fork()) < 0) {
		perror("fork error");
	} else if (pid == 0) {
		globvar++; /* modify variables */
		var++;     /* child */
	} else {
		/* parent */
		sleep(1);
	}

	write_bytes =
	    snprintf(buf, sizeof(buf), "pid = %ld, glob = %d, var = %d\n",
		     (long)getpid(), globvar, var);

	printf("%s\n", buf);

	// if ((write_bytes = fwrite(buf, write_bytes, sizeof(buf), fp)) < 0)
	// perror("Fwrite");
	exit(0);
}