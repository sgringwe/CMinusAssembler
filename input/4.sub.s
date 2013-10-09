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
 movl $.str_wformat, %edi
 call printf
 movl $77, %edx
 movl %edx, (%ebx)
 movl $3, %r8d
 movl %r8d, (%edx)
 movl $4, %r9d
 movl %r9d, (%r8d)
 movq $_gp, %r10d
 addq $0, %r10d
 movl (%r10d), %r11d
 movq $_gp, %r10d
 addq $8, %r10d
 movl (%r10d), %r12d
 movq $_gp, %r10d
 addq $12, %r10d
 movl (%r10d), %r13d
 movl (null), (%ecx)
 movq $_gp, %r10d
 addq $4, %r10d
 movl (%r10d), %r14d
 movl %r14d, %esi
 movl $0, %eax
 movl $.str_wformat, %edi
 call printf
 leave
 ret
