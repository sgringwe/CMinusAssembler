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
	movq $_gp,%r8
	addq $3848, %r8
	movl (%r8), %r9d
	movq $_gp,%r8
	addq $3844, %r8
	movl (%r8), %r10d
	imull %r10d, %r9d
	movq $_gp,%r8
	addq $240, %r8
	imull %r9d, $4
	addl %r9d, %r8d
	movq $_gp,%r9
	addq $3848, %r9
	movl (%r9), %r10d
	movl %r10d, (%r8)
	movq $_gp,%r8
	addq $3848, %r8
	movl (%r8), %r9d
	movq $_gp,%r8
	addq $0, %r8
	imull %r9d, $4
	addl %r9d, %r8d
	movq $_gp,%r9
	addq $3848, %r9
	movl (%r9), %r10d
	movl $1, %r9d
	addl %r9d, %r10d
	movl %r10d, (%r8)
	movq $_gp,%r8
	addq $3848, %r8
	movq $_gp,%r9
	addq $3848, %r9
	movl (%r9), %r10d
	movl $1, %r9d
	addl %r9d, %r10d
	movl %r10d, (%r8)
	jmp label0
label1: nop
	movq $_gp,%r8
	addq $3852, %r8
	movl $0, %r9d
	movl %r9d, (%r8)
label2: nop
	movq $_gp,%r8
	addq $3852, %r8
	movl (%r8), %r9d
	movq $_gp,%r8
	addq $3840, %r8
	movl (%r8), %r10d
	cmpl %r10d, %r9d
	movl $0, %r9d
	movl $1, %r8d
	cmovl %r8d, %r9d
	movl $-1 , %r8d
	testl %r9d, %r8d
	je label3
	movq $_gp,%r10
	addq $3852, %r10
	movl (%r10), %r11d
	movq $_gp,%r10
	addq $240, %r10
	imull %r11d, $4
	addl %r11d, %r10d
	movq $_gp,%r11
	addq $3852, %r11
	movl (%r11), %r12d
	movl %r12d, (%r10)
	movq $_gp,%r10
	addq $3852, %r10
	movl (%r10), %r11d
	movq $_gp,%r10
	addq $120, %r10
	imull %r11d, $4
	addl %r11d, %r10d
	movl $2, %r11d
	movq $_gp,%r12
	addq $3852, %r12
	movl (%r12), %r13d
	movl $1, %r12d
	addl %r12d, %r13d
	imull %r13d, %r11d
	movl %r11d, (%r10)
	movq $_gp,%r10
	addq $3852, %r10
	movq $_gp,%r11
	addq $3852, %r11
	movl (%r11), %r12d
	movl $1, %r11d
	addl %r11d, %r12d
	movl %r12d, (%r10)
	jmp label2
label3: nop
	movq $_gp,%r10
	addq $3848, %r10
	movl $1, %r11d
	movl %r11d, (%r10)
label4: nop
	movq $_gp,%r10
	addq $3848, %r10
	movl (%r10), %r11d
	movq $_gp,%r10
	addq $3844, %r10
	movl (%r10), %r12d
	cmpl %r12d, %r11d
	movl $0, %r11d
	movl $1, %r10d
	cmovl %r10d, %r11d
	movl $-1 , %r10d
	testl %r11d, %r10d
	je label5
	movq $_gp,%r12
	addq $3852, %r12
	movl $1, %r13d
	movl %r13d, (%r12)
label6: nop
	movq $_gp,%r12
	addq $3852, %r12
	movl (%r12), %r13d
	movq $_gp,%r12
	addq $3840, %r12
	movl (%r12), %r14d
	cmpl %r14d, %r13d
	movl $0, %r13d
	movl $1, %r12d
	cmovl %r12d, %r13d
	movl $-1 , %r12d
	testl %r13d, %r12d
	je label7
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
	movq $_gp,%r14
	addq $240, %r14
	imull %r15d, $4
	addl %r15d, %r14d
	movq $_gp,%r15
	addq $3848, %r15
	movl (%r15), bogus
	movl $1, %r15d
	subl %r15d, bogus
	movq $_gp,%r15
	addq $3844, %r15
	movl (%r15), bogus
	imull bogus, bogus
	movq $_gp,%r15
	addq $3852, %r15
	movl (%r15), bogus
	addl bogus, bogus
	movl $1, %r15d
	subl %r15d, bogus
	movq $_gp,%r15
	addq $240, %r15
	imull bogus, $4
	addl bogus, %r15d
	movl (%r15), bogus
	movl bogus, (%r14)
	movq $_gp,%r14
	addq $3848, %r14
	movl (%r14), %r15d
	movq $_gp,%r14
	addq $120, %r14
	imull %r15d, $4
	addl %r15d, %r14d
	movl (%r14), %r15d
	movq $_gp,%r14
	addq $3852, %r14
	movl (%r14), bogus
	movq $_gp,%r14
	addq $0, %r14
	imull bogus, $4
	addl bogus, %r14d
	movl (%r14), bogus
	cmpl bogus, %r15d
	movl $0, %r15d
	movl $1, %r14d
	cmovne %r14d, %r15d
	movl $-1 , %r14d
	testl %r15d, %r14d
	je label8
	movq $_gp,bogus
	addq $3848, bogus
	movl (bogus), bogus
	movq $_gp,bogus
	addq $3844, bogus
	movl (bogus), bogus
	imull bogus, bogus
	movq $_gp,bogus
	addq $3852, bogus
	movl (bogus), bogus
	addl bogus, bogus
	movq $_gp,bogus
	addq $240, bogus
	imull bogus, $4
	addl bogus, bogus
	movq $_gp,bogus
	addq $3848, bogus
	movl (bogus), bogus
	movq $_gp,bogus
	addq $3844, bogus
	movl (bogus), bogus
	imull bogus, bogus
	movq $_gp,bogus
	addq $3852, bogus
	movl (bogus), bogus
	addl bogus, bogus
	movq $_gp,bogus
	addq $240, bogus
	imull bogus, $4
	addl bogus, bogus
	movl (bogus), bogus
	movl $1, bogus
	addl bogus, bogus
	movl bogus, (bogus)
	jmp label9
