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
 movl (%rbx), %edx
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r8d
 addl %edx, %r8d
 cmpl %ecx, %r8d
 movl $0, %r8d
 movl $1, %edx
 cmovl %edx, %r8d
 movq $_gp, %rbx
 addq $16, %rbx
 movl %r8d, (%rbx)
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
 movl (%rbx), %edx
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %r8d
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %r9d
 cmpl %ecx, %r12d
 movl $0, %r12d
 movl $1, %r10d
 cmovg %r10d, %r12d
 movl %r12d, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %ecx
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r10d
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %r11d
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %r12d
 addl %r11d, %r12d
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r11d
 addl %r12d, %r11d
 cmpl %ecx, %r11d
 movl $0, %r11d
 movl $1, %r12d
 cmovg %r12d, %r11d
 movl %r11d, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %ecx
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r11d
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %r12d
 cmpl %r11d, %r12d
 movl $0, %r12d
 movl $1, %r13d
 cmovg %r13d, %r12d
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %r11d
 addl %ecx, %r11d
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %ecx
 addl %r11d, %ecx
 movl %ecx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 leave
 ret
