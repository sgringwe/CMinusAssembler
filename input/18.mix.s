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
 movl (%rbx), %ebx
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %ecx
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %edx
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), %r8d
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %r9d
 movq $_gp, %rbx
 addq $20, %rbx
 movl %ebx, (%rbx)
 movq $_gp, %rbx
 addq $20, %rbx
 movl (%rbx), %ebx
 movl %ebx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), %r10d
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r11d
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %r12d
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %r13d
 movl $1, %r14d
 movq $_gp, %rbx
 addq $16, %rbx
 movl (%rbx), (null)
 movl %ebx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), (null)
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), (null)
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), (null)
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), (null)
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), (null)
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), (null)
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), (null)
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), (null)
 movq $_gp, %rbx
 addq $20, %rbx
 movl (%rbx), (null)
 movl %ebx, %esi
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
 movq $_gp, %rbx
 addq $16, %rbx
 movl (%rbx), (null)
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), (null)
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), (null)
 movq $_gp, %rbx
 addq $20, %rbx
 movl (%rbx), (null)
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), (null)
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), (null)
 movq $_gp, %rbx
 addq $20, %rbx
 movl (%rbx), (null)
 movl %ebx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 leave
 ret
