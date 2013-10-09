 .section        .rodata
.int_wformat: .string "%d\n"
.str_wformat: .string "%s\n"
.int_rformat: .string "%d"
  .comm _gp, 20, 4
 .text
 .globl main
 .type main,@function
main:   nop
 pushq %rbp
 movq %rsp, %rbp
 movl $1, %r8d
 movq $_gp, %rbx
 addq $0, %rbx
 movl %r8d, (%rbx)
 movl $2, %r8d
 movq $_gp, %rbx
 addq $4, %rbx
 movl %r8d, (%rbx)
 movl $3, %r8d
 movq $_gp, %rbx
 addq $8, %rbx
 movl %r8d, (%rbx)
 movl $4, %r8d
 movq $_gp, %rbx
 addq $12, %rbx
 movl %r8d, (%rbx)
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), %r8d
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %r9d
 addl %r8d, %r9d
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %r8d
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r10d
 imull %r8d, %r10d
 addl %r9d, %r10d
 movl %r10d, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), %r8d
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r9d
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), %r10d
 subl %r10d, %r9d
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %r10d
 movl %r10d, %ecx
 movl %r9d, %eax
 cdq
 idivl %ecx
 movl %eax, %r10d
 addl %r8d, %r10d
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %r8d
 addl %r10d, %r8d
 movl %r8d, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 leave
 ret
