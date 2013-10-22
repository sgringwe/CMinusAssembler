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
	movl (%rbx), %r8d
	movq $_gp,%rbx
	addq $0, %rbx
	imull %r8d, $4
	addl %r8d, %ebx
	movl $0, %r8d
	movl %r8d, (%rbx)
	movq $_gp,%rbx
	addq $200, %rbx
	movq $_gp,%r8
	addq $200, %r8
	movl (%r8), %r9d
	movl $1, %r8d
	addl %r8d, %r9d
	movl %r9d, (%rbx)
	jmp label0
label1: nop
	movq $_gp,%rbx
	addq $204, %rbx
	movl $0, %r8d
	movl %r8d, (%rbx)
label2: nop
	movq $_gp,%rbx
	addq $204, %rbx
	movl (%rbx), %r8d
	movl $50, %ebx
	cmpl %ebx, %r8d
	movl $0, %r8d
	movl $1, %ebx
	cmovl %ebx, %r8d
	movl $-1 , %ebx
	testl %r8d, %ebx
	je label3
	movq $_gp,%rbx
	addq $204, %rbx
	movl (%rbx), %r9d
	movq $_gp,%rbx
	addq $212, %rbx
	imull %r9d, $4
	addl %r9d, %ebx
	movq $_gp,%r9
	addq $204, %r9
	movl (%r9), %r10d
	movl $50, %r9d
	addl %r9d, %r10d
	movl %r10d, (%rbx)
	movq $_gp,%rbx
	addq $204, %rbx
	movq $_gp,%r9
	addq $204, %r9
	movl (%r9), %r10d
	movl $1, %r9d
	addl %r9d, %r10d
	movl %r10d, (%rbx)
	jmp label2
label3: nop
	movq $_gp,%rbx
	addq $200, %rbx
	movl $0, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $208, %rbx
	movl $0, %r9d
	movl %r9d, (%rbx)
label4: nop
	movq $_gp,%rbx
	addq $200, %rbx
	movl (%rbx), %r9d
	movl $100, %ebx
	cmpl %ebx, %r9d
	movl $0, %r9d
	movl $1, %ebx
	cmovl %ebx, %r9d
	movl $-1 , %ebx
	testl %r9d, %ebx
	je label5
	movq $_gp,%rbx
	addq $200, %rbx
	movl (%rbx), %r10d
	movl $50, %ebx
	cmpl %ebx, %r10d
	movl $0, %r10d
	movl $1, %ebx
	cmovl %ebx, %r10d
	movl $-1 , %ebx
	testl %r10d, %ebx
	je label6
	movq $_gp,%rbx
	addq $208, %rbx
	movq $_gp,%r11
	addq $208, %r11
	movl (%r11), %r12d
	movq $_gp,%r11
	addq $200, %r11
	movl (%r11), %r13d
	movq $_gp,%r11
	addq $0, %r11
	imull %r13d, $4
	addl %r13d, %r11d
	movl (%r11), %r13d
	addl %r13d, %r12d
	movl %r12d, (%rbx)
	jmp label7
label6: nop
	movq $_gp,%rbx
	addq $208, %rbx
	movq $_gp,%r11
	addq $208, %r11
	movl (%r11), %r12d
	movq $_gp,%r11
	addq $200, %r11
	movl (%r11), %r13d
	movl $50, %r11d
	subl %r11d, %r13d
	movq $_gp,%r11
	addq $212, %r11
	imull %r13d, $4
	addl %r13d, %r11d
	movl (%r11), %r13d
	addl %r13d, %r12d
	movl %r12d, (%rbx)
label7: nop
	movq $_gp,%rbx
	addq $200, %rbx
	movq $_gp,%r11
	addq $200, %r11
	movl (%r11), %r12d
	movl $1, %r11d
	addl %r11d, %r12d
	movl %r12d, (%rbx)
	jmp label4
label5: nop
	movq $_gp,%rbx
	addq $208, %rbx
	movl (%rbx), %r11d
	movl %r11d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movl $5, %ebx
	movq $_gp,%r11
	addq $0, %r11
	imull %ebx, $4
	addl %ebx, %r11d
	movl (%r11), %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movl $10, %ebx
	movq $_gp,%r11
	addq $212, %r11
	imull %ebx, $4
	addl %ebx, %r11d
	movl (%r11), %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	leave
	ret
