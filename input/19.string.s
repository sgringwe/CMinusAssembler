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
 movl %eax, %esi
 movl $0, %eax
 movl $.str_wformat, %edi
 call printf
 movl $.string_const1, %eax
 movl %eax, %esi
 movl $0, %eax
 movl $.str_wformat, %edi
 call printf
 movl $.string_const2, %eax
 movl %eax, %esi
 movl $0, %eax
 movl $.str_wformat, %edi
 call printf
 movl $.string_const3, %eax
 movl %eax, %esi
 movl $0, %eax
 movl $.str_wformat, %edi
 call printf
 leave
 ret
