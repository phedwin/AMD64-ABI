#!/bin/ksh
cc -o libgot.so -shared -fPIC tiny.c
as -o ret.o free.S
# export LD_LIBRARY_PATH=. # for runtime or ...
cc -o ret.bin ret.o -L. -lgot -Wl,-rpath=.
 

./ret.bin
# echo $?