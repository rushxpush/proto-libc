nasm -f elf64 -g -F dwarf file.asm -o file.o
ld -o file file.o
