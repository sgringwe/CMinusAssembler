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
 movl $7, %r9d
 movl %r14d, (%r9d)
 movq $_gp, %r11d
 addq $16, %r11d
 movl (%r11d), %r12d
 movl %r12d, %esi
 movl $0, %eax
 movl $.str_wformat, %edi
 call printf
 movq $_gp, %r11d
 addq $12, %r11d
 movl (%r11d), %r13d
 movl $5, %r11d
 movl %edx, (%r10d)
 movq $_gp, %r14d
 addq $20, %r14d
 movl (%r14d), (null)
 movl (null), %esi
 movl $0, %eax
 movl $.str_wformat, %edi
 call printf
 movq $_gp, %r14d
 addq $4, %r14d
 movl (%r14d), (null)
 movq $_gp, %r14d
 addq $8, %r14d
 movl (%r14d), (null)
 movq $_gp, %r14d
 addq $12, %r14d
 movl (%r14d), (null)
 movl (null), %esi
 movl $0, %eax
 movl $.str_wformat, %edi
 call printf
 movq $_gp, %r14d
 addq $4, %r14d
 movl (%r14d), (null)
 movq $_gp, %r14d
 addq $8, %r14d
 movl (%r14d), (null)
 movq $_gp, %r14d
 addq $12, %r14d
 movl (%r14d), (null)
 movl %edx, %esi
 movl $0, %eax
 movl $.str_wformat, %edi
 call printf
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
 movl (null), %esi
 movl $0, %eax
 movl $.str_wformat, %edi
 call printf
 movq $_gp, %r14d
 addq $8, %r14d
 movl (%r14d), (null)
 movq $_gp, %r14d
 addq $12, %r14d
 movl (%r14d), (null)
 movq $_gp, %r14d
 addq $4, %r14d
 movl (%r14d), (null)
 movq $_gp, %r14d
 addq $0, %r14d
 movl (%r14d), (null)
 movl %ebx, %esi
 movl $0, %eax
 movl $.str_wformat, %edi
 call printf
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
 addq $0, %r14d
 movl (%r14d), (null)
 movq $_gp, %r14d
 addq $16, %r14d
 movl (%r14d), (null)
 movq $_gp, %r14d
 addq $20, %r14d
 movl (%r14d), (null)
 movl %ebx, %esi
 movl $0, %eax
 movl $.str_wformat, %edi
 call printf
 leave
 ret
