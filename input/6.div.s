 .section        .rodata
.int_wformat: .string "%d\n"
.str_wformat: .string "%s\n"
.int_rformat: .string "%d"
<VarDecl> -> <IDENTIFIER
<VarDecl> -> <IDENTIFIER
<VarDecl> -> <IDENTIFIER
<VarDecl> -> <IDENTIFIER
  .comm _gp, 16, 4
 .text
 .globl main
 .type main,@function
main:   nop
 pushq %rbp
 movq %rsp, %rbp
 movl $51, %ebx
 movl $17, %ecx
 movl %ebx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %edx
 addq $0, %edx
 movl (%edx), %r8d
 movl $100, %edx
 movlaaa %edx, (%r8d)
 movq $_gp, %edx
 addq $8, %edx
 movl (%edx), %r8d
 movl $2, %edx
 movlaaa %edx, (%r8d)
 movq $_gp, %edx
 addq $12, %edx
 movl (%edx), %r8d
 movl $5, %edx
 movlaaa %edx, (%r8d)
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
 movlaaa %ebx, (%r8d)
 movq $_gp, %ebx
 addq $4, %ebx
 movl (%ebx), %edx
 movl %edx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 leave
 ret
