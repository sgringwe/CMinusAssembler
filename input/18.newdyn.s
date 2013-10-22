Offset for 4 is 3844
Offset for 3 is 3840
Offset for 5 is 3848
Offset for 5 is 3848
Offset for 4 is 3844
Offset for 5 is 3848
Offset for 4 is 3844
Offset for 5 is 3848
Offset for 5 is 3848
Offset for 5 is 3848
Offset for 5 is 3848
Offset for 5 is 3848
Offset for 6 is 3852
Offset for 6 is 3852
Offset for 3 is 3840
Offset for 6 is 3852
Offset for 6 is 3852
Offset for 6 is 3852
Offset for 6 is 3852
Offset for 6 is 3852
Offset for 6 is 3852
Offset for 5 is 3848
Offset for 5 is 3848
Offset for 4 is 3844
Offset for 6 is 3852
Offset for 6 is 3852
Offset for 3 is 3840
Offset for 5 is 3848
Offset for 4 is 3844
Offset for 6 is 3852
Offset for 5 is 3848
Offset for 4 is 3844
Offset for 6 is 3852
Offset for 5 is 3848
Offset for 6 is 3852
Offset for 5 is 3848
Offset for 4 is 3844
Offset for 6 is 3852
Offset for 5 is 3848
Offset for 4 is 3844
Offset for 6 is 3852
Offset for 5 is 3848
Offset for 4 is 3844
Offset for 6 is 3852
Offset for 5 is 3848
Offset for 4 is 3844
Offset for 6 is 3852
Offset for 5 is 3848
Offset for 4 is 3844
Offset for 6 is 3852
Offset for 5 is 3848
Offset for 4 is 3844
Offset for 6 is 3852
Offset for 5 is 3848
Offset for 4 is 3844
Offset for 6 is 3852
Offset for 5 is 3848
Offset for 4 is 3844
Offset for 6 is 3852
Offset for 5 is 3848
Offset for 4 is 3844
Offset for 6 is 3852
Offset for 5 is 3848
Offset for 4 is 3844
Offset for 6 is 3852
Offset for 6 is 3852
Offset for 6 is 3852
Offset for 5 is 3848
Offset for 5 is 3848
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
	addq %r8d, %r9d
	movq $_gp,%r10
	addq $3848, %r10
	movl (%r10), %r11d
	movl %r11d, (%r8)
	movq $_gp,%r8
	addq $3848, %r8
	movl (%r8), %r10d
	movq $_gp,%r8
	addq $0, %r8
	imull %r10d, $4
	addq %r8d, %r10d
	movq $_gp,%r11
	addq $3848, %r11
	movl (%r11), %r12d
	movl $1, %r11d
	addl %r11d, %r12d
	movl %r12d, (%r8)
	movq $_gp,%r8
	addq $3848, %r8
	movq $_gp,%r11
	addq $3848, %r11
	movl (%r11), %r12d
	movl $1, %r11d
	addl %r11d, %r12d
	movl %r12d, (%r8)
	jmp label0
label1: nop
	movq $_gp,%r8
	addq $3852, %r8
	movl $0, %r11d
	movl %r11d, (%r8)
label2: nop
	movq $_gp,%r8
	addq $3852, %r8
	movl (%r8), %r11d
	movq $_gp,%r8
	addq $3840, %r8
	movl (%r8), %r12d
	cmpl %r12d, %r11d
	movl $0, %r11d
	movl $1, %r8d
	cmovl %r8d, %r11d
	movl $-1 , %r8d
	testl %r11d, %r8d
	je label3
	movq $_gp,%r12
	addq $3852, %r12
	movl (%r12), %r13d
	movq $_gp,%r12
	addq $240, %r12
	imull %r13d, $4
	addq %r12d, %r13d
	movq $_gp,%r14
	addq $3852, %r14
	movl (%r14), %r15d
	movl %r15d, (%r12)
	movq $_gp,%r12
	addq $3852, %r12
	movl (%r12), %r14d
	movq $_gp,%r12
	addq $120, %r12
	imull %r14d, $4
	addq %r12d, %r14d
	movl $2, %r15d
	movq $_gp,bogus
	addq $3852, bogus
	movl (bogus), bogus
	movl $1, bogus
	addl bogus, bogus
	imull bogus, %r15d
	movl %r15d, (%r12)
	movq $_gp,%r12
	addq $3852, %r12
	movq $_gp,%r15
	addq $3852, %r15
	movl (%r15), bogus
	movl $1, %r15d
	addl %r15d, bogus
	movl bogus, (%r12)
	jmp label2
label3: nop
	movq $_gp,%r12
	addq $3848, %r12
	movl $1, %r15d
	movl %r15d, (%r12)
label4: nop
	movq $_gp,%r12
	addq $3848, %r12
	movl (%r12), %r15d
	movq $_gp,%r12
	addq $3844, %r12
	movl (%r12), bogus
	cmpl bogus, %r15d
	movl $0, %r15d
	movl $1, %r12d
	cmovl %r12d, %r15d
	movl $-1 , %r12d
	testl %r15d, %r12d
	je label5
	movq $_gp,bogus
	addq $3852, bogus
	movl $1, bogus
	movl bogus, (bogus)
label6: nop
	movq $_gp,bogus
	addq $3852, bogus
	movl (bogus), bogus
	movq $_gp,bogus
	addq $3840, bogus
	movl (bogus), bogus
	cmpl bogus, bogus
	movl $0, bogus
	movl $1, bogus
	cmovl bogus, bogus
	movl $-1 , bogus
	testl bogus, bogus
	je label7
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
	addq bogus, bogus
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
	movl $1, bogus
	subl bogus, bogus
	movq $_gp,bogus
	addq $240, bogus
	imull bogus, $4
	addq bogus, bogus
	movl (bogus), bogus
	movl bogus, (bogus)
	movq $_gp,bogus
	addq $3848, bogus
	movl (bogus), bogus
	movq $_gp,bogus
	addq $120, bogus
	imull bogus, $4
	addq bogus, bogus
	movl (bogus), bogus
	movq $_gp,bogus
	addq $3852, bogus
	movl (bogus), bogus
	movq $_gp,bogus
	addq $0, bogus
	imull bogus, $4
	addq bogus, bogus
	movl (bogus), bogus
	cmpl bogus, bogus
	movl $0, bogus
	movl $1, bogus
	cmovne bogus, bogus
	movl $-1 , bogus
	testl bogus, bogus
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
	addq bogus, bogus
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
	addq bogus, bogus
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
	addq bogus, bogus
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
	addq bogus, bogus
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
	addq bogus, bogus
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
	addq bogus, bogus
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
	addq bogus, bogus
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
	addq bogus, bogus
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
	addq bogus, bogus
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
	addq bogus, bogus
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
	addq bogus, bogus
	movl (bogus), bogus
	movl bogus, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	leave
	ret
