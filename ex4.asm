global _start

section .text
_start:
  mov ebx, 1    ; start ebx at 1
  mov ecx, 4    ; number of iterations
label:
  add ebx, ebx  ; ebx += edx
  dec ecx       ; ecx -= 1
  