bits 64

global test_strlen
extern my_strlen

section .data
  msg db "Hello World!", 0x00

section .text

_start:
  lea rdi, [rel msg] ; load pointer to msg in rdi

  call my_strlen ; call my_strlen
  xor rsi, rsi
  mov rax, 60
  syscall