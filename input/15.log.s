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
 movl $1, %ebx
 movq $_gp, %rbx
 addq $0, %rbx
 movl %ebx, (%ebx)
 movl %ebx, (%rbx)
 movl $2, %ebx
 movq $_gp, %rbx
 addq $4, %rbx
 movl %ebx, (%ecx)
 movl %ebx, (%rbx)
 movl $3, %ebx
 movq $_gp, %rbx
 addq $8, %rbx
 movl %ebx, (%edx)
 movl %ebx, (%rbx)
 movl $4, %ebx
 movq $_gp, %rbx
 addq $12, %rbx
 movl %ebx, (%r8d)
 movl %ebx, (%rbx)
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), %ebx
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %ecx
 movq $_gp, %rbx
 addq $16, %rbx
 movl %ecx, (%r9d)
 movl %ecx, (%rbx)
 movq $_gp, %rbx
 addq $16, %rbx
 movl (%rbx), %ecx
 movl $1, %edx
 movl %ebx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r8d
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %r9d
 movl %ebx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r10d
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %r11d
 movl %ecx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movl $0, %r12d
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), %r13d
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %r14d
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), (null)
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), (null)
 movl %r12d, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 leave
 ret
