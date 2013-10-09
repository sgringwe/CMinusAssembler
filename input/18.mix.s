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
 movl $.string_const0, %esi
 movl $0, %eax
 movl $.str_wformat, %edi
 call printf
 movl $.string_const1, %esi
 movl $0, %eax
 movl $.str_wformat, %edi
 call printf
 movl $.string_const2, % movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), (null)
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), (null)
 cmpl (null), (null)
 movl $0, (null)
 movl $1, (null)
 cmovne (null), (null)
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), (null)
 movq $_gp, %rbx
 addq $20, %rbx
 movl (%rbx), (null)
 cmpl (null), (null)
 movl $0, (null)
 movl $1, (null)
 cmovg (null), (null)
 movl (null), %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), (null)
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), (null)
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), (null)
 subl (null), %edx
 movq $_gp, %rbx
 addq $16, %rbx
 movl (%rbx), (null)
 cmpl %edx, (null)
 movl $0, (null)
 movl $1, (null)
 cmovg (null), (null)
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %edx
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), (null)
 movq $_gp, %rbx
 addq $20, %rbx
 movl (%rbx), (null)
 addl %edx, %edx
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %edx
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), (null)
 movq $_gp, %rbx
 addq $20, %rbx
 movl (%rbx), (null)
 addl %edx, %edx
 cmpl %edx, %edx
 movl $0, %edx
 movl $1, %edx
 cmovne %edx, %edx
 movl %edx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 leave
 ret
