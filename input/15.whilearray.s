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
	movq $_gp,%rbx
	addq $0, %rbx
	movl $0, %ecx
	movl %ecx, (%rbx)
label0: nop
	movq $_gp,%rbx
	addq $0, %rbx
	movl (%rbx), %ecx
	movl $10, %ebx
	cmpl %ebx, %ecx
	movl $0, %ecx
	movl $1, %ebx
	cmovl %ebx, %ecx
	movl $-1 , %ebx
	testl %ecx, %ebx
	je label1
	movq $_gp,%r8
	addq $0, %r8
	movl (%r8), %r9d
	movq $_gp,%r8
	addq $4, %r8
	imull %r9d, $4
	addq %r8d, %r9d
	movq $_gp,%r9
	addq $0, %r9
	movl (%r9), %r10d
	movl %r10d, (%r8)
	movq $_gp,%r8
	addq $0, %r8
	movq $_gp,%r9
	addq $0, %r9
	movl (%r9), %r10d
	movl $1, %r9d
	addl %r9d, %r10d
	movl %r10d, (%r8)
	jmp label0
label1: nop
	movq $_gp,%r8
	addq $0, %r8
	movl $0, %r9d
	movl %r9d, (%r8)
label2: nop
	movq $_gp,%r8
	addq $0, %r8
	movl (%r8), %r9d
	movl $10, %r8d
	cmpl %r8d, %r9d
	movl $0, %r9d
	movl $1, %r8d
	cmovl %r8d, %r9d
	movl $-1 , %r8d
	testl %r9d, %r8d
	je label3
	movq $_gp,%r10
	addq $0, %r10
	movl (%r10), %r11d
	movl $5, %r10d
	cmpl %r10d, %r11d
	movl $0, %r11d
	movl $1, %r10d
	cmovl %r10d, %r11d
	movl $-1 , %r10d
	testl %r11d, %r10d
	je label4
	movq $_gp,%r12
	addq $0, %r12
	movl (%r12), %r13d
	movq $_gp,%r12
	addq $4, %r12
	imull %r13d, $4
	addq %r12d, %r13d
	movl (%r12), %r13d
	movl %r13d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	jmp label5
label4: nop
	movl $0, %r12d
	movl %r12d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
label5: nop
	movq $_gp,%r12
	addq $0, %r12
	movq $_gp,%r13
	addq $0, %r13
	movl (%r13), %r14d
	movl $1, %r13d
	addl %r13d, %r14d
	movl %r14d, (%r12)
	jmp label2
label3: nop
	leave
	ret
