 .section        .rodata
.int_wformat: .string "%d\n"
.str_wformat: .string "%s\n"
.int_rformat: .string "%d"
  .comm _gp, 16, 4
 .text
 .globl main
 .type main,@function
main:   nop
 pushq %rbp
 movq %rsp, %rbp
 movl $10, %ecx
 movl $20, %edx
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %r11d
 movl %r11d, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 leave
 ret
