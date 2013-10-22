	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.int_rformat: .string "%d"
	.comm _gp, 3856, 4
	.text
	.globl main
	.type main,@function
main:	nop
	pushq %rbp
	movq %rsp, %rbp
	movq $_gp,%rbx
	addq $3844, %rbx
	movl $30, %ecx
	movl %ecx, (%rbx)
	movq $_gp,%rbx
	addq $3840, %rbx
	movl $30, %ecx
	movl %ecx, (%rbx)
	movq $_gp,%rbx
	addq $3848, %rbx
	movl $0, %ecx
	movl %ecx, (%rbx)
label0: nop
	movq $_gp,%rbx
	addq $3848, %rbx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $3844, %rbx
	movl (%rbx), %r8d
	cmpl %r8d, %ecx
	movl $0, %ecx
	movl $1, %ebx
	cmovl %ebx, %ecx
	movl $-1 , %ebx
	testl %ecx, %ebx
	je label1
	movq $_gp,%rbx
	addq $3848, %rbx
	movl (%rbx), %r8d
	movq $_gp,%rbx
	addq $3844, %rbx
	movl (%rbx), %r9d
	imull %r9d, %r8d
	movq $_gp,%rbx
	addq $240, %rbx
	imull %r8d, $4
	addl %r8d, %ebx
	movq $_gp,%r8
	addq $3848, %r8
	movl (%r8), %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $3848, %rbx
	movl (%rbx), %r8d
	movq $_gp,%rbx
	addq $0, %rbx
	imull %r8d, $4
	addl %r8d, %ebx
	movq $_gp,%r8
	addq $3848, %r8
	movl (%r8), %r9d
	movl $1, %r8d
	addl %r8d, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $3848, %rbx
	movq $_gp,%r8
	addq $3848, %r8
	movl (%r8), %r9d
	movl $1, %r8d
	addl %r8d, %r9d
	movl %r9d, (%rbx)
	jmp label0
label1: nop
	movq $_gp,%rbx
	addq $3852, %rbx
	movl $0, %r8d
	movl %r8d, (%rbx)
label2: nop
	movq $_gp,%rbx
	addq $3852, %rbx
	movl (%rbx), %r8d
	movq $_gp,%rbx
	addq $3840, %rbx
	movl (%rbx), %r9d
	cmpl %r9d, %r8d
	movl $0, %r8d
	movl $1, %ebx
	cmovl %ebx, %r8d
	movl $-1 , %ebx
	testl %r8d, %ebx
	je label3
	movq $_gp,%rbx
	addq $3852, %rbx
	movl (%rbx), %r9d
	movq $_gp,%rbx
	addq $240, %rbx
	imull %r9d, $4
	addl %r9d, %ebx
	movq $_gp,%r9
	addq $3852, %r9
	movl (%r9), %r10d
	movl %r10d, (%rbx)
	movq $_gp,%rbx
	addq $3852, %rbx
	movl (%rbx), %r9d
	movq $_gp,%rbx
	addq $120, %rbx
	imull %r9d, $4
	addl %r9d, %ebx
	movl $2, %r9d
	movq $_gp,%r10
	addq $3852, %r10
	movl (%r10), %r11d
	movl $1, %r10d
	addl %r10d, %r11d
	imull %r11d, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $3852, %rbx
	movq $_gp,%r9
	addq $3852, %r9
	movl (%r9), %r10d
	movl $1, %r9d
	addl %r9d, %r10d
	movl %r10d, (%rbx)
	jmp label2
label3: nop
	movq $_gp,%rbx
	addq $3848, %rbx
	movl $1, %r9d
	movl %r9d, (%rbx)
label4: nop
	movq $_gp,%rbx
	addq $3848, %rbx
	movl (%rbx), %r9d
	movq $_gp,%rbx
	addq $3844, %rbx
	movl (%rbx), %r10d
	cmpl %r10d, %r9d
	movl $0, %r9d
	movl $1, %ebx
	cmovl %ebx, %r9d
	movl $-1 , %ebx
	testl %r9d, %ebx
	je label5
	movq $_gp,%rbx
	addq $3852, %rbx
	movl $1, %r10d
	movl %r10d, (%rbx)
