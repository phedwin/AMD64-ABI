#ifndef COMMON_H
#define COMMON_H

/*COMMON HEADERS*/

#include <pthread.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

/*   defination in file *set_env.S* takes tha same interface as standard setenv
 *   The setenv function sets name to value. If name already exists in the
 *   environment, then (a) if rewrite is nonzero, the existing definition for
 *   name is first removed; or (b) if rewrite is 0, an existing definition for
 *   name is not removed, name is not set to the new value, and no error
 *   occurs
 */

extern int setenv_(const char *name, const char *value, int rewrite);

extern void verify_env_value_exist(char **envp_t, char *key, bool *status);
#include <sys/resource.h>
#endif /*! COMMON_H*/