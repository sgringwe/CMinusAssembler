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
 addq $8, %ebx
 movl (%ebx), %edx
 movq $_gp, %ebx
 addq $4, %ebx
 movl (%ebx), %r8d
 movq $_gp, %ebx
 addq $12, %ebx
 movl (%ebx), %r9d
 movl %ecx, (%ecx)
 movq $_gp, %ebx
 addq $16, %ebx
 movl (%ebx), %ecx
 movl %ecx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %ebx
 addq $0, %ebx
 movl (%ebx), %r10d
 movq $_gp, %ebx
 addq $12, %ebx
 movl (%ebx), %r11d
 movq $_gp, %ebx
 addq $4, %ebx
 movl (%ebx), %r12d
 movq $_gp, %ebx
 addq $8, %ebx
 movl (%ebx), %r13d
 movl %ebx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %ebx
 addq $8, %ebx
 movl (%ebx), %r14d
 movq $_gp, %ebx
 addq $12, %ebx
 movl (%ebx), (null)
 movq $_gp, %ebx
 addq $4, %ebx
 movl (%ebx), (null)
 movq $_gp, %ebx
 addq $8, %ebx
 movl (%ebx), (null)
 movq $_gp, %ebx
 addq $12, %ebx
 movl (%ebx), (null)
 movl %ebx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %ebx
 addq $8, %ebx
 movl (%ebx), (null)
 movq $_gp, %ebx
 addq $12, %ebx
 movl (%ebx), (null)
 movq $_gp, %ebx
 addq $4, %ebx
 movl (%ebx), (null)
 movq $_gp, %ebx
 addq $8, %ebx
 movl (%ebx), (null)
 movq $_gp, %ebx
 addq $12, %ebx
 movl (%ebx), (null)
 movl (null), %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 leave
 ret
