bits 64

global my_print

extern my_strlen

  
_start:
  xor rdi, rdi
  mov rax, 60
  syscall