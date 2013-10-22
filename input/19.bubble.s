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
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $32, %ebx
	movl %ebx, (%rcx)
	movl $1, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $11, %ebx
	movl %ebx, (%rcx)
	movl $2, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $111, %ebx
	movl %ebx, (%rcx)
	movl $3, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $88, %ebx
	movl %ebx, (%rcx)
	movl $4, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $11, %ebx
	movl %ebx, (%rcx)
	movl $5, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $44, %ebx
	movl %ebx, (%rcx)
	movl $6, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $33, %ebx
	movl %ebx, (%rcx)
	movl $7, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $33, %ebx
	movl %ebx, (%rcx)
	movl $8, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $22, %ebx
	movl %ebx, (%rcx)
	movl $9, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $77, %ebx
	movl %ebx, (%rcx)
	movl $10, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $45, %ebx
	movl %ebx, (%rcx)
	movl $11, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $65, %ebx
	movl %ebx, (%rcx)
	movl $12, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $76, %ebx
	movl %ebx, (%rcx)
	movl $13, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $87, %ebx
	movl %ebx, (%rcx)
	movl $14, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
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
	movq $_gp,%rbx
	addq $72, %rbx
	movq $_gp,%rcx
	addq $60, %rcx
	movl (%rcx), %r8d
	movl %r8d, (%rbx)
	movq $_gp,%rbx
	addq $64, %rbx
	movq $_gp,%rcx
	addq $60, %rcx
	movl (%rcx), %r8d
	movl $1, %ecx
	addl %ecx, %r8d
	movl %r8d, (%rbx)
label2: nop
	movq $_gp,%rbx
	addq $64, %rbx
	movl (%rbx), %ecx
	movl $15, %ebx
	cmpl %ebx, %ecx
	movl $0, %ecx
	movl $1, %ebx
	cmovl %ebx, %ecx
	movl $-1 , %ebx
	testl %ecx, %ebx
	je label3
	movq $_gp,%rbx
	addq $64, %rbx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $0, %rbx
	movl $4, %r8d
	imull %r8d, %ecx
	addl %ecx, %ebx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $72, %rbx
	movl (%rbx), %r8d
	movq $_gp,%rbx
	addq $0, %rbx
	movl $4, %r9d
	imull %r9d, %r8d
	addl %r8d, %ebx
	movl (%rbx), %r8d
	cmpl %r8d, %ecx
	movl $0, %ecx
	movl $1, %ebx
	cmovl %ebx, %ecx
	movl $-1 , %ebx
	testl %ecx, %ebx
	je label4
	movq $_gp,%rbx
	addq $72, %rbx
	movq $_gp,%rcx
	addq $64, %rcx
	movl (%rcx), %r8d
	movl %r8d, (%rbx)
	jmp label5
label4: nop
label5: nop
	movq $_gp,%rbx
	addq $64, %rbx
	movq $_gp,%rcx
	addq $64, %rcx
	movl (%rcx), %r8d
	movl $1, %ecx
	addl %ecx, %r8d
	movl %r8d, (%rbx)
	jmp label2
label3: nop
	movq $_gp,%rbx
	addq $68, %rbx
	movq $_gp,%rcx
	addq $60, %rcx
	movl (%rcx), %r8d
	movq $_gp,%rcx
	addq $0, %rcx
	movl $4, %r9d
	imull %r9d, %r8d
	addl %r8d, %ecx
	movl (%rcx), %r8d
	movl %r8d, (%rbx)
	movq $_gp,%rbx
	addq $60, %rbx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $0, %rbx
	movl $4, %r8d
	imull %r8d, %ecx
	addl %ecx, %ebx
	movq $_gp,%rcx
	addq $72, %rcx
	movl (%rcx), %r8d
	movq $_gp,%rcx
	addq $0, %rcx
	movl $4, %r9d
	imull %r9d, %r8d
	addl %r8d, %ecx
	movl (%rcx), %r8d
	movl %r8d, (%rbx)
	movq $_gp,%rbx
	addq $72, %rbx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $0, %rbx
	movl $4, %r8d
	imull %r8d, %ecx
	addl %ecx, %ebx
	movq $_gp,%rcx
	addq $68, %rcx
	movl (%rcx), %r8d
	movl %r8d, (%rbx)
	movq $_gp,%rbx
	addq $60, %rbx
	movq $_gp,%rcx
	addq $60, %rcx
	movl (%rcx), %r8d
	movl $1, %ecx
	addl %ecx, %r8d
	movl %r8d, (%rbx)
	jmp label0
label1: nop
	movq $_gp,%rbx
	addq $60, %rbx
	movl $0, %ecx
	movl %ecx, (%rbx)
label6: nop
	movq $_gp,%rbx
	addq $60, %rbx
	movl (%rbx), %ecx
	movl $15, %ebx
	cmpl %ebx, %ecx
	movl $0, %ecx
	movl $1, %ebx
	cmovl %ebx, %ecx
	movl $-1 , %ebx
	testl %ecx, %ebx
	je label7
	movq $_gp,%rbx
	addq $60, %rbx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $0, %rbx
	movl $4, %r8d
	imull %r8d, %ecx
	addl %ecx, %ebx
	movl (%rbx), %ecx
	movl %ecx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq $_gp,%rbx
	addq $60, %rbx
	movq $_gp,%rcx
	addq $60, %rcx
	movl (%rcx), %r8d
	movl $1, %ecx
	addl %ecx, %r8d
	movl %r8d, (%rbx)
	jmp label6
label7: nop
	leave
	ret
