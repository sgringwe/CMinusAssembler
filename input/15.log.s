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
 movq $_gp, %ebx
 addq $0, %ebx
 movl (%ebx), %ecx
 movl $1, %ebx
 movl %ebx, (%ecx)
 movq $_gp, %ebx
 addq $4, %ebx
 movl (%ebx), %ecx
 movl $2, %ebx
 movl %ebx, (%ecx)
 movq $_gp, %ebx
 addq $8, %ebx
 movl (%ebx), %ecx
 movl $3, %ebx
 movl %ebx, (%ecx)
 movq $_gp, %ebx
 addq $12, %ebx
 movl (%ebx), %ecx
 movl $4, %ebx
 movl %ebx, (%ecx)
 movq $_gp, %ebx
 addq $16, %ebx
 movl (%ebx), %ecx
 movq $_gp, %ebx
 addq $0, %ebx
 movl (%ebx), %edx
 movq $_gp, %ebx
 addq $4, %ebx
 movl (%ebx), %r8d
 movl %ecx, (%ecx)
 movq $_gp, %ebx
 addq $16, %ebx
 movl (%ebx), %ecx
 movl $1, %ebx
 movl %ebx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %r9d
 addq $12, %r9d
 movl (%r9d), %r10d
 movq $_gp, %r9d
 addq $8, %r9d
 movl (%r9d), %r11d
 movl %ebx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %r9d
 addq $12, %r9d
 movl (%r9d), %r12d
 movq $_gp, %r9d
 addq $8, %r9d
 movl (%r9d), %r13d
 movl %ecx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movl $0, %r9d
 movq $_gp, %r14d
 addq $0, %r14d
 movl (%r14d), (null)
 movq $_gp, %r14d
 addq $4, %r14d
 movl (%r14d), (null)
 movq $_gp, %r14d
 addq $8, %r14d
 movl (%r14d), (null)
 movq $_gp, %r14d
 addq $12, %r14d
 movl (%r14d), (null)
 movl %r9d, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 leave
 ret
