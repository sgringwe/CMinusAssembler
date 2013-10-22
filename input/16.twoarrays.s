Offset for 1 is 200
Offset for 1 is 200
Offset for 1 is 200
Offset for 1 is 200
Offset for 1 is 200
Offset for 2 is 204
Offset for 2 is 204
Offset for 2 is 204
Offset for 2 is 204
Offset for 2 is 204
Offset for 2 is 204
Offset for 1 is 200
Offset for 3 is 208
Offset for 1 is 200
Offset for 1 is 200
Offset for 3 is 208
Offset for 3 is 208
Offset for 1 is 200
Offset for 3 is 208
Offset for 3 is 208
Offset for 1 is 200
Offset for 1 is 200
Offset for 1 is 200
Offset for 3 is 208
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
	movl $0, %r10d
	movl %r10d, (%r8)
	movq $_gp,%r8
	addq $200, %r8
	movq $_gp,%r10
	addq $200, %r10
	movl (%r10), %r11d
	movl $1, %r10d
	addl %r10d, %r11d
	movl %r11d, (%r8)
	jmp label0
label1: nop
	movq $_gp,%r8
	addq $204, %r8
	movl $0, %r10d
	movl %r10d, (%r8)
label2: nop
	movq $_gp,%r8
	addq $204, %r8
	movl (%r8), %r10d
	movl $50, %r8d
	cmpl %r8d, %r10d
	movl $0, %r10d
	movl $1, %r8d
	cmovl %r8d, %r10d
	movl $-1 , %r8d
	testl %r10d, %r8d
	je label3
	movq $_gp,%r11
	addq $204, %r11
	movl (%r11), %r12d
	movq $_gp,%r11
	addq $212, %r11
	imull %r12d, $4
	addq %r11d, %r12d
	movq $_gp,%r13
	addq $204, %r13
	movl (%r13), %r14d
	movl $50, %r13d
	addl %r13d, %r14d
	movl %r14d, (%r11)
	movq $_gp,%r11
	addq $204, %r11
	movq $_gp,%r13
	addq $204, %r13
	movl (%r13), %r14d
	movl $1, %r13d
	addl %r13d, %r14d
	movl %r14d, (%r11)
	jmp label2
label3: nop
	movq $_gp,%r11
	addq $200, %r11
	movl $0, %r13d
	movl %r13d, (%r11)
	movq $_gp,%r11
	addq $208, %r11
	movl $0, %r13d
	movl %r13d, (%r11)
label4: nop
	movq $_gp,%r11
	addq $200, %r11
	movl (%r11), %r13d
	movl $100, %r11d
	cmpl %r11d, %r13d
	movl $0, %r13d
	movl $1, %r11d
	cmovl %r11d, %r13d
	movl $-1 , %r11d
	testl %r13d, %r11d
	je label5
	movq $_gp,%r14
	addq $200, %r14
	movl (%r14), %r15d
	movl $50, %r14d
	cmpl %r14d, %r15d
	movl $0, %r15d
	movl $1, %r14d
	cmovl %r14d, %r15d
	movl $-1 , %r14d
	testl %r15d, %r14d
	je label6
	movq $_gp,bogus
	addq $208, bogus
	movq $_gp,bogus
	addq $208, bogus
	movl (bogus), bogus
	movq $_gp,bogus
	addq $200, bogus
	movl (bogus), bogus
	movq $_gp,bogus
	addq $0, bogus
	imull bogus, $4
	addq bogus, bogus
	movl (bogus), bogus
	addl bogus, bogus
	movl bogus, (bogus)
	jmp label7
label6: nop
	movq $_gp,bogus
	addq $208, bogus
	movq $_gp,bogus
	addq $208, bogus
	movl (bogus), bogus
	movq $_gp,bogus
	addq $200, bogus
	movl (bogus), bogus
	movl $50, bogus
	subl bogus, bogus
	movq $_gp,bogus
	addq $212, bogus
	imull bogus, $4
	addq bogus, bogus
	movl (bogus), bogus
	addl bogus, bogus
	movl bogus, (bogus)
label7: nop
	movq $_gp,bogus
	addq $200, bogus
	movq $_gp,bogus
	addq $200, bogus
	movl (bogus), bogus
	movl $1, bogus
	addl bogus, bogus
	movl bogus, (bogus)
	jmp label4
label5: nop
	movq $_gp,bogus
	addq $208, bogus
	movl (bogus), bogus
	movl bogus, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movl $5, bogus
	movq $_gp,bogus
	addq $0, bogus
	imull bogus, $4
	addq bogus, bogus
	movl (bogus), bogus
	movl bogus, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movl $10, bogus
	movq $_gp,bogus
	addq $212, bogus
	imull bogus, $4
	addq bogus, bogus
	movl (bogus), bogus
	movl bogus, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	leave
	ret
