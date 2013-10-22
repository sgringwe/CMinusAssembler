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
	movq $_gp,%r8
	addq $4, %r8
	movl $0, %r9d
	movl %r9d, (%r8)
label2: nop
	movq $_gp,%r8
	addq $4, %r8
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
	movq $_gp,%r10
	addq $4, %r10
	movl (%r10), %r12d
	addl %r12d, %r11d
	movl %r11d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq $_gp,%r10
	addq $4, %r10
	movq $_gp,%r11
	addq $4, %r11
	movl (%r11), %r12d
	movl $2, %r11d
	addl %r11d, %r12d
	movl %r12d, (%r10)
	jmp label2
label3: nop
	movq $_gp,%r10
	addq $8, %r10
	movl $0, %r11d
	movq $_gp,%r12
	addq $4, %r12
	movl (%r12), %r13d
	subl %r13d, %r11d
	movl %r11d, (%r10)
label4: nop
	movq $_gp,%r10
	addq $8, %r10
	movl (%r10), %r11d
	movq $_gp,%r10
	addq $4, %r10
	movl (%r10), %r12d
	cmpl %r12d, %r11d
	movl $0, %r11d
	movl $1, %r10d
	cmovne %r10d, %r11d
	movl $-1 , %r10d
	testl %r11d, %r10d
	je label5
	movq $_gp,%r12
	addq $8, %r12
	movl (%r12), %r13d
	movl %r13d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq $_gp,%r12
	addq $8, %r12
	movq $_gp,%r13
	addq $8, %r13
	movl (%r13), %r14d
	movl $1, %r13d
	addl %r13d, %r14d
	movl %r14d, (%r12)
	jmp label4
label5: nop
	movq $_gp,%r12
	addq $0, %r12
	movq $_gp,%r13
	addq $0, %r13
	movl (%r13), %r14d
	movl $10, %r13d
	addl %r13d, %r14d
	movl %r14d, (%r12)
	jmp label0
label1: nop
	leave
	ret
