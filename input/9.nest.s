	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.int_rformat: .string "%d"
	.comm _gp, 12, 4
	.text
	.globl main
	.type main,@function
main:	nop
	pushq %rbp
	movq %rsp, %rbp
	movq $_gp,%rbx
	addq $0, %rbx
	movl $0, %ecx
	movl %ecx, (%rbx)
label0: nop
	movq $_gp,%rbx
	addq $0, %rbx
	movl (%rbx), %ecx
	movl $50, %ebx
	cmpl %ebx, %ecx
	movl $0, %ecx
	movl $1, %ebx
	cmovl %ebx, %ecx
	movl $-1 , %ebx
	testl %ecx, %ebx
	je label1
	movq $_gp,%rbx
	addq $4, %rbx
	movl $0, %ecx
	movl %ecx, (%rbx)
label2: nop
	movq $_gp,%rbx
	addq $4, %rbx
	movl (%rbx), %ecx
	movl $10, %ebx
	cmpl %ebx, %ecx
	movl $0, %ecx
	movl $1, %ebx
	cmovl %ebx, %ecx
	movl $-1 , %ebx
	testl %ecx, %ebx
	je label3
	movq $_gp,%rbx
	addq $0, %rbx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $4, %rbx
	movl (%rbx), %r8d
	addl %r8d, %ecx
	movl %ecx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq $_gp,%rbx
	addq $4, %rbx
	movq $_gp,%rcx
	addq $4, %rcx
	movl (%rcx), %r8d
	movl $2, %ecx
	addl %ecx, %r8d
	movl %r8d, (%rbx)
	jmp label2
label3: nop
	movq $_gp,%rbx
	addq $8, %rbx
	movl $0, %ecx
	movq $_gp,%r8
	addq $4, %r8
	movl (%r8), %r9d
	subl %r9d, %ecx
	movl %ecx, (%rbx)
label4: nop
	movq $_gp,%rbx
	addq $8, %rbx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $4, %rbx
	movl (%rbx), %r8d
	cmpl %r8d, %ecx
	movl $0, %ecx
	movl $1, %ebx
	cmovne %ebx, %ecx
	movl $-1 , %ebx
	testl %ecx, %ebx
	je label5
	movq $_gp,%rbx
	addq $8, %rbx
	movl (%rbx), %ecx
	movl %ecx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq $_gp,%rbx
	addq $8, %rbx
	movq $_gp,%rcx
	addq $8, %rcx
	movl (%rcx), %r8d
	movl $1, %ecx
	addl %ecx, %r8d
	movl %r8d, (%rbx)
	jmp label4
label5: nop
	movq $_gp,%rbx
	addq $0, %rbx
	movq $_gp,%rcx
	addq $0, %rcx
	movl (%rcx), %r8d
	movl $10, %ecx
	addl %ecx, %r8d
	movl %r8d, (%rbx)
	jmp label0
label1: nop
	leave
	ret
