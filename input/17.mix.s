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
 addq $8, %rbx
 movl (%rbx), %ecx
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %r8d
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r9d
 addl %r8d, %r9d
 cmpl %r9d, %ecx
 movl $0, %ecx
 movl $1, %r8d
 cmovl %r8d, %ecx
 movq $_gp, %rbx
 addq $16, %rbx
 movl %ecx, (%rbx)
 movq $_gp, %rbx
 addq $16, %rbx
 movl (%rbx), %ecx
 movl %ecx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), %ecx
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r8d
 imull %ecx, %r8d
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %ecx
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %r9d
 imull %ecx, %r9d
 cmpl %r9d, %r8d
 movl $0, %r8d
 movl $1, %ecx
 cmovg %ecx, %r8d
 movl %r8d, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %ecx
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r8d
 imull %ecx, %r8d
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %ecx
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %r9d
 addl %ecx, %r9d
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %ecx
 addl %r9d, %ecx
 cmpl %ecx, %r8d
 movl $0, %r8d
 movl $1, %r9d
 cmovg %r9d, %r8d
 movl %r8d, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %ecx
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r8d
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %r9d
 cmpl %r9d, %r8d
 movl $0, %r8d
 movl $1, %r10d
 cmovg %r10d, %r8d
 imull %ecx, %r8d
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %ecx
 addl %r8d, %ecx
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r8d
 addl %ecx, %r8d
 movl %r8d, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 leave
 ret
