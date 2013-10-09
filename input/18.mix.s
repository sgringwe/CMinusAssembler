 .section        .rodata
.int_wformat: .string "%d\n"
.str_wformat: .string "%s\n"
.int_rformat: .string "%d"
.string_const0:    .string "i = "
.string_const1:    .string "j = "
.string_const2:    .string "k = "
.string_const3:    .string "l = "
.string_const4:    .string "m = "
  .comm _gp, 24, 4
 .text
 .globl main
 .type main,@function
main:   nop
 pushq %rbp
 movq %rsp, %rbp
 movl $.string_const0, % movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %ecx
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r13d
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %r14d
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %r15d
 addl %r14d, %r15d
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r14d
 addl %r15d, %r14d
 cmpl %ecx, %r14d
 movl $0, %r14d
 movl $1, %r15d
 cmovg %r15d, %r14d
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), %ecx
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %r15d
 cmpl %ecx, %r15d
 movl $0, %r15d
 movl $1, (null)
 cmovne (null), %r15d
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %ecx
 movq $_gp, %rbx
 addq $20, %rbx
 movl (%rbx), (null)
 cmpl %ecx, (null)
 movl $0, (null)
 movl $1, (null)
 cmovg (null), (null)
 movl (null), %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %ecx
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), (null)
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), (null)
 subl (null), %ecx
 movq $_gp, %rbx
 addq $16, %rbx
 movl (%rbx), (null)
 cmpl %ecx, (null)
 movl $0, (null)
 movl $1, (null)
 cmovg (null), (null)
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %ecx
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), (null)
 movq $_gp, %rbx
 addq $20, %rbx
 movl (%rbx), (null)
 addl %ecx, %edx
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %ecx
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), (null)
 movq $_gp, %rbx
 addq $20, %rbx
 movl (%rbx), (null)
 addl %ecx, %edx
 cmpl %edx, %edx
 movl $0, %edx
 movl $1, %ecx
 cmovne %ecx, %edx
 movl %edx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 leave
 ret
