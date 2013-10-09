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
 addq $0, %rbx
 movl (%rbx), %ecx
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %edx
 cmpl %edx, %ecx
 movl $0, %ecx
 movl $1, %r8d
 cmovl %r8d, %ecx
 movq $_gp, %rbx
 addq $16, %rbx
 movl %ecx, (%rbx)
 movq $_gp, %rbx
 addq $16, %rbx
 movl (%rbx), %ecx
 movl $1, %edx
 orq %ecx, %edx
 movl %edx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %ecx
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %edx
 cmpl %edx, %ecx
 movl $0, %ecx
 movl $1, %r8d
 cmovg %r8d, %ecx
 movl %ecx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %ecx
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %edx
 cmpl %edx, %ecx
 movl $0, %ecx
 movl $1, %r8d
 cmovg %r8d, %ecx
 movl $1, %edx
 xorq %edx, %ecx
 movl %ecx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movl $0, %ecx
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), %edx
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %r8d
 cmpl %r8d, %edx
 movl $0, %edx
 movl $1, %r9d
 cmovl %r9d, %edx
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %r8d
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r9d
 cmpl %r8d, %r9d
 movl $0, %r9d
 movl $1, %r10d
 cmovne %r10d, %r9d
 orq %edx, %r9d
 andq %ecx, %r9d
 movl %r9d, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 leave
 ret
