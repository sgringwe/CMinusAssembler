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
 movl %ecx, (%r9d)
 movq $_gp, %r9d
 addq $16, %r9d
 movl (%r9d), %r12d
 movl $1, %r9d
 movl %r9d, %esi
 movl $0, %eax
 movl $.str_wformat, %edi
 call printf
 movq $_gp, %r13d
 addq $12, %r13d
 movl (%r13d), %r14d
 movq $_gp, %r13d
 addq $8, %r13d
 movl (%r13d), (null)
 movl %ecx, %esi
 movl $0, %eax
 movl $.str_wformat, %edi
 call printf
 movq $_gp, %r13d
 addq $12, %r13d
 movl (%r13d), (null)
 movq $_gp, %r13d
 addq $8, %r13d
 movl (%r13d), (null)
 movl %ecx, %esi
 movl $0, %eax
 movl $.str_wformat, %edi
 call printf
 movl $0, %r13d
 movq $_gp, (null)
 addq $0, (null)
 movl ((null)), (null)
 movq $_gp, (null)
 addq $4, (null)
 movl ((null)), (null)
 movq $_gp, (null)
 addq $8, (null)
 movl ((null)), (null)
 movq $_gp, (null)
 addq $12, (null)
 movl ((null)), (null)
 movl %r13d, %esi
 movl $0, %eax
 movl $.str_wformat, %edi
 call printf
 leave
 ret
