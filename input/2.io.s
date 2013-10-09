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
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), %r8d
 movl %r8d, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movl $1, %r8d
 movl %r8d, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movl $1, %r8d
 movl $2, %r9d
 addl %r8d, %r9d
 movl %r9d, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 leave
 ret
