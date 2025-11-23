bits 64

global _start

; _start is the entrypoint for testing the proto-libc functions
; extern test_strlen
extern test_print_text_length

_start:
  ; call test_strlen ; calls test_strlen
  ; call test_print_text_length

  ; return value o rax
  ; mov rdi, rax  ; arg1 = exit code | the return values of the tested function
  xor rdi, rdi
  mov rax, 60   ; syscall exit code
  syscall