label6: nop
	movq $_gp,%rbx
	addq $3852, %rbx
	movl (%rbx), %r10d
	movq $_gp,%rbx
	addq $3840, %rbx
	movl (%rbx), %r11d
	cmpl %r11d, %r10d
	movl $0, %r10d
	movl $1, %ebx
	cmovl %ebx, %r10d
	movl $-1 , %ebx
	testl %r10d, %ebx
	je label7
	movq $_gp,%rbx
	addq $3848, %rbx
	movl (%rbx), %r11d
	movq $_gp,%rbx
	addq $3844, %rbx
	movl (%rbx), %r12d
	imull %r12d, %r11d
	movq $_gp,%rbx
	addq $3852, %rbx
	movl (%rbx), %r12d
	addl %r12d, %r11d
	movq $_gp,%rbx
	addq $240, %rbx
	imull %r11d, $4
	addl %r11d, %ebx
	movq $_gp,%r11
	addq $3848, %r11
	movl (%r11), %r12d
	movl $1, %r11d
	subl %r11d, %r12d
	movq $_gp,%r11
	addq $3844, %r11
	movl (%r11), %r13d
	imull %r13d, %r12d
	movq $_gp,%r11
	addq $3852, %r11
	movl (%r11), %r13d
	addl %r13d, %r12d
	movl $1, %r11d
	subl %r11d, %r12d
	movq $_gp,%r11
	addq $240, %r11
	imull %r12d, $4
	addl %r12d, %r11d
	movl (%r11), %r12d
	movl %r12d, (%rbx)
	movq $_gp,%rbx
	addq $3848, %rbx
	movl (%rbx), %r11d
	movq $_gp,%rbx
	addq $120, %rbx
	imull %r11d, $4
	addl %r11d, %ebx
	movl (%rbx), %r11d
	movq $_gp,%rbx
	addq $3852, %rbx
	movl (%rbx), %r12d
	movq $_gp,%rbx
	addq $0, %rbx
	imull %r12d, $4
	addl %r12d, %ebx
	movl (%rbx), %r12d
	cmpl %r12d, %r11d
	movl $0, %r11d
	movl $1, %ebx
	cmovne %ebx, %r11d
	movl $-1 , %ebx
	testl %r11d, %ebx
	je label8
	movq $_gp,%rbx
	addq $3848, %rbx
	movl (%rbx), %r12d
	movq $_gp,%rbx
	addq $3844, %rbx
	movl (%rbx), %r13d
	imull %r13d, %r12d
	movq $_gp,%rbx
	addq $3852, %rbx
	movl (%rbx), %r13d
	addl %r13d, %r12d
	movq $_gp,%rbx
	addq $240, %rbx
	imull %r12d, $4
	addl %r12d, %ebx
	movq $_gp,%r12
	addq $3848, %r12
	movl (%r12), %r13d
	movq $_gp,%r12
	addq $3844, %r12
	movl (%r12), %r14d
	imull %r14d, %r13d
	movq $_gp,%r12
	addq $3852, %r12
	movl (%r12), %r14d
	addl %r14d, %r13d
	movq $_gp,%r12
	addq $240, %r12
	imull %r13d, $4
	addl %r13d, %r12d
	movl (%r12), %r13d
	movl $1, %r12d
	addl %r12d, %r13d
	movl %r13d, (%rbx)
	jmp label9
label8: nop
label9: nop
	movq $_gp,%rbx
	addq $3848, %rbx
	movl (%rbx), %r12d
	movl $1, %ebx
	subl %ebx, %r12d
	movq $_gp,%rbx
	addq $3844, %rbx
	movl (%rbx), %r13d
	imull %r13d, %r12d
	movq $_gp,%rbx
	addq $3852, %rbx
	movl (%rbx), %r13d
	addl %r13d, %r12d
	movq $_gp,%rbx
	addq $240, %rbx
	imull %r12d, $4
	addl %r12d, %ebx
	movl (%rbx), %r12d
	movq $_gp,%rbx
	addq $3848, %rbx
	movl (%rbx), %r13d
	movq $_gp,%rbx
	addq $3844, %rbx
	movl (%rbx), %r14d
	imull %r14d, %r13d
	movq $_gp,%rbx
	addq $3852, %rbx
	movl (%rbx), %r14d
	addl %r14d, %r13d
	movq $_gp,%rbx
	addq $240, %rbx
	imull %r13d, $4
	addl %r13d, %ebx
	movl (%rbx), %r13d
	cmpl %r13d, %r12d
	movl $0, %r12d
	movl $1, %ebx
	cmovl %ebx, %r12d
	movl $-1 , %ebx
	testl %r12d, %ebx
	je label10
	movq $_gp,%rbx
	addq $3848, %rbx
	movl (%rbx), %r13d
	movq $_gp,%rbx
	addq $3844, %rbx
	movl (%rbx), %r14d
	imull %r14d, %r13d
	movq $_gp,%rbx
	addq $3852, %rbx
	movl (%rbx), %r14d
	addl %r14d, %r13d
	movq $_gp,%rbx
	addq $240, %rbx
	imull %r13d, $4
	addl %r13d, %ebx
	movq $_gp,%r13
	addq $3848, %r13
	movl (%r13), %r14d
	movl $1, %r13d
	subl %r13d, %r14d
	movq $_gp,%r13
	addq $3844, %r13
	movl (%r13), %r15d
	imull %r15d, %r14d
	movq $_gp,%r13
	addq $3852, %r13
	movl (%r13), %r15d
	addl %r15d, %r14d
	movq $_gp,%r13
	addq $240, %r13
	imull %r14d, $4
	addl %r14d, %r13d
	movl (%r13), %r14d
	movl $1, %r13d
	addl %r13d, %r14d
	movl %r14d, (%rbx)
	jmp label11
