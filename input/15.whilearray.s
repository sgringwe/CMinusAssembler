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
	movq $_gp,%rbx
	addq $0, %rbx
	movl (%rbx), %r8d
	movq $_gp,%rbx
	addq $4, %rbx
	imull %r8d, $4
	addl %r8d, %ebx
	movq $_gp,%r8
	addq $0, %r8
	movl (%r8), %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movq $_gp,%r8
	addq $0, %r8
	movl (%r8), %r9d
	movl $1, %r8d
	addl %r8d, %r9d
	movl %r9d, (%rbx)
	jmp label0
label1: nop
	movq $_gp,%rbx
	addq $0, %rbx
	movl $0, %r8d
	movl %r8d, (%rbx)
label2: nop
	movq $_gp,%rbx
	addq $0, %rbx
	movl (%rbx), %r8d
	movl $10, %ebx
	cmpl %ebx, %r8d
	movl $0, %r8d
	movl $1, %ebx
	cmovl %ebx, %r8d
	movl $-1 , %ebx
	testl %r8d, %ebx
	je label3
	movq $_gp,%rbx
	addq $0, %rbx
	movl (%rbx), %r9d
	movl $5, %ebx
	cmpl %ebx, %r9d
	movl $0, %r9d
	movl $1, %ebx
	cmovl %ebx, %r9d
	movl $-1 , %ebx
	testl %r9d, %ebx
	je label4
	movq $_gp,%rbx
	addq $0, %rbx
	movl (%rbx), %r10d
	movq $_gp,%rbx
	addq $4, %rbx
	imull %r10d, $4
	addl %r10d, %ebx
	movl (%rbx), %r10d
	movl %r10d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	jmp label5
label4: nop
	movl $0, %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
label5: nop
	movq $_gp,%rbx
	addq $0, %rbx
	movq $_gp,%r10
	addq $0, %r10
	movl (%r10), %r11d
	movl $1, %r10d
	addl %r10d, %r11d
	movl %r11d, (%rbx)
	jmp label2
label3: nop
	leave
	ret
