 .section        .rodata
.int_wformat: .string "%d\n"
.str_wformat: .string "%s\n"
.int_rformat: .string "%d"
  .comm _gp, 8, 4
 .text
 .globl main
 .type main,@function
main:   nop
 pushq %rbp
 movq %rsp, %rbp
 movl $1, %ebx
 movl %ebx, (%ebx)
 movl $0, %ecx
 movl %ecx, (%ecx)
 movq $_gp, %edx
 addq $0, %edx
 movl (%edx), %r8d
 movl %r8d, %esi
 movl $0, %eax
 movl $.str_wformat, %edi
 call printf
 movq $_gp, %edx
 addq $4, %edx
 movl (%edx), %r9d
 movl %r10d, %esi
 movl $0, %eax
 movl $.str_wformat, %edi
 call printf
 movq $_gp, %edx
 addq $4, %edx
 movl (%edx), %r10d
 movl %r10d, %esi
 movl $0, %eax
 movl $.str_wformat, %edi
 call printf
 movq $_gp, %edx
 addq $0, %edx
 movl (%edx), %r11d
 movl %r12d, %esi
 movl $0, %eax
 movl $.str_wformat, %edi
 call printf
 leave
 ret
