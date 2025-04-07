// #include <pthread.h>
#include <stdio.h>
// #include <stdlib.h>
// #include <string.h>
// #include <unistd.h>

// /* add values in struct*/

// char bufx[1024];

// struct Params {
// 	int value_a;
// 	int value_b;
// };

// void *routine_starts(void *args) {
// 	struct Params *p = args;
// 	printf("struct values %d\n", p->value_a + p->value_b);
// 	pthread_exit(0);
// }

// // #define _at_exit __attribute__((destructor))
// void runner() {
// 	pthread_attr_t attr;
// 	pthread_t tid;

// 	pthread_attr_init(&attr);

// 	struct Params values = {
// 		.value_a = 20,
// 		.value_b = 90,
// 	};

// 	pthread_create(&tid, &attr, routine_starts, &values);

// 	pthread_join(tid, NULL);
// 	return;
// }

// #define BUFFER sysconf(_SC_PAGE_SIZE)

// #include <sys/stat.h>
// void make_buffer(FILE *fp, char *buf) {
// 	struct stat stats;
// 	if (fstat(fp->_fileno, &stats) < 0)
// 		return;
// 	size_t file_size = stats.st_size;

// 	setvbuf(fp, NULL, _IOLBF, 4096);

// 	fwrite(buf, 1, file_size, stdout);
// 	return;
// }

// /*at_exit*/
// void finale() {
// 	printf("\nmain() has reached the end!");
// }

#include <stdbool.h>
#include <string.h>

void verify_env_value_exist(char **envp_t, char *key, bool *status) {
	int m;
	for (m = 0; envp_t[m]; m++)
		if (strcmp(envp_t[m], key) == 0)
			*status = true;
	return;
}

int main(int argc, char **argv, char **envp) {
	bool status;

	verify_env_value_exist(envp, "DBUS_SESSION_BUS_ADDRESS", &status);
	printf("%d", status);
	return 0;
}

// void buffer_t(void) {
// 	char ptr[BUFFER];

// 	char *path = "notes.pl";

// 	FILE *fp = fopen(path, "r");
// 	if (path == 0)
// 		return;

// 	/*! this clears buffer, so it prints first considering printf is line */
// 	/*! bufferred, then sleeps later */
// 	/*! fclose(stdout); */

// 	size_t read_t;
// 	if ((read_t = fread(ptr, 1, BUFFER, fp)) < 0)
// 		return;

// 	make_buffer(fp, ptr);

// 	return;
// }
