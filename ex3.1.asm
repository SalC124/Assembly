global _start
section .text
_start:
  mov ecx, 99   ; set ecx to 99
  mov ebx, 130  ; exit status is 130 (shows up as a INT in zsh)
  mov eax, 1    ; sys_exit syscall
  cmp ecx, 100  ; compare ecx to 100
  jl skip       ; jump to "skip" if less than, if not, continue
  mov ebx, 13   ; exit status is 13, but this line isn't run as it skips to the interupt under the "skip" label
skip:
  int 0x80