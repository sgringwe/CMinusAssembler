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
 addq $8, %rbx
 movl (%rbx), %r8d
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %r9d
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r10d
 addl %r9d, %r10d
 cmpl %r10d, %r8d
 movl $0, %r8d
 movl $1, %r9d
 cmovl %r9d, %r8d
 movq $_gp, %rbx
 addq $16, %rbx
 movl %r8d, (%rbx)
 movq $_gp, %rbx
 addq $16, %rbx
 movl (%rbx), %r8d
 movl %r8d, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), %r8d
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r9d
 imull %r8d, %r9d
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %r8d
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %r10d
 imull %r8d, %r10d
 cmpl %r10d, %r9d
 movl $0, %r9d
 movl $1, %r8d
 cmovg %r8d, %r9d
 movl %r9d, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %r8d
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r9d
 imull %r8d, %r9d
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %r8d
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %r10d
 addl %r8d, %r10d
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r8d
 addl %r10d, %r8d
 cmpl %r8d, %r9d
 movl $0, %r9d
 movl $1, %r10d
 cmovg %r10d, %r9d
 movl %r9d, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %r8d
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r9d
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %r10d
 cmpl %r10d, %r9d
 movl $0, %r9d
 movl $1, %r11d
 cmovg %r11d, %r9d
 imull %r8d, %r9d
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %r8d
 addl %r9d, %r8d
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r9d
 addl %r8d, %r9d
 movl %r9d, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 leave
 ret
