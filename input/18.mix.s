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
 movq $_gp, %ebx
 addq $0, %ebx
 movl (%ebx), %ecx
 movl $.string_const1, %esi
 movl $0, %eax
 movl $.str_wformat, %edi
 call printf
 movq $_gp, %ebx
 addq $4, %ebx
 movl (%ebx), %edx
 movl $.string_const2, %esi
 movl $0, %eax
 movl $.str_wformat, %edi
 call printf
 movq $_gp, %ebx
 addq $8, %ebx
 movl (%ebx), %r8d
 movl $.string_const3, %esi
 movl $0, %eax
 movl $.str_wformat, %edi
 call printf
 movq $_gp, %ebx
 addq $12, %ebx
 movl (%ebx), %r9d
 movl $.string_const4, %esi
 movl $0, %eax
 movl $.str_wformat, %edi
 call printf
 movq $_gp, %ebx
 addq $16, %ebx
 movl (%ebx), %r10d
 movq $_gp, %ebx
 addq $20, %ebx
 movl (%ebx), %r11d
 movq $_gp, %ebx
 addq $8, %ebx
 movl (%ebx), %r12d
 movq $_gp, %ebx
 addq $4, %ebx
 movl (%ebx), %r13d
 movq $_gp, %ebx
 addq $12, %ebx
 movl (%ebx), %r14d
 movq $_gp, %ebx
 addq $0, %ebx
 movl (%ebx), (null)
 movq $_gp, %ebx
 addq $8, %ebx
 movl (%ebx), (null)
 movl %ecx, (%r11d)
 movq $_gp, %ebx
 addq $20, %ebx
 movl (%ebx), %ecx
 movl %ecx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %ebx
 addq $0, %ebx
 movl (%ebx), %r11d
 movq $_gp, %ebx
 addq $12, %ebx
 movl (%ebx), (null)
 movq $_gp, %ebx
 addq $4, %ebx
 movl (%ebx), (null)
 movq $_gp, %ebx
 addq $8, %ebx
 movl (%ebx), (null)
 movl $1, %ebx
 movq $_gp, (null)
 addq $16, (null)
 movl ((null)), (null)
 movl %ebx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, (null)
 addq $8, (null)
 movl ((null)), (null)
 movq $_gp, (null)
 addq $12, (null)
 movl ((null)), (null)
 movq $_gp, (null)
 addq $4, (null)
 movl ((null)), (null)
 movq $_gp, (null)
 addq $8, (null)
 movl ((null)), (null)
 movq $_gp, (null)
 addq $12, (null)
 movl ((null)), (null)
 movq $_gp, (null)
 addq $0, (null)
 movl ((null)), (null)
 movq $_gp, (null)
 addq $4, (null)
 movl ((null)), (null)
 movq $_gp, (null)
 addq $12, (null)
 movl ((null)), (null)
 movq $_gp, (null)
 addq $20, (null)
 movl ((null)), (null)
 movl %ebx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, (null)
 addq $12, (null)
 movl ((null)), (null)
 movq $_gp, (null)
 addq $4, (null)
 movl ((null)), (null)
 movq $_gp, (null)
 addq $0, (null)
 movl ((null)), (null)
 movq $_gp, (null)
 addq $16, (null)
 movl ((null)), (null)
 movq $_gp, (null)
 addq $8, (null)
 movl ((null)), (null)
 movq $_gp, (null)
 addq $12, (null)
 movl ((null)), (null)
 movq $_gp, (null)
 addq $20, (null)
 movl ((null)), (null)
 movq $_gp, (null)
 addq $12, (null)
 movl ((null)), (null)
 movq $_gp, (null)
 addq $8, (null)
 movl ((null)), (null)
 movq $_gp, (null)
 addq $20, (null)
 movl ((null)), (null)
 movl %ebx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 leave
 ret
