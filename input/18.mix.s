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
 call pri orq %ecx, (null)
 movl (null), %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 leave
 ret
