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
 movl $1, %ecx
 movq $_gp, %rbx
 addq $0, %rbx
 movl %ecx, (%rbx)
 movl $2, %ecx
 movq $_gp, %rbx
 addq $4, %rbx
 movl %ecx, (%rbx)
 movl $3, %ecx
 movq $_gp, %rbx
 addq $8, %rbx
 movl %ecx, (%rbx)
 movl $4, %ecx
 movq $_gp, %rbx
 addq $12, %rbx
 movl %ecx, (%rbx)
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), %ecx
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %edx
 cmpl %ecx, %edx
 movl $0, %edx
 movl $1, %r8d
 cmove %r8d, %edx
 movl %edx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), %ecx
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), %edx
 cmpl %ecx, %edx
 movl $0, %edx
 movl $1, %r8d
 cmovne %r8d, %edx
 movl %edx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %ecx
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %edx
 cmpl %ecx, %edx
 movl $0, %edx
 movl $1, %r8d
 cmove %r8d, %edx
 movl %edx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %ecx
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %edx
 cmpl %ecx, %edx
 movl $0, %edx
 movl $1, %r8d
 cmovne %r8d, %edx
 movl %edx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 leave
 ret
