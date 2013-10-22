Offset for 0 is 0
Offset for 0 is 0
Offset for 0 is 0
Offset for 0 is 0
Offset for 0 is 0
Offset for 0 is 0
Offset for 0 is 0
Offset for 0 is 0
Offset for 0 is 0
Offset for 0 is 0
Offset for 0 is 0
Offset for 0 is 0
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
	movq $_gp,%r10
	addq $0, %r10
	movl (%r10), %r11d
	movl %r11d, (%r8)
	movq $_gp,%r8
	addq $0, %r8
	movq $_gp,%r10
	addq $0, %r10
	movl (%r10), %r11d
	movl $1, %r10d
	addl %r10d, %r11d
	movl %r11d, (%r8)
	jmp label0
label1: nop
	movq $_gp,%r8
	addq $0, %r8
	movl $0, %r10d
	movl %r10d, (%r8)
label2: nop
	movq $_gp,%r8
	addq $0, %r8
	movl (%r8), %r10d
	movl $10, %r8d
	cmpl %r8d, %r10d
	movl $0, %r10d
	movl $1, %r8d
	cmovl %r8d, %r10d
	movl $-1 , %r8d
	testl %r10d, %r8d
	je label3
	movq $_gp,%r11
	addq $0, %r11
	movl (%r11), %r12d
	movl $5, %r11d
	cmpl %r11d, %r12d
	movl $0, %r12d
	movl $1, %r11d
	cmovl %r11d, %r12d
	movl $-1 , %r11d
	testl %r12d, %r11d
	je label4
	movq $_gp,%r13
	addq $0, %r13
	movl (%r13), %r14d
	movq $_gp,%r13
	addq $4, %r13
	imull %r14d, $4
	addq %r13d, %r14d
	movl (%r13), %r15d
	movl %r15d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	jmp label5
label4: nop
	movl $0, %r13d
	movl %r13d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
label5: nop
	movq $_gp,%r13
	addq $0, %r13
	movq $_gp,%r15
	addq $0, %r15
	movl (%r15), bogus
	movl $1, %r15d
	addl %r15d, bogus
	movl bogus, (%r13)
	jmp label2
label3: nop
	leave
	ret
