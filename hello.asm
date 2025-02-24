
section .data
   text1 db "What is your name? ", 0
   text2 db "Hello, ", 0
  

section .bss
   name resb 32

section .text
   global _start

_start:

   call _printName1
   call _writePersonName
   call _printName2
   call _finish


_printName1:
   mov rax, 1
   mov rdi, 1
   mov rsi, text1
   mov rdx, 19
   syscall
   ret


_printName2:
   mov rax, 1
   mov rdi, 1
   mov rsi, text2
   mov rdx, 32
   syscall
   ret


_writePersonName:
   mov rax, 0
   mov rdi, 0
   mov rsi, name
   mov rdx, 32
   syscall

   mov byte [name + rax], 0
   ret


_finish:
   mov rax, 60
   xor rdi, rdi
   syscall
