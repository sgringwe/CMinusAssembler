	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.int_rformat: .string "%d"
	.comm _gp, 404, 4
.string_const0: .string "enter i ="
.string_const1: .string "out of bound!"
	.text
	.globl main
	.type main,@function
main:	nop
	pushq %rbp
	movq %rsp, %rbp
	movl $.string_const0, %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.str_wformat, %edi
	call printf
	movq $_gp,%rbx
	addq $400, %rbx
	movl $.int_rformat, %edi
	movl %ebx, %esi
	movl $0, %eax
	call scanf
	movq $_gp,%rbx
	addq $400, %rbx
	movl (%rbx), %ecx
	movl $0, %ebx
	cmpl %ebx, %ecx
	movl $0, %ecx
	movl $1, %ebx
	cmovl %ebx, %ecx
	movq $_gp,%rbx
	addq $400, %rbx
	movl (%rbx), %r8d
	movl $100, %ebx
	cmpl %ebx, %r8d
	movl $0, %r8d
	movl $1, %ebx
	cmovge %ebx, %r8d
	orl %r8d, %ecx
	movl $-1 , %ebx
	testl %ecx, %ebx
	je label0
	movl $.string_const1, %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.str_wformat, %edi
	call printf
	jmp label1
label0: nop
	movq $_gp,%rbx
	addq $400, %rbx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $0, %rbx
	movl $4, %r8d
	imull %r8d, %ecx
	addl %ecx, %ebx
	movq $_gp,%rcx
	addq $400, %rcx
	movl (%rcx), %r8d
	movl $2, %ecx
	imull %ecx, %r8d
	movl %r8d, (%rbx)
	movl $5, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $5, %ebx
	movl %ebx, (%rcx)
	movq $_gp,%rbx
	addq $400, %rbx
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
label1: nop
	leave
	ret
