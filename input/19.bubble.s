Offset for 1 is 60
Offset for 1 is 60
Offset for 4 is 72
Offset for 1 is 60
Offset for 2 is 64
Offset for 1 is 60
Offset for 2 is 64
Offset for 2 is 64
Offset for 4 is 72
Offset for 4 is 72
Offset for 2 is 64
Offset for 2 is 64
Offset for 2 is 64
Offset for 3 is 68
Offset for 1 is 60
Offset for 1 is 60
Offset for 4 is 72
Offset for 4 is 72
Offset for 3 is 68
Offset for 1 is 60
Offset for 1 is 60
Offset for 1 is 60
Offset for 1 is 60
Offset for 1 is 60
Offset for 1 is 60
Offset for 1 is 60
	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.int_rformat: .string "%d"
	.comm _gp, 76, 4
	.text
	.globl main
	.type main,@function
main:	nop
	pushq %rbp
	movq %rsp, %rbp
	movl $0, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
	movl $32, %r8d
	movl %r8d, (%rcx)
	movl $1, %ecx
	movq $_gp,%r8
	addq $0, %r8
	imull %ecx, $4
	addq %r8d, %ecx
	movl $11, %r9d
	movl %r9d, (%r8)
	movl $2, %r8d
	movq $_gp,%r9
	addq $0, %r9
	imull %r8d, $4
	addq %r9d, %r8d
	movl $111, %r10d
	movl %r10d, (%r9)
	movl $3, %r9d
	movq $_gp,%r10
	addq $0, %r10
	imull %r9d, $4
	addq %r10d, %r9d
	movl $88, %r11d
	movl %r11d, (%r10)
	movl $4, %r10d
	movq $_gp,%r11
	addq $0, %r11
	imull %r10d, $4
	addq %r11d, %r10d
	movl $11, %r12d
	movl %r12d, (%r11)
	movl $5, %r11d
	movq $_gp,%r12
	addq $0, %r12
	imull %r11d, $4
	addq %r12d, %r11d
	movl $44, %r13d
	movl %r13d, (%r12)
	movl $6, %r12d
	movq $_gp,%r13
	addq $0, %r13
	imull %r12d, $4
	addq %r13d, %r12d
	movl $33, %r14d
	movl %r14d, (%r13)
	movl $7, %r13d
	movq $_gp,%r14
	addq $0, %r14
	imull %r13d, $4
	addq %r14d, %r13d
	movl $33, %r15d
	movl %r15d, (%r14)
	movl $8, %r14d
	movq $_gp,%r15
	addq $0, %r15
	imull %r14d, $4
	addq %r15d, %r14d
	movl $22, bogus
	movl bogus, (%r15)
	movl $9, %r15d
	movq $_gp,bogus
	addq $0, bogus
	imull %r15d, $4
	addq bogus, %r15d
	movl $77, bogus
	movl bogus, (bogus)
	movl $10, bogus
	movq $_gp,bogus
	addq $0, bogus
	imull bogus, $4
	addq bogus, bogus
	movl $45, bogus
	movl bogus, (bogus)
	movl $11, bogus
	movq $_gp,bogus
	addq $0, bogus
	imull bogus, $4
	addq bogus, bogus
	movl $65, bogus
	movl bogus, (bogus)
	movl $12, bogus
	movq $_gp,bogus
	addq $0, bogus
	imull bogus, $4
	addq bogus, bogus
	movl $76, bogus
	movl bogus, (bogus)
	movl $13, bogus
	movq $_gp,bogus
	addq $0, bogus
	imull bogus, $4
	addq bogus, bogus
	movl $87, bogus
	movl bogus, (bogus)
	movl $14, bogus
	movq $_gp,bogus
	addq $0, bogus
	imull bogus, $4
	addq bogus, bogus
	movl $34, bogus
	movl bogus, (bogus)
	movq $_gp,bogus
	addq $60, bogus
	movl $0, bogus
	movl bogus, (bogus)
