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
 movq $_gp, %ebx
 addq $0, %ebx
 movl (%ebx), %ecx
 movl $1, %ebx
 movl %ebx, (%ecx)
 movq $_gp, %ebx
 addq $4, %ebx
 movl (%ebx), %ecx
 movl $0, %ebx
 movl %ebx, (%ecx)
 movq $_gp, %ebx
 addq $8, %ebx
 movl (%ebx), %ecx
 movl $0, %ebx
 movl %ebx, (%ecx)
 movq $_gp, %ebx
 addq $12, %ebx
 movl (%ebx), %ecx
 movl $1, %ebx
 movl %ebx, (%ecx)
 movq $_gp, %ebx
 addq $0, %ebx
 movl (%ebx), %ecx
 movq $_gp, %ebx
 addq $4, %ebx
 movl (%ebx), %edx
 movl %ebx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %ebx
 addq $0, %ebx
 movl (%ebx), %r8d
 movq $_gp, %ebx
 addq $0, %ebx
 movl (%ebx), %r9d
 movl %ebx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %ebx
 addq $8, %ebx
 movl (%ebx), %r10d
 movq $_gp, %ebx
 addq $12, %ebx
 movl (%ebx), %r11d
 movl %r9d, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %ebx
 addq $8, %ebx
 movl (%ebx), %r12d
 movq $_gp, %ebx
 addq $4, %ebx
 movl (%ebx), %r13d
 movl %ebx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 leave
 ret
