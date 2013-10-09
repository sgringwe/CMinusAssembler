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
 movl %ebx, %esi
 movl $0, %eax
 movl $.str_wformat, %edi
 call printf
 movl %ecx, %esi
 movl $0, %eax
 movl $.str_wformat, %edi
 call printf
 movl %ecx, %esi
 movl $0, %eax
 movl $.str_wformat, %edi
 call printf
 movl %ebx, %esi
 movl $0, %eax
 movl $.str_wformat, %edi
 call printf
 leave
 ret