label0: nop
	movq $_gp,bogus
	addq $60, bogus
	movl (bogus), bogus
	movl $14, bogus
	cmpl bogus, bogus
	movl $0, bogus
	movl $1, bogus
	cmovl bogus, bogus
	movl $-1 , bogus
	testl bogus, bogus
	je label1
	movq $_gp,bogus
	addq $72, bogus
	movq $_gp,bogus
	addq $60, bogus
	movl (bogus), bogus
	movl bogus, (bogus)
	movq $_gp,bogus
	addq $64, bogus
	movq $_gp,bogus
	addq $60, bogus
	movl (bogus), bogus
	movl $1, bogus
	addl bogus, bogus
	movl bogus, (bogus)
label2: nop
	movq $_gp,bogus
	addq $64, bogus
	movl (bogus), bogus
	movl $15, bogus
	cmpl bogus, bogus
	movl $0, bogus
	movl $1, bogus
	cmovl bogus, bogus
	movl $-1 , bogus
	testl bogus, bogus
	je label3
	movq $_gp,bogus
	addq $64, bogus
	movl (bogus), bogus
	movq $_gp,bogus
	addq $0, bogus
	imull bogus, $4
	addq bogus, bogus
	movl (bogus), bogus
	movq $_gp,bogus
	addq $72, bogus
	movl (bogus), bogus
	movq $_gp,bogus
	addq $0, bogus
	imull bogus, $4
	addq bogus, bogus
	movl (bogus), bogus
	cmpl bogus, bogus
	movl $0, bogus
	movl $1, bogus
	cmovl bogus, bogus
	movl $-1 , bogus
	testl bogus, bogus
	je label4
	movq $_gp,bogus
	addq $72, bogus
	movq $_gp,bogus
	addq $64, bogus
	movl (bogus), bogus
	movl bogus, (bogus)
	jmp label5
label4: nop
label5: nop
	movq $_gp,bogus
	addq $64, bogus
	movq $_gp,bogus
	addq $64, bogus
	movl (bogus), bogus
	movl $1, bogus
	addl bogus, bogus
	movl bogus, (bogus)
	jmp label2
label3: nop
	movq $_gp,bogus
	addq $68, bogus
	movq $_gp,bogus
	addq $60, bogus
	movl (bogus), bogus
	movq $_gp,bogus
	addq $0, bogus
	imull bogus, $4
	addq bogus, bogus
	movl (bogus), bogus
	movl bogus, (bogus)
	movq $_gp,bogus
	addq $60, bogus
	movl (bogus), bogus
	movq $_gp,bogus
	addq $0, bogus
	imull bogus, $4
	addq bogus, bogus
	movq $_gp,bogus
	addq $72, bogus
	movl (bogus), bogus
	movq $_gp,bogus
	addq $0, bogus
	imull bogus, $4
	addq bogus, bogus
	movl (bogus), bogus
	movl bogus, (bogus)
	movq $_gp,bogus
	addq $72, bogus
	movl (bogus), bogus
	movq $_gp,bogus
	addq $0, bogus
	imull bogus, $4
	addq bogus, bogus
	movq $_gp,bogus
	addq $68, bogus
	movl (bogus), bogus
	movl bogus, (bogus)
	movq $_gp,bogus
	addq $60, bogus
	movq $_gp,bogus
	addq $60, bogus
	movl (bogus), bogus
	movl $1, bogus
	addl bogus, bogus
	movl bogus, (bogus)
	jmp label0
label1: nop
	movq $_gp,bogus
	addq $60, bogus
	movl $0, bogus
	movl bogus, (bogus)
label6: nop
	movq $_gp,bogus
	addq $60, bogus
	movl (bogus), bogus
	movl $15, bogus
	cmpl bogus, bogus
	movl $0, bogus
	movl $1, bogus
	cmovl bogus, bogus
	movl $-1 , bogus
	testl bogus, bogus
	je label7
	movq $_gp,bogus
	addq $60, bogus
	movl (bogus), bogus
	movq $_gp,bogus
	addq $0, bogus
	imull bogus, $4
	addq bogus, bogus
	movl (bogus), bogus
	movl bogus, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq $_gp,bogus
	addq $60, bogus
	movq $_gp,bogus
	addq $60, bogus
	movl (bogus), bogus
	movl $1, bogus
	addl bogus, bogus
	movl bogus, (bogus)
	jmp label6
label7: nop
	leave
	ret
