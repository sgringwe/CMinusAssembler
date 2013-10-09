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
 movl $51, %ebx
 movl $17, %ecx
 movl %ebx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movl $100, %edx
 movq $_gp, %rbx
 addq $0, %rbx
 movl %edx, (%rbx)
 movl $2, %edx
 movq $_gp, %rbx
 addq $8, %rbx
 movl %edx, (%rbx)
 movl $5, %edx
 movq $_gp, %rbx
 addq $12, %rbx
 movl %edx, (%rbx)
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), %edx
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %r8d
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r9d
 movq $_gp, %rbx
 addq $4, %rbx
 movl %ebx, (%rbx)
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %ebx
 movl %ebx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 leave
 ret
