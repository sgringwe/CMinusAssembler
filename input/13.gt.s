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
 movl $1, %ebx
 movl %ebx, (%ebx)
 movl $2, %ecx
 movl %ecx, (%ecx)
 movl $3, %edx
 movl %edx, (%edx)
 movl $4, %r8d
 movl %r8d, (%r8d)
 movq $_gp, %r9d
 addq $0, %r9d
 movl (%r9d), %r10d
 movq $_gp, %r9d
 addq $4, %r9d
 movl (%r9d), %r11d
 movl %ebx, %esi
 movl $0, %eax
 movl $.str_wformat, %edi
 call printf
 movq $_gp, %r9d
 addq $0, %r9d
 movl (%r9d), %r12d
 movq $_gp, %r9d
 addq $0, %r9d
 movl (%r9d), %r13d
 movl %ebx, %esi
 movl $0, %eax
 movl $.str_wformat, %edi
 call printf
 movq $_gp, %r9d
 addq $12, %r9d
 movl (%r9d), %r14d
 movq $_gp, %r9d
 addq $8, %r9d
 movl (%r9d), (null)
 movl %ecx, %esi
 movl $0, %eax
 movl $.str_wformat, %edi
 call printf
 movq $_gp, %r9d
 addq $4, %r9d
 movl (%r9d), (null)
 movq $_gp, %r9d
 addq $8, %r9d
 movl (%r9d), (null)
 movl %ecx, %esi
 movl $0, %eax
 movl $.str_wformat, %edi
 call printf
 leave
 ret
