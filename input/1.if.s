emitTest: Expression register: 4
	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.int_rformat: .string "%d"
	.comm _gp, 4, 4
.string_const0: .string "enter a:"
.string_const1: .string "complete!"
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
	movl $0, %ebx
	cmpl %ebx, %ecx
	movl $0, %ecx
	movl $1, %ebx
	cmovne %ebx, %ecx
	movl $-1 %ebx
	testl %ecx %ebx
	je .label0
	movl $1, %r8d
	movl %r8d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
label0: nop
	movl $.string_const1, %r8d
	movl %r8d, %esi
	movl $0, %eax
	movl $.str_wformat, %edi
	call printf
	leave
	ret
