 .section        .rodata
.int_wformat: .string "%d\n"
.str_wformat: .string "%s\n"
.int_rformat: .string "%d"
i = j = k = l = m = 5
1
0
0
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
 movl $.string_const0, %s
 movl %eax, %ebx
 movl $0, %ecx
 movl $.str_wformat, %edi
 call printf
 movl $.string_const1, %s
 movl %edx, %esi
 movl $0, %edi
 movl $.str_wformat, %edi
 call printf
 movl $.string_const2, %s
 movl %r8d, %r9d
 movl $0, %r10d
 movl $.str_wformat, %edi
 call printf
 movl $.string_const3, %s
 movl %r11d, %r12d
 movl $0, %r13d
 movl $.str_wformat, %edi
 call printf
 movl $.string_const4, %s
 movl %r14d, (null)
 movl $0, (null)
 movl $.str_wformat, %edi
 call printf
 leave
 ret
