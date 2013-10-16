	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.int_rformat: .string "%d"
	.comm _gp, 28, 4
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
	addq $0, %rbx
	movl $4, %ecx
	movl %ecx, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl $5, %ecx
	movl %ecx, (%rbx)
	movq $_gp,%rbx
	addq $16, %rbx
	movl $13, %ecx
	movl %ecx, (%rbx)
	movq $_gp,%rbx
	addq $20, %rbx
	movl $14, %ecx
	movl %ecx, (%rbx)
	movq $_gp,%rbx
	addq $24, %rbx
	movl $15, %ecx
	movl %ecx, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl $0, %ecx
	movq $_gp,%r8
	addq $0, %r8
	movl (%r8), %r9d
	subl %r9d, %ecx
	movl %ecx, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl (%rbx), %ecx
	movl (%rbx), %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movl $11, %ebx
	movl (%rbx), %r8d
	movl %r8d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq $_gp,%rbx
	addq $24, %rbx
	movl (%rbx), %r8d
	movl %r8d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movl $12, %ebx
	movl $100, %r8d
	movl %r8d, (%rbx)
	movq $_gp,%rbx
	addq $24, %rbx
	movl (%rbx), %r8d
	movl %r8d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	leave
	ret
