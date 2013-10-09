 .section        .rodata
.int_wformat: .string "%d\n"
.str_wformat: .string "%s\n"
.int_rformat: .string "%d"
<VarDecl> -> <IDENTIFIER
<VarDecl> -> <IDENTIFIER
  .comm _gp, 8, 4
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
 movlaaa %ebx, (%ecx)
 movq $_gp, %ebx
 addq $4, %ebx
 movl (%ebx), %ecx
 movl $0, %ebx
 movlaaa %ebx, (%ecx)
 movq $_gp, %ebx
 addq $0, %ebx
 movl (%ebx), %ecx
 movl %ecx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %ebx
 addq $4, %ebx
 movl (%ebx), %edx
 movl %r8d, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %ebx
 addq $4, %ebx
 movl (%ebx), %r8d
 movl %r8d, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %ebx
 addq $0, %ebx
 movl (%ebx), %r9d
 movl %r10d, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 leave
 ret
