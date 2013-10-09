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
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), %edx
 movl $100, %r8d
 movl %r8d, (%rbx)
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %edx
 movl $2, %r8d
 movl %r8d, (%rbx)
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %edx
 movl $5, %r8d
 movl %r8d, (%rbx)
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %edx
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), %r8d
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %r9d
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r10d
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
