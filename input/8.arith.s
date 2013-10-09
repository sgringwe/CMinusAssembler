 .section        .rodata
.int_wformat: .string "%d\n"
.str_wformat: .string "%s\n"
.int_rformat: .string "%d"
  .comm _gp, 24, 4
 .text
 .globl main
 .type main,@function
main:   nop
 pushq %rbp
 movq %rsp, %rbp
 movl $1, %ebx
 movq $_gp, %rbx
 addq $0, %rbx
 movl %ebx, (%rbx)
 movl $2, %ebx
 movq $_gp, %rbx
 addq $4, %rbx
 movl %ebx, (%rbx)
 movl $3, %ebx
 movq $_gp, %rbx
 addq $8, %rbx
 movl %ebx, (%rbx)
 movl $4, %ebx
 movq $_gp, %rbx
 addq $12, %rbx
 movl %ebx, (%rbx)
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), %ebx
 movl $7, %ecx
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
 addq $12, %rbx
 movl (%rbx), %edx
 movl $5, %r8d
 movq $_gp, %rbx
 addq $20, %rbx
 movl (null), (%rbx)
 movq $_gp, %rbx
 addq $20, %rbx
 movl (%rbx), %r9d
 movl %r9d, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %r10d
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %r11d
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r12d
 movl (null), %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %r13d
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %r14d
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), (null)
 movl StatementList, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), (null)
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), (null)
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), (null)
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), (null)
 movl (null), %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), (null)
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), (null)
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), (null)
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), (null)
 movl %ebx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), (null)
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), (null)
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), (null)
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), (null)
 movq $_gp, %rbx
 addq $16, %rbx
 movl (%rbx), (null)
 movq $_gp, %rbx
 addq $20, %rbx
 movl (%rbx), (null)
 movl %ebx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 leave
 ret
