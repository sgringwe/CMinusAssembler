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
 movl %ecx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %edx
 addq $0, %edx
 movl (%edx), %r8d
 movl $1, %edx
 movl %edx, (%r8d)
 movq $_gp, %edx
 addq $8, %edx
 movl (%edx), %r8d
 movl $3, %edx
 movl %edx, (%r8d)
 movq $_gp, %edx
 addq $12, %edx
 movl (%edx), %r8d
 movl $4, %edx
 movl %edx, (%r8d)
 movq $_gp, %edx
 addq $4, %edx
 movl (%edx), %r8d
 movq $_gp, %edx
 addq $0, %edx
 movl (%edx), %r9d
 movq $_gp, %edx
 addq $8, %edx
 movl (%edx), %r10d
 movq $_gp, %edx
 addq $12, %edx
 movl (%edx), %r11d
 movl AND, (%r8d)
 movq $_gp, %edx
 addq $4, %edx
 movl (%edx), %r8d
 movl %r8d, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 leave
 ret
