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
	movq $_gp,%r8
	addq $200, %r8
	movl (%r8), %r9d
	movq $_gp,%r8
	addq $0, %r8
	imull %r9d, $4
	addq %r8d, %r9d
	movl $0, %r9d
	movl %r9d, (%r8)
	movq $_gp,%r8
	addq $200, %r8
	movq $_gp,%r9
	addq $200, %r9
	movl (%r9), %r10d
	movl $1, %r9d
	addl %r9d, %r10d
	movl %r10d, (%r8)
	jmp label0
label1: nop
	movq $_gp,%r8
	addq $204, %r8
	movl $0, %r9d
	movl %r9d, (%r8)
label2: nop
	movq $_gp,%r8
	addq $204, %r8
	movl (%r8), %r9d
	movl $50, %r8d
	cmpl %r8d, %r9d
	movl $0, %r9d
	movl $1, %r8d
	cmovl %r8d, %r9d
	movl $-1 , %r8d
	testl %r9d, %r8d
	je label3
	movq $_gp,%r10
	addq $204, %r10
	movl (%r10), %r11d
	movq $_gp,%r10
	addq $212, %r10
	imull %r11d, $4
	addq %r10d, %r11d
	movq $_gp,%r11
	addq $204, %r11
	movl (%r11), %r12d
	movl $50, %r11d
	addl %r11d, %r12d
	movl %r12d, (%r10)
	movq $_gp,%r10
	addq $204, %r10
	movq $_gp,%r11
	addq $204, %r11
	movl (%r11), %r12d
	movl $1, %r11d
	addl %r11d, %r12d
	movl %r12d, (%r10)
	jmp label2
label3: nop
	movq $_gp,%r10
	addq $200, %r10
	movl $0, %r11d
	movl %r11d, (%r10)
	movq $_gp,%r10
	addq $208, %r10
	movl $0, %r11d
	movl %r11d, (%r10)
label4: nop
	movq $_gp,%r10
	addq $200, %r10
	movl (%r10), %r11d
	movl $100, %r10d
	cmpl %r10d, %r11d
	movl $0, %r11d
	movl $1, %r10d
	cmovl %r10d, %r11d
	movl $-1 , %r10d
	testl %r11d, %r10d
	je label5
	movq $_gp,%r12
	addq $200, %r12
	movl (%r12), %r13d
	movl $50, %r12d
	cmpl %r12d, %r13d
	movl $0, %r13d
	movl $1, %r12d
	cmovl %r12d, %r13d
	movl $-1 , %r12d
	testl %r13d, %r12d
	je label6
	movq $_gp,%r14
	addq $208, %r14
	movq $_gp,%r15
	addq $208, %r15
	movl (%r15), bogus
	movq $_gp,%r15
	addq $200, %r15
	movl (%r15), bogus
	movq $_gp,%r15
	addq $0, %r15
	imull bogus, $4
	addq %r15d, bogus
	movl (%r15), bogus
	addl bogus, bogus
	movl bogus, (%r14)
	jmp label7
label6: nop
	movq $_gp,%r14
	addq $208, %r14
	movq $_gp,%r15
	addq $208, %r15
	movl (%r15), bogus
	movq $_gp,%r15
	addq $200, %r15
	movl (%r15), bogus
	movl $50, %r15d
	subl %r15d, bogus
	movq $_gp,%r15
	addq $212, %r15
	imull bogus, $4
	addq %r15d, bogus
	movl (%r15), bogus
	addl bogus, bogus
	movl bogus, (%r14)
label7: nop
	movq $_gp,%r14
	addq $200, %r14
	movq $_gp,%r15
	addq $200, %r15
	movl (%r15), bogus
	movl $1, %r15d
	addl %r15d, bogus
	movl bogus, (%r14)
	jmp label4
label5: nop
	movq $_gp,%r14
	addq $208, %r14
	movl (%r14), %r15d
	movl %r15d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movl $5, %r14d
	movq $_gp,%r15
	addq $0, %r15
	imull %r14d, $4
	addq %r15d, %r14d
	movl (%r15), %r14d
	movl %r14d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movl $10, %r14d
	movq $_gp,%r15
	addq $212, %r15
	imull %r14d, $4
	addq %r15d, %r14d
	movl (%r15), %r14d
	movl %r14d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	leave
	ret
