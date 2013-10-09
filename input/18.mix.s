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
 movq $_gp, %rbx
 addq $0, %rbx
 movl $.int_rformat, %edi
 movl %ebx, %esi
 movl $0, %eax
 call scanf
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), %r8d
 movl %eax, %r8d
 movl $.string_const1, %esi
 movl $0, %eax
 movl $.str_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $4, %rbx
 movl $.int_rformat, %edi
 movl %ebx, %esi
 movl $0, %eax
 call scanf
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %r8d
 movl %eax, %r8d
 movl $.string_const2, %esi
 movl $0, %eax
 movl $.str_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $8, %rbx
 movl $.int_rformat, %edi
 movl %ebx, %esi
 movl $0, %eax
 call scanf
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %r8d
 movl %eax, %r8d
 movl $.string_const3, %esi
 movl $0, %eax
 movl $.str_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $12, %rbx
 movl $.int_rformat, %edi
 movl %ebx, %esi
 movl $0, %eax
 call scanf
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r8d
 movl %eax, %r8d
 movl $.string_const4, %esi
 movl $0, %eax
 movl $.str_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $16, %rbx
 movl $.int_rformat, %edi
 movl %ebx, %esi
 movl $0, %eax
 call scanf
 movq $_gp, %rbx
 addq $16, %rbx
 movl (%rbx), %r8d
 movl %eax, %r8d
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %r8d
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %r9d
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r10d
 addl %r9d, %r10d
 cmpl %r10d, %r8d
 movl $0, %r8d
 movl $1, %r9d
 cmovl %r9d, %r8d
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), %r9d
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %r10d
 cmpl %r9d, %r10d
 movl $0, %r10d
 movl $1, %r11d
 cmovne %r11d, %r10d
 movl $1, %r9d
 xorl %r9d, %r10d
 andl %r8d, %r10d
 movq $_gp, %rbx
 addq $20, %rbx
 movl %r10d, (%rbx)
 movq $_gp, %rbx
 addq $20, %rbx
 movl (%rbx), %r8d
 movl %r8d, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), %r8d
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r9d
 imull %r8d, %r9d
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %r8d
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %r10d
 imull %r8d, %r10d
 cmpl %r10d, %r9d
 movl $0, %r9d
 movl $1, %r8d
 cmovg %r8d, %r9d
 movl $1, %r8d
 movq $_gp, %rbx
 addq $16, %rbx
 movl (%rbx), %r10d
 cmpl %r10d, %r8d
 movl $0, %r8d
 movl $1, %r11d
 cmovle %r11d, %r8d
 orl %r9d, %r8d
 movl %r8d, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %r8d
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r9d
 imull %r8d, %r9d
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %r8d
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %r10d
 addl %r8d, %r10d
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r8d
 addl %r10d, %r8d
 cmpl %r8d, %r9d
 movl $0, %r9d
 movl $1, %r10d
 cmovg %r10d, %r9d
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), %r8d
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %r10d
 cmpl %r8d, %r10d
 movl $0, %r10d
 movl $1, %r11d
 cmovne %r11d, %r10d
 andl %r9d, %r10d
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r8d
 movq $_gp, %rbx
 addq $20, %rbx
 movl (%rbx), %r9d
 cmpl %r9d, %r8d
 movl $0, %r8d
 movl $1, %r11d
 cmovg %r11d, %r8d
 orl %r10d, %r8d
 movl %r8d, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r8d
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %r9d
 movl %r9d, %ecx
 movl %r8d, %eax
 cdq
 idivl %ecx
 movl %eax, %r9d
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), %r8d
 subl %r8d, %r9d
 movq $_gp, %rbx
 addq $16, %rbx
 movl (%rbx), %r8d
 cmpl %r8d, %r9d
 movl $0, %r9d
 movl $1, %r10d
 cmovg %r10d, %r9d
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %r8d
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r10d
 movq $_gp, %rbx
 addq $20, %rbx
 movl (%rbx), %r11d
 imull %r10d, %r11d
 addl %r8d, %r11d
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r8d
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %r10d
 movq $_gp, %rbx
 addq $20, %rbx
 movl (%rbx), %r12d
 imull %r10d, %r12d
 addl %r8d, %r12d
 cmpl %r11d, %r12d
 movl $0, %r12d
 movl $1, %r8d
 cmovne %r8d, %r12d
 andl %r9d, %r12d
 movl %r12d, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 leave
 ret
