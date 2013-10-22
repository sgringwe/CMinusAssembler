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
	movl $32, %ebx
	movl %ebx, (%rcx)
	movl $1, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
	movl $11, %ebx
	movl %ebx, (%rcx)
	movl $2, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
	movl $111, %ebx
	movl %ebx, (%rcx)
	movl $3, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
	movl $88, %ebx
	movl %ebx, (%rcx)
	movl $4, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
	movl $11, %ebx
	movl %ebx, (%rcx)
	movl $5, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
	movl $44, %ebx
	movl %ebx, (%rcx)
	movl $6, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
	movl $33, %ebx
	movl %ebx, (%rcx)
	movl $7, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
	movl $33, %ebx
	movl %ebx, (%rcx)
	movl $8, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
	movl $22, %ebx
	movl %ebx, (%rcx)
	movl $9, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
	movl $77, %ebx
	movl %ebx, (%rcx)
	movl $10, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
	movl $45, %ebx
	movl %ebx, (%rcx)
	movl $11, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
	movl $65, %ebx
	movl %ebx, (%rcx)
	movl $12, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
	movl $76, %ebx
	movl %ebx, (%rcx)
	movl $13, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
	movl $87, %ebx
	movl %ebx, (%rcx)
	movl $14, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
	movl $34, %ebx
	movl %ebx, (%rcx)
	movq $_gp,%rbx
	addq $60, %rbx
	movl $0, %ecx
	movl %ecx, (%rbx)
label0: nop
	movq $_gp,%rbx
	addq $60, %rbx
	movl (%rbx), %ecx
	movl $14, %ebx
	cmpl %ebx, %ecx
	movl $0, %ecx
	movl $1, %ebx
	cmovl %ebx, %ecx
	movl $-1 , %ebx
	testl %ecx, %ebx
	je label1
	movq $_gp,%r8
	addq $72, %r8
	movq $_gp,%r9
	addq $60, %r9
	movl (%r9), %r10d
	movl %r10d, (%r8)
	movq $_gp,%r8
	addq $64, %r8
	movq $_gp,%r9
	addq $60, %r9
	movl (%r9), %r10d
	movl $1, %r9d
	addl %r9d, %r10d
	movl %r10d, (%r8)
label2: nop
	movq $_gp,%r8
	addq $64, %r8
	movl (%r8), %r9d
	movl $15, %r8d
	cmpl %r8d, %r9d
	movl $0, %r9d
	movl $1, %r8d
	cmovl %r8d, %r9d
	movl $-1 , %r8d
	testl %r9d, %r8d
	je label3
	movq $_gp,%r10
	addq $64, %r10
	movl (%r10), %r11d
	movq $_gp,%r10
	addq $0, %r10
	imull %r11d, $4
	addq %r10d, %r11d
	movl (%r10), %r11d
	movq $_gp,%r10
	addq $72, %r10
	movl (%r10), %r12d
	movq $_gp,%r10
	addq $0, %r10
	imull %r12d, $4
	addq %r10d, %r12d
	movl (%r10), %r12d
	cmpl %r12d, %r11d
	movl $0, %r11d
	movl $1, %r10d
	cmovl %r10d, %r11d
	movl $-1 , %r10d
	testl %r11d, %r10d
	je label4
	movq $_gp,%r12
	addq $72, %r12
	movq $_gp,%r13
	addq $64, %r13
	movl (%r13), %r14d
	movl %r14d, (%r12)
	jmp label5
label4: nop
label5: nop
	movq $_gp,%r12
	addq $64, %r12
	movq $_gp,%r13
	addq $64, %r13
	movl (%r13), %r14d
	movl $1, %r13d
	addl %r13d, %r14d
	movl %r14d, (%r12)
	jmp label2
label3: nop
	movq $_gp,%r12
	addq $68, %r12
	movq $_gp,%r13
	addq $60, %r13
	movl (%r13), %r14d
	movq $_gp,%r13
	addq $0, %r13
	imull %r14d, $4
	addq %r13d, %r14d
	movl (%r13), %r14d
	movl %r14d, (%r12)
	movq $_gp,%r12
	addq $60, %r12
	movl (%r12), %r13d
	movq $_gp,%r12
	addq $0, %r12
	imull %r13d, $4
	addq %r12d, %r13d
	movq $_gp,%r13
	addq $72, %r13
	movl (%r13), %r14d
	movq $_gp,%r13
	addq $0, %r13
	imull %r14d, $4
	addq %r13d, %r14d
	movl (%r13), %r14d
	movl %r14d, (%r12)
	movq $_gp,%r12
	addq $72, %r12
	movl (%r12), %r13d
	movq $_gp,%r12
	addq $0, %r12
	imull %r13d, $4
	addq %r12d, %r13d
	movq $_gp,%r13
	addq $68, %r13
	movl (%r13), %r14d
	movl %r14d, (%r12)
	movq $_gp,%r12
	addq $60, %r12
	movq $_gp,%r13
	addq $60, %r13
	movl (%r13), %r14d
	movl $1, %r13d
	addl %r13d, %r14d
	movl %r14d, (%r12)
	jmp label0
label1: nop
	movq $_gp,%r12
	addq $60, %r12
	movl $0, %r13d
	movl %r13d, (%r12)
label6: nop
	movq $_gp,%r12
	addq $60, %r12
	movl (%r12), %r13d
	movl $15, %r12d
	cmpl %r12d, %r13d
	movl $0, %r13d
	movl $1, %r12d
	cmovl %r12d, %r13d
	movl $-1 , %r12d
	testl %r13d, %r12d
	je label7
	movq $_gp,%r14
	addq $60, %r14
	movl (%r14), %r15d
	movq $_gp,%r14
	addq $0, %r14
	imull %r15d, $4
	addq %r14d, %r15d
	movl (%r14), %r15d
	movl %r15d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq $_gp,%r14
	addq $60, %r14
	movq $_gp,%r15
	addq $60, %r15
	movl (%r15), bogus
	movl $1, %r15d
	addl %r15d, bogus
	movl bogus, (%r14)
	jmp label6
label7: nop
	leave
	ret
