

// the stack setup

#include "common.h"

// this goes into void (*init)(void);
__attribute__((constructor)) void environment(char **envp) {
	printf("constructor void (*init)(void);\n");
	return;
}

// this goes into void (*fini)(void);
__attribute__((constructor)) void free_memory(char **envp) {
	printf("destructor void (*fini)(void);\n");
	return;
}
int __libc_start_main(int (*main)(int, char **, char **),
		      int argc,
		      char **ubp_av,
		      void (*init)(void),
		      void (*fini)(void),
		      void (*rtld_fini)(void),
		      void *stack_end);

#define MAX_ENV_VALUE 256

extern char **environ;

#include <string.h>

// OK so this is whats going on when we set env,  its easy to reset and env but
// lowkey hard to set a new environment considering it now needs to be on heap

#include "stdlib.h"
int setenv_(char *name, char *value, int rewrite) {
	bool status = false;
	size_t size;
	char buf_environ[MAX_ENV_VALUE];

	size = snprintf(buf_environ, sizeof buf_environ, "%s=%s", name, value);
	buf_environ[size] = '\0';

	for (; *environ; environ++) {
		if (strncmp(name, *environ, strlen(name)) == 0 && rewrite) {
			memcpy(*environ, buf_environ, size);
			status = true;
			return status;
		}
	}
	// Note we are moving environ, so it makes sense!
	*environ = strdup(buf_environ);

	strncpy(*environ, buf_environ, size);

	return status;
}
int main(int argc, char **argv, char **envp) {
	setenv_("COLORTERMs", "phedwin", 1);
	for (;;)  // debug loop, so we can look thru the env set
		;
	return 0;
}