	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.int_rformat: .string "%d"
	.comm _gp, 8, 4
	.text
	.globl main
	.type main,@function
main:	nop
	pushq %rbp
	movq %rsp, %rbp
	movq $_gp,%rbx
	addq $0, %rbx
	movl $1, %ecx
	movl %ecx, (%rbx)
	movq $_gp,%rbx
	addq $4, %rbx
	movl $0, %ecx
	movl %ecx, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl (%rbx), %ecx
	movl $10, %ebx
	cmpl %ebx, %ecx
	movl $0, %ecx
	movl $1, %ebx
	cmovle %ebx, %ecx
	movq $_gp,%rbx
	addq $0, %rbx
	movl (%rbx), %r8d
	movl %r8d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq $_gp,%rbx
	addq $4, %rbx
	movq $_gp,%r8
	addq $4, %r8
	movl (%r8), %r9d
	movq $_gp,%r8
	addq $0, %r8
	movl (%r8), %r10d
	addl %r10d, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movq $_gp,%r8
	addq $0, %r8
	movl (%r8), %r9d
	movl $1, %r8d
	addl %r8d, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $4, %rbx
	movl (%rbx), %r8d
	movl %r8d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	leave
	ret
