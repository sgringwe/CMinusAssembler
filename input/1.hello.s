 .section        .rodata
.int_wformat: .string "%d\n"
.str_wformat: .string "%s\n"
.int_rformat: .string "%d"
.string_const0:    .string "Hello world!"
  .comm _gp, 4, 4
 .text
 .globl main
 .type main,@function
main:   nop
 pushq %rbp
 movq %rsp, %rbp
 movl $.string_const0, %esi
 movl $0, %eax
 movl $.str_wformat, %edi
 call printf
 movq $_gp, %ebx
 addq $0, %ebx
 movl (%ebx), %ecx
 movl $30, %ebx
 movl %ebx, (%ecx)
 movq $_gp, %ebx
 addq $0, %ebx
 movl (%ebx), %ecx
 movl %ecx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movl $20, %ebx
 movl %ebx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 leave
 ret
