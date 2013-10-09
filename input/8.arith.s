 .section        .rodata
.int_wformat: .string "%d\n"
.str_wformat: .string "%s\n"
.int_rformat: .string "%d"
  .comm _gp, 24, 4
 .text
 .globl main
 .type main,@function
main:   nop
 pushq %rbp
 movq %rsp, %rbp
 movl $1, %r8d
 movq $_gp, %rbx
 addq $0, %rbx
 movl %r8d, (%rbx)
 movl $2, %r8d
 movq $_gp, %rbx
 addq $4, %rbx
 movl %r8d, (%rbx)
 movl $3, %r8d
 movq $_gp, %rbx
 addq $8, %rbx
 movl %r8d, (%rbx)
 movl $4, %r8d
 movq $_gp, %rbx
 addq $12, %rbx
 movl %r8d, (%rbx)
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), %r8d
 movl $7, %r9d
 addl %r8d, %r9d
 movq $_gp, %rbx
 addq $16, %rbx
 movl %r9d, (%rbx)
 movq $_gp, %rbx
 addq $16, %rbx
 movl (%rbx), %r8d
 movl %r8d, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r8d
 movl $5, %r9d
 subl %r9d, %r8d
 movq $_gp, %rbx
 addq $20, %rbx
 movl %r8d, (%rbx)
 movq $_gp, %rbx
 addq $20, %rbx
 movl (%rbx), %r8d
 movl %r8d, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %r8d
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %r9d
 imull %r8d, %r9d
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r8d
 imull %r9d, %r8d
 movl %r8d, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %r8d
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %r9d
 imull %r8d, %r9d
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r8d
 subl %r8d, %r9d
 movl %r9d, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), %r8d
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %r9d
 addl %r8d, %r9d
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %r8d
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r10d
 imull %r8d, %r10d
 addl %r9d, %r10d
 movl %r10d, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %r8d
 movq $_gp, %rbx
 addq $12, %rbx
 movl (%rbx), %r9d
 imull %r8d, %r9d
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %r8d
 movl %r8d, %ecx
 movl %r9d, %eax
 cdq
 idivl %ecx
 movl %eax, %r8d
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), %r9d
 subl %r9d, %r8d
 movl %r8d, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), %r8d
 movq $_gp, %rbx
 addq $4, %rbx
 movl (%rbx), %r9d
 addl %r8d, %r9d
 movq $_gp, %rbx
 addq $8, %rbx
 movl (%rbx), %r8d
 movq $_gp, %rbx
 addq $0, %rbx
 movl (%rbx), %r10d
 movq $_gp, %rbx
 addq $16, %rbx
 movl (%rbx), %r11d
 imull %r10d, %r11d
 addl %r8d, %r11d
 imull %r9d, %r11d
 movq $_gp, %rbx
 addq $20, %rbx
 movl (%rbx), %r8d
 movl %r8d, %ecx
 movl %r11d, %eax
 cdq
 idivl %ecx
 movl %eax, %r8d
 movl %r8d, %esi
 movl $0, %eax
 movl $.int_wformat, %edi
 call printf
 leave
 ret
