#!/bin/bash

gcc low.c  -c -O3 -fno-PIE
gcc high.c -c -O3 -fno-PIE
gcc -Tlinker.ld -fno-PIE -Wl,-no-pie -nostartfiles -nostdlib -o out.elf low.o high.o
objdump -d out.elf -Mintel

