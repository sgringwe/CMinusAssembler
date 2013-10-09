 .section        .rodata
.int_wformat: .string "%d\n"
.str_wformat: .string "%s\n"
.int_rformat: .string "%d"
.string_const0:    .string "Hello world!"
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
 
 # load a into ebx
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), %ebx

# load 30 into ecx and then into assign ebx to be 30 (a = 30)
 movl $30, %ecx
 movl %ecx, (%ebx)

 # load a into ebx
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), %ebx

 # set esi (arg2) to be ebx (30) and print
 movl %ebx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movl $20, %ecx
 movl %ecx, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 leave
 ret
