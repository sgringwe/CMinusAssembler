	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.int_rformat: .string "%d"
	.comm _gp, 40, 4
	.text
	.globl main
	.type main,@function
main:	nop
	pushq %rbp
	movq %rsp, %rbp
	movl $3, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
	movl $4, %r8d
	movl %r8d, (%rcx)
	movl $3, %ecx
	movq $_gp,%r8
	addq $0, %r8
	imull %ecx, $4
	addq %r8d, %ecx
	movl (%r8), %r9d
	movl %r9d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	leave
	ret