label10: nop
label11: nop
	movq $_gp,%rbx
	addq $3848, %rbx
	movl (%rbx), %r13d
	movq $_gp,%rbx
	addq $3844, %rbx
	movl (%rbx), %r14d
	imull %r14d, %r13d
	movq $_gp,%rbx
	addq $3852, %rbx
	movl (%rbx), %r14d
	addl %r14d, %r13d
	movl $1, %ebx
	subl %ebx, %r13d
	movq $_gp,%rbx
	addq $240, %rbx
	imull %r13d, $4
	addl %r13d, %ebx
	movl (%rbx), %r13d
	movq $_gp,%rbx
	addq $3848, %rbx
	movl (%rbx), %r14d
	movq $_gp,%rbx
	addq $3844, %rbx
	movl (%rbx), %r15d
	imull %r15d, %r14d
	movq $_gp,%rbx
	addq $3852, %rbx
	movl (%rbx), %r15d
	addl %r15d, %r14d
	movq $_gp,%rbx
	addq $240, %rbx
	imull %r14d, $4
	addl %r14d, %ebx
	movl (%rbx), %r14d
	cmpl %r14d, %r13d
	movl $0, %r13d
	movl $1, %ebx
	cmovl %ebx, %r13d
	movl $-1 , %ebx
	testl %r13d, %ebx
	je label12
	movq $_gp,%rbx
	addq $3848, %rbx
	movl (%rbx), %r14d
	movq $_gp,%rbx
	addq $3844, %rbx
	movl (%rbx), %r15d
	imull %r15d, %r14d
	movq $_gp,%rbx
	addq $3852, %rbx
	movl (%rbx), %r15d
	addl %r15d, %r14d
	movq $_gp,%rbx
	addq $240, %rbx
	imull %r14d, $4
	addl %r14d, %ebx
	movq $_gp,%r14
	addq $3848, %r14
	movl (%r14), %r15d
	movq $_gp,%r14
	addq $3844, %r14
	movl (%r14), bogus
	imull bogus, %r15d
	movq $_gp,%r14
	addq $3852, %r14
	movl (%r14), bogus
	addl bogus, %r15d
	movl $1, %r14d
	subl %r14d, %r15d
	movq $_gp,%r14
	addq $240, %r14
	imull %r15d, $4
	addl %r15d, %r14d
	movl (%r14), %r15d
	movl $1, %r14d
	addl %r14d, %r15d
	movl %r15d, (%rbx)
	jmp label13
label12: nop
label13: nop
	movq $_gp,%rbx
	addq $3852, %rbx
	movq $_gp,%r14
	addq $3852, %r14
	movl (%r14), %r15d
	movl $1, %r14d
	addl %r14d, %r15d
	movl %r15d, (%rbx)
	jmp label6
label7: nop
	movq $_gp,%rbx
	addq $3848, %rbx
	movq $_gp,%r14
	addq $3848, %r14
	movl (%r14), %r15d
	movl $1, %r14d
	addl %r14d, %r15d
	movl %r15d, (%rbx)
	jmp label4
label5: nop
	movl $899, %ebx
	movq $_gp,%r14
	addq $240, %r14
	imull %ebx, $4
	addl %ebx, %r14d
	movl (%r14), %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	leave
	ret
