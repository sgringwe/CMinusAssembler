	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.int_rformat: .string "%d"
	.comm _gp, 64, 4
	.text
	.globl main
	.type main,@function
main:	nop
	pushq %rbp
	movq %rsp, %rbp
	movq $_gp,%rbx
	addq $0, %rbx
	movl $3, %ecx
	movl %ecx, (%rbx)
	movq $_gp,%rbx
	addq $4, %rbx
	movl $4, %ecx
	movl %ecx, (%rbx)
	movq $_gp,%rbx
	addq $8, %rbx
	movl $5, %ecx
	movl %ecx, (%rbx)
	movq $_gp,%rbx
	addq $52, %rbx
	movl $13, %ecx
	movl %ecx, (%rbx)
	movq $_gp,%rbx
	addq $56, %rbx
	movl $14, %ecx
	movl %ecx, (%rbx)
	movq $_gp,%rbx
	addq $60, %rbx
	movl $15, %ecx
	movl %ecx, (%rbx)
	movq $_gp,%rbx
	addq $4, %rbx
	movl $0, %ecx
	movq $_gp,%r8
	addq $0, %r8
	movl (%r8), %r9d
	subl %r9d, %ecx
	movl %ecx, (%rbx)
	movq $_gp,%rbx
	addq $4, %rbx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $12, %rbx
	imull %r8d, %ecx
	addl %ecx, %ebx
	movl (%rbx), %ecx
	movl %ecx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movl $11, %ebx
	movq $_gp,%rcx
	addq $12, %rcx
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl (%rcx), %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq $_gp,%rbx
	addq $60, %rbx
	movl (%rbx), %ecx
	movl %ecx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movl $12, %ebx
	movq $_gp,%rcx
	addq $12, %rcx
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $100, %ebx
	movl %ebx, (%rcx)
	movq $_gp,%rbx
	addq $60, %rbx
	movl (%rbx), %ecx
	movl %ecx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	leave
	ret
