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
 cmpl %ecx, %edx
 movl $0, %edx
 movl $1, %r8d
 cmovl %r8d, %edx
 movq $_gp, %rbx
 addq $16, %rbx
 movl %edx, (%rbx)
 movq $_gp, %rbx
 addq $16, %rbx
 movl (%rbx), %ecx
 movl $1, %edx
 movl %ecx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r8d
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %r9d
 cmpl %r8d, %r9d
 movl $0, %r9d
 movl $1, %r10d
 cmovg %r10d, %r9d
 movl %r9d, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r8d
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %r10d
 cmpl %r8d, %r10d
 movl $0, %r10d
 movl $1, %r11d
 cmovg %r11d, %r10d
 movl %r11d, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movl $0, %r8d
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), %r11d
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %r12d
 cmpl %r11d, %r12d
 movl $0, %r12d
 movl $1, %r13d
 cmovl %r13d, %r12d
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %r11d
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r13d
 cmpl %r11d, %r13d
 movl $0, %r13d
 movl $1, %r14d
 cmovne %r14d, %r13d
 movl %r12d, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 leave
 ret
