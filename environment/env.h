#ifndef ENV_H
#define ENV_H

extern int setenv_(char *name, char *value, int rewrite);

#include <stdbool.h>
#include <stdio.h>
#include <string.h>

extern char **environ;

extern void verify_env_value_exist(char *name, char *key, bool *status);

#endif /*! ENV_H */