#!/usr/bin/env bash
set -e

mkdir -p build bin

# build library 
for f in src/**/*.asm; do
    obj="build/$(basename ${f%.asm}.o)"
    nasm -f elf64 -g -F dwarf "$f" -o "$obj"
done

# build tests
for t in tests/*.asm; do
    testname=$(basename ${t%.asm})
    obj="build/${testname}.o"

    nasm -f elf64 -g -F dwarf "$t" -o build/${testname}.o

    # discover dependencies automatically
    ld build/${testname}.o build/my_strlen.o build/print_text_length.o -o bin/${testname}
done