label8: nop
label9: nop
	movq $_gp,bogus
	addq $3848, bogus
	movl (bogus), bogus
	movl $1, bogus
	subl bogus, bogus
	movq $_gp,bogus
	addq $3844, bogus
	movl (bogus), bogus
	imull bogus, bogus
	movq $_gp,bogus
	addq $3852, bogus
	movl (bogus), bogus
	addl bogus, bogus
	movq $_gp,bogus
	addq $240, bogus
	imull bogus, $4
	addl bogus, bogus
	movl (bogus), bogus
	movq $_gp,bogus
	addq $3848, bogus
	movl (bogus), bogus
	movq $_gp,bogus
	addq $3844, bogus
	movl (bogus), bogus
	imull bogus, bogus
	movq $_gp,bogus
	addq $3852, bogus
	movl (bogus), bogus
	addl bogus, bogus
	movq $_gp,bogus
	addq $240, bogus
	imull bogus, $4
	addl bogus, bogus
	movl (bogus), bogus
	cmpl bogus, bogus
	movl $0, bogus
	movl $1, bogus
	cmovl bogus, bogus
	movl $-1 , bogus
	testl bogus, bogus
	je label10
	movq $_gp,bogus
	addq $3848, bogus
	movl (bogus), bogus
	movq $_gp,bogus
	addq $3844, bogus
	movl (bogus), bogus
	imull bogus, bogus
	movq $_gp,bogus
	addq $3852, bogus
	movl (bogus), bogus
	addl bogus, bogus
	movq $_gp,bogus
	addq $240, bogus
	imull bogus, $4
	addl bogus, bogus
	movq $_gp,bogus
	addq $3848, bogus
	movl (bogus), bogus
	movl $1, bogus
	subl bogus, bogus
	movq $_gp,bogus
	addq $3844, bogus
	movl (bogus), bogus
	imull bogus, bogus
	movq $_gp,bogus
	addq $3852, bogus
	movl (bogus), bogus
	addl bogus, bogus
	movq $_gp,bogus
	addq $240, bogus
	imull bogus, $4
	addl bogus, bogus
	movl (bogus), bogus
	movl $1, bogus
	addl bogus, bogus
	movl bogus, (bogus)
	jmp label11
label10: nop
label11: nop
	movq $_gp,bogus
	addq $3848, bogus
	movl (bogus), bogus
	movq $_gp,bogus
	addq $3844, bogus
	movl (bogus), bogus
	imull bogus, bogus
	movq $_gp,bogus
	addq $3852, bogus
	movl (bogus), bogus
	addl bogus, bogus
	movl $1, bogus
	subl bogus, bogus
	movq $_gp,bogus
	addq $240, bogus
	imull bogus, $4
	addl bogus, bogus
	movl (bogus), bogus
	movq $_gp,bogus
	addq $3848, bogus
	movl (bogus), bogus
	movq $_gp,bogus
	addq $3844, bogus
	movl (bogus), bogus
	imull bogus, bogus
	movq $_gp,bogus
	addq $3852, bogus
	movl (bogus), bogus
	addl bogus, bogus
	movq $_gp,bogus
	addq $240, bogus
	imull bogus, $4
	addl bogus, bogus
	movl (bogus), bogus
	cmpl bogus, bogus
	movl $0, bogus
	movl $1, bogus
	cmovl bogus, bogus
	movl $-1 , bogus
	testl bogus, bogus
	je label12
	movq $_gp,bogus
	addq $3848, bogus
	movl (bogus), bogus
	movq $_gp,bogus
	addq $3844, bogus
	movl (bogus), bogus
	imull bogus, bogus
	movq $_gp,bogus
	addq $3852, bogus
	movl (bogus), bogus
	addl bogus, bogus
	movq $_gp,bogus
	addq $240, bogus
	imull bogus, $4
	addl bogus, bogus
	movq $_gp,bogus
	addq $3848, bogus
	movl (bogus), bogus
	movq $_gp,bogus
	addq $3844, bogus
	movl (bogus), bogus
	imull bogus, bogus
	movq $_gp,bogus
	addq $3852, bogus
	movl (bogus), bogus
	addl bogus, bogus
	movl $1, bogus
	subl bogus, bogus
	movq $_gp,bogus
	addq $240, bogus
	imull bogus, $4
	addl bogus, bogus
	movl (bogus), bogus
	movl $1, bogus
	addl bogus, bogus
	movl bogus, (bogus)
	jmp label13
label12: nop
label13: nop
	movq $_gp,bogus
	addq $3852, bogus
	movq $_gp,bogus
	addq $3852, bogus
	movl (bogus), bogus
	movl $1, bogus
	addl bogus, bogus
	movl bogus, (bogus)
	jmp label6
label7: nop
	movq $_gp,bogus
	addq $3848, bogus
	movq $_gp,bogus
	addq $3848, bogus
	movl (bogus), bogus
	movl $1, bogus
	addl bogus, bogus
	movl bogus, (bogus)
	jmp label4
label5: nop
	movl $899, bogus
	movq $_gp,bogus
	addq $240, bogus
	imull bogus, $4
	addl bogus, bogus
	movl (bogus), bogus
	movl bogus, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	leave
	ret
