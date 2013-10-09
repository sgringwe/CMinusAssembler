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
 movl $51, %r8d
 movl $17, %r9d
 movl %r9d, %ecx
 movl %r8d, %eax
 cdq
 idivl %ecx
 movl %eax, %r9d
 movl %r9d, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movl $100, %r8d
 movq $_gp, %rbx
 addq $0, %rbx
 movl %r8d, (%rbx)
 movl $2, %r8d
 movq $_gp, %rbx
 addq $8, %rbx
 movl %r8d, (%rbx)
 movl $5, %r8d
 movq $_gp, %rbx
 addq $12, %rbx
 movl %r8d, (%rbx)
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), %r8d
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %r9d
 movl %r9d, %ecx
 movl %r8d, %eax
 cdq
 idivl %ecx
 movl %eax, %r9d
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r8d
 movl %r8d, %ecx
 movl %r9d, %eax
 cdq
 idivl %ecx
 movl %eax, %r8d
 movq $_gp, %rbx
 addq $4, %rbx
 movl %r8d, (%rbx)
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %r8d
 movl %r8d, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 leave
 ret
