	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.int_rformat: .string "%d"
	.comm _gp, 8, 4
.string_const0: .string "Enter a:"
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
	addq $0, %rbx
	movl $.int_rformat, %edi
	movl %ebx, %esi
	movl $0, %eax
	call scanf
	movq $_gp,%rbx
	addq $0, %rbx
	movl (%rbx), %ecx
	movl $-1 , %ebx
	testl %ecx, %ebx
	je label0
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
	movl %ecx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	jmp label1
label0: nop
	movq $_gp,%rbx
	addq $4, %rbx
	movq $_gp,%rcx
	addq $0, %rcx
	movl (%rcx), %r8d
	movl %r8d, (%rbx)
	movq $_gp,%rbx
	addq $4, %rbx
	movl (%rbx), %ecx
	movl %ecx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
label1: nop
	leave
	ret
