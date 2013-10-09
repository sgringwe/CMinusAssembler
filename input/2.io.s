 .section        .rodata
.int_wformat: .string "%d\n"
.str_wformat: .string "%s\n"
.int_rformat: .string "%d"
.string_const0:    .string "input an integer:"
  .comm _gp, 4, 4
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
 movq $_gp, %ebx
 addq $0, %ebx
 movl (%ebx), %edx
 movl %edx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movl $1, %ebx
 movl %ebx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movl $1, %r8d
 movl $2, %r9d
 movl %r12d, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 leave
 ret
