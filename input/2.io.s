 .section        .rodata
.int_wformat: .string "%d\n"
.str_wformat: .string "%s\n"
.int_rformat: .string "%d"
input an integer:0
1
3
.string_const0:    .string "input an integer:"
  .comm _gp, 4, 4
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
 leave
 ret
