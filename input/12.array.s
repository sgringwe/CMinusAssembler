	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.int_rformat: .string "%d"
	.comm _gp, 44, 4
	.text
	.globl main
	.type main,@function
main:	nop
	pushq %rbp
	movq %rsp, %rbp
	movl $3, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $4, %ebx
	movl %ebx, (%rcx)
	movl $3, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl (%rcx), %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq $_gp,%rbx
	addq $40, %rbx
	movl $3, %ecx
	movl %ecx, (%rbx)
	movq $_gp,%rbx
	addq $40, %rbx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $0, %rbx
	movl $4, %r8d
	imull %r8d, %ecx
	addl %ecx, %ebx
	movl $7, %ecx
	movl %ecx, (%rbx)
	movq $_gp,%rbx
	addq $40, %rbx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $0, %rbx
	movl $4, %r8d
	imull %r8d, %ecx
	addl %ecx, %ebx
	movl (%rbx), %ecx
	movl %ecx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq $_gp,%rbx
	addq $40, %rbx
	movq $_gp,%rcx
	addq $40, %rcx
	movl (%rcx), %r8d
	movl $2, %ecx
	addl %ecx, %r8d
	movl %r8d, (%rbx)
	movq $_gp,%rbx
	addq $40, %rbx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $0, %rbx
	movl $4, %r8d
	imull %r8d, %ecx
	addl %ecx, %ebx
	movl $22, %ecx
	movl %ecx, (%rbx)
	movl $5, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl (%rcx), %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	leave
	ret
