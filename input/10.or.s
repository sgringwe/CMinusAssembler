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
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), %ebx
 movl $1, %ecx
 movl %ecx, (%rbx)
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %ebx
 movl $0, %ecx
 movl %ecx, (%rbx)
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %ebx
 movl $0, %ecx
 movl %ecx, (%rbx)
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %ebx
 movl $1, %ecx
 movl %ecx, (%rbx)
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), %ebx
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %ecx
 movl %ecx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), %edx
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), %r8d
 movl %r8d, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r9d
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %r10d
 movl %r10d, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %r11d
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %r12d
 movl %r12d, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 leave
 ret
