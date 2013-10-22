	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.int_rformat: .string "%d"
	.comm _gp, 412, 4
	.text
	.globl main
	.type main,@function
main:	nop
	pushq %rbp
	movq %rsp, %rbp
	movq $_gp,%rbx
	addq $200, %rbx
	movl $0, %ecx
	movl %ecx, (%rbx)
label0: nop
	movq $_gp,%rbx
	addq $200, %rbx
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
	addq $200, %rbx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $0, %rbx
	movl $4, %r8d
	imull %r8d, %ecx
	addl %ecx, %ebx
	movl $0, %ecx
	movl %ecx, (%rbx)
	movq $_gp,%rbx
	addq $200, %rbx
	movq $_gp,%rcx
	addq $200, %rcx
	movl (%rcx), %r8d
	movl $1, %ecx
	addl %ecx, %r8d
	movl %r8d, (%rbx)
	jmp label0
label1: nop
	movq $_gp,%rbx
	addq $204, %rbx
	movl $0, %ecx
	movl %ecx, (%rbx)
label2: nop
	movq $_gp,%rbx
	addq $204, %rbx
	movl (%rbx), %ecx
	movl $50, %ebx
	cmpl %ebx, %ecx
	movl $0, %ecx
	movl $1, %ebx
	cmovl %ebx, %ecx
	movl $-1 , %ebx
	testl %ecx, %ebx
	je label3
	movq $_gp,%rbx
	addq $204, %rbx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $212, %rbx
	movl $4, %r8d
	imull %r8d, %ecx
	addl %ecx, %ebx
	movq $_gp,%rcx
	addq $204, %rcx
	movl (%rcx), %r8d
	movl $50, %ecx
	addl %ecx, %r8d
	movl %r8d, (%rbx)
	movq $_gp,%rbx
	addq $204, %rbx
	movq $_gp,%rcx
	addq $204, %rcx
	movl (%rcx), %r8d
	movl $1, %ecx
	addl %ecx, %r8d
	movl %r8d, (%rbx)
	jmp label2
label3: nop
	movq $_gp,%rbx
	addq $200, %rbx
	movl $0, %ecx
	movl %ecx, (%rbx)
	movq $_gp,%rbx
	addq $208, %rbx
	movl $0, %ecx
	movl %ecx, (%rbx)
label4: nop
	movq $_gp,%rbx
	addq $200, %rbx
	movl (%rbx), %ecx
	movl $100, %ebx
	cmpl %ebx, %ecx
	movl $0, %ecx
	movl $1, %ebx
	cmovl %ebx, %ecx
	movl $-1 , %ebx
	testl %ecx, %ebx
	je label5
	movq $_gp,%rbx
	addq $200, %rbx
	movl (%rbx), %ecx
	movl $50, %ebx
	cmpl %ebx, %ecx
	movl $0, %ecx
	movl $1, %ebx
	cmovl %ebx, %ecx
	movl $-1 , %ebx
	testl %ecx, %ebx
	je label6
	movq $_gp,%rbx
	addq $208, %rbx
	movq $_gp,%rcx
	addq $208, %rcx
	movl (%rcx), %r8d
	movq $_gp,%rcx
	addq $200, %rcx
	movl (%rcx), %r9d
	movq $_gp,%rcx
	addq $0, %rcx
	movl $4, %r10d
	imull %r10d, %r9d
	addl %r9d, %ecx
	movl (%rcx), %r9d
	addl %r9d, %r8d
	movl %r8d, (%rbx)
	jmp label7
label6: nop
	movq $_gp,%rbx
	addq $208, %rbx
	movq $_gp,%rcx
	addq $208, %rcx
	movl (%rcx), %r8d
	movq $_gp,%rcx
	addq $200, %rcx
	movl (%rcx), %r9d
	movl $50, %ecx
	subl %ecx, %r9d
	movq $_gp,%rcx
	addq $212, %rcx
	movl $4, %r10d
	imull %r10d, %r9d
	addl %r9d, %ecx
	movl (%rcx), %r9d
	addl %r9d, %r8d
	movl %r8d, (%rbx)
label7: nop
	movq $_gp,%rbx
	addq $200, %rbx
	movq $_gp,%rcx
	addq $200, %rcx
	movl (%rcx), %r8d
	movl $1, %ecx
	addl %ecx, %r8d
	movl %r8d, (%rbx)
	jmp label4
label5: nop
	movq $_gp,%rbx
	addq $208, %rbx
	movl (%rbx), %ecx
	movl %ecx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
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
	movl $10, %ebx
	movq $_gp,%rcx
	addq $212, %rcx
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
