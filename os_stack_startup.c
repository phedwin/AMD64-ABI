

#include "common.h"

void verify_env_value_exist(char **envp_t, char *key, bool *status) {
	int g;
	for (g = 0; envp_t[g]; g++) {
		/*compare the key, its a key value pair w/ equal seperated!*/
		if (strncmp(envp_t[g], key, strlen(key)) == 0) {
			printf("%s\n", envp_t[g]);
			*status = true;
			return;
		}
	}
	return;
}

void main(int argc, char **argv, char **envp) {
	int k;
	/*! File node.S & argv.S how does main get commandline arguments & env*/
	/*! what do we increment (%rsp (this), index, scale) or (rsp,
	 *! index(this), scale); scale is 8, this is my processor width*/

	for (k = 0; argv[k]; k++)
		printf("id -%d ptr - %p\n", k, (argv + k));

	/*! test results
	 *   id -0 ptr - 0x7fff39198cd8
	 *   id -1 ptr - 0x7fff39198ce0
	 *   id -2 ptr - 0x7fff39198ce8
	 *   id -3 ptr - 0x7fff39198cf0
	 *   id -4 ptr - 0x7fff39198cf8
	 *
	 *EXPLANATION we are incrementing the 8(rsp) until NULL then from there
	 *we enter envp, the index remains the same 0 & scale is 8 & also
	 *keeping the rax lower 8 bits 0 so it doesnt switch to X87/SSE
	 */

	bool status;

	verify_env_value_exist(envp, "DBUS_SESSION_BUS_ADDRESS", &status);
	return;
}