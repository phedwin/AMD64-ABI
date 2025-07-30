#!/bin/ksh

OUTPUT="$0".bin
if [[ "$#" -ge 1 ]]; then
    if [[ "$1" == "--32" ]]; then
        as --32 -o exit.o exit_32.S
        ld -m  elf_i386 -T exit32.ld -o $OUTPUT exit.o
        ./$OUTPUT
    elif [[ "$1" == "--64" ]]; then
        as -o exit.o exit.S
        ld -T exit.ld -o $OUTPUT exit.o
        ./$OUTPUT
    fi 
fi