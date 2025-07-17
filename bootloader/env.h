#ifndef ENV_H
#define ENV_H

#include <stdbool.h>

extern int setenv_(char *name, char *value, int rewrite);

extern char **environ;

extern void verify_env_value_exist(char *name, char *key, bool *status);

#endif /*! ENV_H */