 .section        .rodata
.int_wformat: .string "%d\n"
.str_wformat: .string "%s\n"
.int_rformat: .string "%d"
.string_const0:    .string "Your grader"
.string_const1:    .string "will put"
.string_const2:    .string "a random"
.string_const3:    .string "string here"
  .comm _gp, 0, 4
 .text
 .globl main
 .type main,@function
main:   nop
 pushq %rbp
 movq %rsp, %rbp
 movl $.string_const0, %eax
 movl %eax, %ebx
 movl $0, %ecx
 movl $.str_wformat, %edi
 call printf
 movl $.string_const1, %edx
 movl %edx, %esi
 movl $0, %edi
 movl $.str_wformat, %edi
 call printf
 movl $.string_const2, %r8d
 movl %r8d, %r9d
 movl $0, %r10d
 movl $.str_wformat, %edi
 call printf
 movl $.string_const3, %r11d
 movl %r11d, %r12d
 movl $0, %r13d
 movl $.str_wformat, %edi
 call printf
 leave
 ret
