 .section        .rodata
.int_wformat: .string "%d\n"
.str_wformat: .string "%s\n"
.int_rformat: .string "%d"
  .comm _gp, 8, 4
 .text
 .globl main
 .type main,@function
main:   nop
 pushq %rbp
 movq %rsp, %rbp
 movl $1, %ebx
 movq $_gp, %rbx
 addq $0, %rbx
 movl %ebx, (%ebx)
 movl %ebx, (%rbx)
 movl $0, %ebx
 movq $_gp, %rbx
 addq $4, %rbx
 movl %ebx, (%ecx)
 movl %ebx, (%rbx)
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), %ebx
 movl %ebx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %ecx
 movl %ebx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %edx
 movl %edx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), %r8d
 movl %edx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 leave
 ret
