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
 movl $.string_const2, %esi
 movl $0, %eax
 movl $.str_wformat, %edi
 call printf
 movl $.string_const3, %esi
 movl $0, %eax
 movl $.str_wformat, %edi
 call printf
 movl $.string_const4, %esi
 movl $0, %eax
 movl $.str_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %ecx
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %r8d
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r9d
 addl %r8d, %r9d
 cmpl %r9d, %ecx
 movl $0, %ecx
 movl $1, %r8d
 cmovl %r8d, %ecx
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), %r8d
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %r9d
 cmpl %r8d, %r9d
 movl $0, %r9d
 movl $1, %r10d
 cmovne %r10d, %r9d
 movl $1, %r8d
 xorl %r8d, %r9d
 andl %ecx, %r9d
 movq $_gp, %rbx
 addq $20, %rbx
 movl %r9d, (%rbx)
 movq $_gp, %rbx
 addq $20, %rbx
 movl (%rbx), %ecx
 movl %ecx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), %ecx
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r8d
 imull %ecx, %r8d
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %ecx
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %r9d
 imull %ecx, %r9d
 cmpl %r9d, %r8d
 movl $0, %r8d
 movl $1, %ecx
 cmovg %ecx, %r8d
 movl $1, %ecx
 movq $_gp, %rbx
 addq $16, %rbx
 movl (%rbx), %r9d
 cmpl %r9d, %ecx
 movl $0, %ecx
 movl $1, %r10d
 cmovle %r10d, %ecx
 orl %r8d, %ecx
 movl %ecx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %ecx
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r8d
 imull %ecx, %r8d
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %ecx
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %r9d
 addl %ecx, %r9d
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %ecx
 addl %r9d, %ecx
 cmpl %ecx, %r8d
 movl $0, %r8d
 movl $1, %r9d
 cmovg %r9d, %r8d
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), %ecx
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %r9d
 cmpl %ecx, %r9d
 movl $0, %r9d
 movl $1, %r10d
 cmovne %r10d, %r9d
 andl %r8d, %r9d
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %ecx
 movq $_gp, %rbx
 addq $20, %rbx
 movl (%rbx), %r8d
 cmpl %r8d, %ecx
 movl $0, %ecx
 movl $1, %r10d
 cmovg %r10d, %ecx
 orl %r9d, %ecx
 movl %ecx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %ecx
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %r8d
 movl %r8d, %ecx
 movl %ecx, %eax
 cdq
 idivl %ecx
 movl %eax, %r8d
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), %ecx
 subl %ecx, %r8d
 movq $_gp, %rbx
 addq $16, %rbx
 movl (%rbx), %ecx
 cmpl %ecx, %r8d
 movl $0, %r8d
 movl $1, %r9d
 cmovg %r9d, %r8d
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %ecx
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r9d
 movq $_gp, %rbx
 addq $20, %rbx
 movl (%rbx), %r10d
 imull %r9d, %r10d
 addl %ecx, %r10d
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %ecx
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %r9d
 movq $_gp, %rbx
 addq $20, %rbx
 movl (%rbx), %r11d
 imull %r9d, %r11d
 addl %ecx, %r11d
 cmpl %r10d, %r11d
 movl $0, %r11d
 movl $1, %ecx
 cmovne %ecx, %r11d
 andl %r8d, %r11d
 movl %r11d, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 leave
 ret
