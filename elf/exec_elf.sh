#!/bin/zsh

# manually change formart and arch in exit.ld
if [[ "$#" -ge 1 ]]; then
    if [[ "$1" == "--32" ]]; then
        as --32 -o exit.o exit_32.S
        ld -m  elf_i386 -T exit.ld -o exit exit.o
        ./exit
    elif [[ "$1" == "--64" ]]; then
        as -o exit.o exit.S
        ld -T exit.ld -o exit exit.o
        ./exit
    fi 
fi