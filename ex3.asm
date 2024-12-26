global _start
section .text
_start:
  mov ebx, 42   ; exit status is 42
  mov eax, 1    ; sys_exit syscall
  jmp skip      ; jump to "skip" label
  mov ebx, 13   ; exit status is 13, but this line isn't run as it skips to the interupt under the "skip" label
skip:
  int 0x80