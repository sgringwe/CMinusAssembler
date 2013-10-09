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
 movl $10, %ebx
 movl $20, %ecx
 movl (null), %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movl $77, %edx
 movq $_gp, %rbx
 addq $0, %rbx
 movl %edx, (%ebx)
 movl %edx, (%rbx)
 movl $3, %edx
 movq $_gp, %rbx
 addq $8, %rbx
 movl %edx, (%edx)
 movl %edx, (%rbx)
 movl $4, %edx
 movq $_gp, %rbx
 addq $12, %rbx
 movl %edx, (%r8d)
 movl %edx, (%rbx)
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), %edx
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %r8d
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r9d
 movq $_gp, %rbx
 addq $4, %rbx
 movl  leave
 ret
, (%ecx)
 movl  leave
 ret
, (%rbx)
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %r10d
 movl %r10d, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 leave
 ret
