bits 64

; global test_print_text_length
global _start
extern print_text_length

section .data
  input_str_msg db "Input the string you want to know the length of:", 0x0A, 0x00
  msg db "Hello World", 0x0A, 0x00

section .text

_start:
  mov rax, 1 ; syscall write
  mov rdi, 1 ; fd stdout
  lea rsi, [rel input_str_msg] ; message address
  mov rdx, 0x31
  syscall

  lea rdi, [rel msg] ; load msg address
  call print_text_length

  xor rdi, rdi
  mov rax, 60
  syscall