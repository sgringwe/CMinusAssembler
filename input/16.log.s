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
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), %ebx
 movl $1, %ecx
 movl %ecx, (%ebx)
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %ebx
 movl $2, %ecx
 movl %ecx, (%ebx)
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %ebx
 movl $3, %ecx
 movl %ecx, (%ebx)
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %ebx
 movl $4, %ecx
 movl %ecx, (%ebx)
 movq $_gp, %rbx
 addq $16, %rbx
 movl (%rbx), %ebx
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), %ecx
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %edx
 movl %ecx, (%ebx)
 movq $_gp, %rbx
 addq $16, %rbx
 movl (%rbx), %ebx
 movl %ecx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), %ecx
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %r8d
 movl %ebx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), %r9d
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), %r10d
 movl %ebx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r11d
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %r12d
 movl %ebx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %r13d
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %r14d
 movl %ebx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), (null)
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), (null)
 movl %ecx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), (null)
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), (null)
 movl %ebx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), (null)
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), (null)
 movl %ecx, %esi
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
 addq $12, %rbx
 movl (%rbx), (null)
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), (null)
 movl %ebx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), (null)
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), (null)
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), (null)
 movq $_gp, %rbx
 addq $8, %rbx
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
 movl %ebx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 leave
 ret
