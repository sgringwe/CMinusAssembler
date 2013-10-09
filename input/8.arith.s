 .section        .rodata
.int_wformat: .string "%d\n"
.str_wformat: .string "%s\n"
.int_rformat: .string "%d"
<VarDecl> -> <IDENTIFIER
<VarDecl> -> <IDENTIFIER
<VarDecl> -> <IDENTIFIER
<VarDecl> -> <IDENTIFIER
<VarDecl> -> <IDENTIFIER
<VarDecl> -> <IDENTIFIER
  .comm _gp, 24, 4
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
 movl $2, %ebx
 movlaaa %ebx, (%ecx)
 movq $_gp, %ebx
 addq $8, %ebx
 movl (%ebx), %ecx
 movl $3, %ebx
 movlaaa %ebx, (%ecx)
 movq $_gp, %ebx
 addq $12, %ebx
 movl (%ebx), %ecx
 movl $4, %ebx
 movlaaa %ebx, (%ecx)
 movq $_gp, %ebx
 addq $16, %ebx
 movl (%ebx), %ecx
 movq $_gp, %ebx
 addq $0, %ebx
 movl (%ebx), %edx
 movl $7, %ebx
 movlaaa %edx, (%ecx)
 movq $_gp, %ecx
 addq $16, %ecx
 movl (%ecx), %edx
 movl %edx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %ecx
 addq $20, %ecx
 movl (%ecx), %r8d
 movq $_gp, %ecx
 addq $12, %ecx
 movl (%ecx), %r9d
 movl $5, %ecx
 movlaaa %r8d, (%r8d)
 movq $_gp, %r8d
 addq $20, %r8d
 movl (%r8d), %r10d
 movl %r10d, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %r8d
 addq $4, %r8d
 movl (%r8d), %r11d
 movq $_gp, %r8d
 addq $8, %r8d
 movl (%r8d), %r12d
 movq $_gp, %r8d
 addq $12, %r8d
 movl (%r8d), %r13d
 movl (null), %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %r8d
 addq $4, %r8d
 movl (%r8d), %r14d
 movq $_gp, %r8d
 addq $8, %r8d
 movl (%r8d), (null)
 movq $_gp, %r8d
 addq $12, %r8d
 movl (%r8d), (null)
 movl  .section        .rodata
, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %r8d
 addq $0, %r8d
 movl (%r8d), (null)
 movq $_gp, %r8d
 addq $4, %r8d
 movl (%r8d), (null)
 movq $_gp, %r8d
 addq $8, %r8d
 movl (%r8d), (null)
 movq $_gp, %r8d
 addq $12, %r8d
 movl (%r8d), (null)
 movl (null), %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %r8d
 addq $8, %r8d
 movl (%r8d), (null)
 movq $_gp, %r8d
 addq $12, %r8d
 movl (%r8d), (null)
 movq $_gp, %r8d
 addq $4, %r8d
 movl (%r8d), (null)
 movq $_gp, %r8d
 addq $0, %r8d
 movl (%r8d), (null)
 movl %ebx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %r8d
 addq $0, %r8d
 movl (%r8d), (null)
 movq $_gp, %r8d
 addq $4, %r8d
 movl (%r8d), (null)
 movq $_gp, %r8d
 addq $8, %r8d
 movl (%r8d), (null)
 movq $_gp, %r8d
 addq $0, %r8d
 movl (%r8d), (null)
 movq $_gp, %r8d
 addq $16, %r8d
 movl (%r8d), (null)
 movq $_gp, %r8d
 addq $20, %r8d
 movl (%r8d), (null)
 movl %ebx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 leave
 ret
