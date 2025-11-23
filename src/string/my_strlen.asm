bits 64

global my_strlen

; @params
; rdi -> text address
; return -> returns string length in rax

my_strlen:
  xor rdx, rdx ; sets rdx to zero. It will double as counter and string length "variable"

  jmp .loop ; jumps to .loop

.loop:
  movzx eax, byte [rdi + rdx] ; move one byte to eax from msg[rdi + rdx]
  cmp eax, 0 ; check if char in eax is equal to 0
  je .end    ; if so, jumps to .end
  inc rdx    ; increments rdx (the counter and string length)
  jmp .loop  ; jumps back to .loop

.end:
  mov rax, rdx ; moves the string length to rax
  ret          ; steps out of the strelen function



