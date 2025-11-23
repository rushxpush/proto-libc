bits 64

global print_text_length
extern my_strlen

; @params
; rsi -> text address
; return -> rax == text length

print_text_length:
  call my_strlen
  mov rdx, 1 ; length
  mov rsi, rax ; rsi = string length
  mov rax, 1 ; write syscall number
  mov rdi, 1 ; fd == 1, stdout
  syscall

  ret


