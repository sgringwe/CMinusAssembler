	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.int_rformat: .string "%d"
	.comm _gp, 1760, 4
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
	movl $0, %ebx
	movl %ebx, (%rcx)
	movl $1, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $1, %ebx
	movl %ebx, (%rcx)
	movl $2, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $2, %ebx
	movl %ebx, (%rcx)
	movl $3, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $3, %ebx
	movl %ebx, (%rcx)
	movl $4, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $4, %ebx
	movl %ebx, (%rcx)
	movl $5, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $5, %ebx
	movl %ebx, (%rcx)
	movl $6, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $6, %ebx
	movl %ebx, (%rcx)
	movl $7, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $7, %ebx
	movl %ebx, (%rcx)
	movl $8, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $8, %ebx
	movl %ebx, (%rcx)
	movl $9, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $9, %ebx
	movl %ebx, (%rcx)
	movl $10, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $8, %ebx
	movl %ebx, (%rcx)
	movl $11, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $7, %ebx
	movl %ebx, (%rcx)
	movl $12, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $6, %ebx
	movl %ebx, (%rcx)
	movl $13, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $5, %ebx
	movl %ebx, (%rcx)
	movl $14, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $4, %ebx
	movl %ebx, (%rcx)
	movl $15, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $3, %ebx
	movl %ebx, (%rcx)
	movl $16, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $2, %ebx
	movl %ebx, (%rcx)
	movl $17, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $1, %ebx
	movl %ebx, (%rcx)
	movl $18, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $0, %ebx
	movl %ebx, (%rcx)
	movl $0, %ebx
	movq $_gp,%rcx
	addq $76, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $0, %ebx
	movl %ebx, (%rcx)
	movl $1, %ebx
	movq $_gp,%rcx
	addq $76, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $1, %ebx
	movl %ebx, (%rcx)
	movl $2, %ebx
	movq $_gp,%rcx
	addq $76, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $3, %ebx
	movl %ebx, (%rcx)
	movl $3, %ebx
	movq $_gp,%rcx
	addq $76, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $5, %ebx
	movl %ebx, (%rcx)
	movl $4, %ebx
	movq $_gp,%rcx
	addq $76, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $7, %ebx
	movl %ebx, (%rcx)
	movl $5, %ebx
	movq $_gp,%rcx
	addq $76, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $9, %ebx
	movl %ebx, (%rcx)
	movl $6, %ebx
	movq $_gp,%rcx
	addq $76, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $11, %ebx
	movl %ebx, (%rcx)
	movl $7, %ebx
	movq $_gp,%rcx
	addq $76, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $4, %ebx
	movl %ebx, (%rcx)
	movl $8, %ebx
	movq $_gp,%rcx
	addq $76, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $3, %ebx
	movl %ebx, (%rcx)
	movl $9, %ebx
	movq $_gp,%rcx
	addq $76, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $2, %ebx
	movl %ebx, (%rcx)
	movl $10, %ebx
	movq $_gp,%rcx
	addq $76, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $1, %ebx
	movl %ebx, (%rcx)
	movl $11, %ebx
	movq $_gp,%rcx
	addq $76, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $9, %ebx
	movl %ebx, (%rcx)
	movl $12, %ebx
	movq $_gp,%rcx
	addq $76, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $8, %ebx
	movl %ebx, (%rcx)
	movl $13, %ebx
	movq $_gp,%rcx
	addq $76, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $7, %ebx
	movl %ebx, (%rcx)
	movl $14, %ebx
	movq $_gp,%rcx
	addq $76, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $6, %ebx
	movl %ebx, (%rcx)
	movl $15, %ebx
	movq $_gp,%rcx
	addq $76, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $0, %ebx
	movl %ebx, (%rcx)
	movq $_gp,%rbx
	addq $1756, %rbx
	movl $20, %ecx
	movl %ecx, (%rbx)
	movq $_gp,%rbx
	addq $1740, %rbx
	movl $0, %ecx
	movl %ecx, (%rbx)
label0: nop
	movq $_gp,%rbx
	addq $1740, %rbx
	movl (%rbx), %ecx
	movl $1, %ebx
	addl %ebx, %ecx
	movq $_gp,%rbx
	addq $0, %rbx
	movl $4, %r8d
	imull %r8d, %ecx
	addl %ecx, %ebx
	movl (%rbx), %ecx
	movl $0, %ebx
	cmpl %ebx, %ecx
	movl $0, %ecx
	movl $1, %ebx
	cmovne %ebx, %ecx
	movl $-1 , %ebx
	testl %ecx, %ebx
	je label1
	movq $_gp,%rbx
	addq $1740, %rbx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $140, %rbx
	movl $4, %r8d
	imull %r8d, %ecx
	addl %ecx, %ebx
	movq $_gp,%rcx
	addq $1740, %rcx
	movl (%rcx), %r8d
	movl %r8d, (%rbx)
	movq $_gp,%rbx
	addq $1740, %rbx
	movq $_gp,%rcx
	addq $1740, %rcx
	movl (%rcx), %r8d
	movl $1, %ecx
	addl %ecx, %r8d
	movl %r8d, (%rbx)
	jmp label0
label1: nop
	movq $_gp,%rbx
	addq $1740, %rbx
	movq $_gp,%rcx
	addq $1740, %rcx
	movl (%rcx), %r8d
	movl $1, %ecx
	subl %ecx, %r8d
	movl %r8d, (%rbx)
	movq $_gp,%rbx
	addq $1744, %rbx
	movl $0, %ecx
	movl %ecx, (%rbx)
label2: nop
	movq $_gp,%rbx
	addq $1744, %rbx
	movl (%rbx), %ecx
	movl $1, %ebx
	addl %ebx, %ecx
	movq $_gp,%rbx
	addq $76, %rbx
	movl $4, %r8d
	imull %r8d, %ecx
	addl %ecx, %ebx
	movl (%rbx), %ecx
	movl $0, %ebx
	cmpl %ebx, %ecx
	movl $0, %ecx
	movl $1, %ebx
	cmovne %ebx, %ecx
	movl $-1 , %ebx
	testl %ecx, %ebx
	je label3
	movq $_gp,%rbx
	addq $1744, %rbx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $1756, %rbx
	movl (%rbx), %r8d
	imull %r8d, %ecx
	movq $_gp,%rbx
	addq $140, %rbx
	movl $4, %r8d
	imull %r8d, %ecx
	addl %ecx, %ebx
	movq $_gp,%rcx
	addq $1744, %rcx
	movl (%rcx), %r8d
	movl %r8d, (%rbx)
	movq $_gp,%rbx
	addq $1744, %rbx
	movq $_gp,%rcx
	addq $1744, %rcx
	movl (%rcx), %r8d
	movl $1, %ecx
	addl %ecx, %r8d
	movl %r8d, (%rbx)
	jmp label2
label3: nop
	movq $_gp,%rbx
	addq $1744, %rbx
	movq $_gp,%rcx
	addq $1744, %rcx
	movl (%rcx), %r8d
	movl $1, %ecx
	subl %ecx, %r8d
	movl %r8d, (%rbx)
	movq $_gp,%rbx
	addq $1748, %rbx
	movl $1, %ecx
	movl %ecx, (%rbx)
label4: nop
	movq $_gp,%rbx
	addq $1748, %rbx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $1744, %rbx
	movl (%rbx), %r8d
	cmpl %r8d, %ecx
	movl $0, %ecx
	movl $1, %ebx
	cmovle %ebx, %ecx
	movl $-1 , %ebx
	testl %ecx, %ebx
	je label5
	movq $_gp,%rbx
	addq $1752, %rbx
	movl $1, %ecx
	movl %ecx, (%rbx)
label6: nop
	movq $_gp,%rbx
	addq $1752, %rbx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $1740, %rbx
	movl (%rbx), %r8d
	cmpl %r8d, %ecx
	movl $0, %ecx
	movl $1, %ebx
	cmovle %ebx, %ecx
	movl $-1 , %ebx
	testl %ecx, %ebx
	je label7
	movq $_gp,%rbx
	addq $1748, %rbx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $1756, %rbx
	movl (%rbx), %r8d
	imull %r8d, %ecx
	movq $_gp,%rbx
	addq $1752, %rbx
	movl (%rbx), %r8d
	addl %r8d, %ecx
	movq $_gp,%rbx
	addq $140, %rbx
	movl $4, %r8d
	imull %r8d, %ecx
	addl %ecx, %ebx
	movq $_gp,%rcx
	addq $1748, %rcx
	movl (%rcx), %r8d
	movl $1, %ecx
	subl %ecx, %r8d
	movq $_gp,%rcx
	addq $1756, %rcx
	movl (%rcx), %r9d
	imull %r9d, %r8d
	movq $_gp,%rcx
	addq $1752, %rcx
	movl (%rcx), %r9d
	addl %r9d, %r8d
	movl $1, %ecx
	subl %ecx, %r8d
	movq $_gp,%rcx
	addq $140, %rcx
	movl $4, %r9d
	imull %r9d, %r8d
	addl %r8d, %ecx
	movl (%rcx), %r8d
	movl %r8d, (%rbx)
	movq $_gp,%rbx
	addq $1748, %rbx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $76, %rbx
	movl $4, %r8d
	imull %r8d, %ecx
	addl %ecx, %ebx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $1752, %rbx
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
	cmovne %ebx, %ecx
	movl $-1 , %ebx
	testl %ecx, %ebx
	je label8
	movq $_gp,%rbx
	addq $1748, %rbx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $1756, %rbx
	movl (%rbx), %r8d
	imull %r8d, %ecx
	movq $_gp,%rbx
	addq $1752, %rbx
	movl (%rbx), %r8d
	addl %r8d, %ecx
	movq $_gp,%rbx
	addq $140, %rbx
	movl $4, %r8d
	imull %r8d, %ecx
	addl %ecx, %ebx
	movq $_gp,%rcx
	addq $1748, %rcx
	movl (%rcx), %r8d
	movq $_gp,%rcx
	addq $1756, %rcx
	movl (%rcx), %r9d
	imull %r9d, %r8d
	movq $_gp,%rcx
	addq $1752, %rcx
	movl (%rcx), %r9d
	addl %r9d, %r8d
	movq $_gp,%rcx
	addq $140, %rcx
	movl $4, %r9d
	imull %r9d, %r8d
	addl %r8d, %ecx
	movl (%rcx), %r8d
	movl $1, %ecx
	addl %ecx, %r8d
	movl %r8d, (%rbx)
	jmp label9
label8: nop
label9: nop
	movq $_gp,%rbx
	addq $1748, %rbx
	movl (%rbx), %ecx
	movl $1, %ebx
	subl %ebx, %ecx
	movq $_gp,%rbx
	addq $1756, %rbx
	movl (%rbx), %r8d
	imull %r8d, %ecx
	movq $_gp,%rbx
	addq $1752, %rbx
	movl (%rbx), %r8d
	addl %r8d, %ecx
	movq $_gp,%rbx
	addq $140, %rbx
	movl $4, %r8d
	imull %r8d, %ecx
	addl %ecx, %ebx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $1748, %rbx
	movl (%rbx), %r8d
	movq $_gp,%rbx
	addq $1756, %rbx
	movl (%rbx), %r9d
	imull %r9d, %r8d
	movq $_gp,%rbx
	addq $1752, %rbx
	movl (%rbx), %r9d
	addl %r9d, %r8d
	movq $_gp,%rbx
	addq $140, %rbx
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
	je label10
	movq $_gp,%rbx
	addq $1748, %rbx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $1756, %rbx
	movl (%rbx), %r8d
	imull %r8d, %ecx
	movq $_gp,%rbx
	addq $1752, %rbx
	movl (%rbx), %r8d
	addl %r8d, %ecx
	movq $_gp,%rbx
	addq $140, %rbx
	movl $4, %r8d
	imull %r8d, %ecx
	addl %ecx, %ebx
	movq $_gp,%rcx
	addq $1748, %rcx
	movl (%rcx), %r8d
	movl $1, %ecx
	subl %ecx, %r8d
	movq $_gp,%rcx
	addq $1756, %rcx
	movl (%rcx), %r9d
	imull %r9d, %r8d
	movq $_gp,%rcx
	addq $1752, %rcx
	movl (%rcx), %r9d
	addl %r9d, %r8d
	movq $_gp,%rcx
	addq $140, %rcx
	movl $4, %r9d
	imull %r9d, %r8d
	addl %r8d, %ecx
	movl (%rcx), %r8d
	movl $1, %ecx
	addl %ecx, %r8d
	movl %r8d, (%rbx)
	jmp label11
label10: nop
label11: nop
	movq $_gp,%rbx
	addq $1748, %rbx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $1756, %rbx
	movl (%rbx), %r8d
	imull %r8d, %ecx
	movq $_gp,%rbx
	addq $1752, %rbx
	movl (%rbx), %r8d
	addl %r8d, %ecx
	movl $1, %ebx
	subl %ebx, %ecx
	movq $_gp,%rbx
	addq $140, %rbx
	movl $4, %r8d
	imull %r8d, %ecx
	addl %ecx, %ebx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $1748, %rbx
	movl (%rbx), %r8d
	movq $_gp,%rbx
	addq $1756, %rbx
	movl (%rbx), %r9d
	imull %r9d, %r8d
	movq $_gp,%rbx
	addq $1752, %rbx
	movl (%rbx), %r9d
	addl %r9d, %r8d
	movq $_gp,%rbx
	addq $140, %rbx
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
	je label12
	movq $_gp,%rbx
	addq $1748, %rbx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $1756, %rbx
	movl (%rbx), %r8d
	imull %r8d, %ecx
	movq $_gp,%rbx
	addq $1752, %rbx
	movl (%rbx), %r8d
	addl %r8d, %ecx
	movq $_gp,%rbx
	addq $140, %rbx
	movl $4, %r8d
	imull %r8d, %ecx
	addl %ecx, %ebx
	movq $_gp,%rcx
	addq $1748, %rcx
	movl (%rcx), %r8d
	movq $_gp,%rcx
	addq $1756, %rcx
	movl (%rcx), %r9d
	imull %r9d, %r8d
	movq $_gp,%rcx
	addq $1752, %rcx
	movl (%rcx), %r9d
	addl %r9d, %r8d
	movl $1, %ecx
	subl %ecx, %r8d
	movq $_gp,%rcx
	addq $140, %rcx
	movl $4, %r9d
	imull %r9d, %r8d
	addl %r8d, %ecx
	movl (%rcx), %r8d
	movl $1, %ecx
	addl %ecx, %r8d
	movl %r8d, (%rbx)
	jmp label13
label12: nop
label13: nop
	movq $_gp,%rbx
	addq $1752, %rbx
	movq $_gp,%rcx
	addq $1752, %rcx
	movl (%rcx), %r8d
	movl $1, %ecx
	addl %ecx, %r8d
	movl %r8d, (%rbx)
	jmp label6
label7: nop
	movq $_gp,%rbx
	addq $1748, %rbx
	movq $_gp,%rcx
	addq $1748, %rcx
	movl (%rcx), %r8d
	movl $1, %ecx
	addl %ecx, %r8d
	movl %r8d, (%rbx)
	jmp label4
label5: nop
	movq $_gp,%rbx
	addq $1744, %rbx
	movl (%rbx), %ecx
	movl %ecx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq $_gp,%rbx
	addq $1740, %rbx
	movl (%rbx), %ecx
	movl %ecx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq $_gp,%rbx
	addq $1744, %rbx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $1756, %rbx
	movl (%rbx), %r8d
	imull %r8d, %ecx
	movq $_gp,%rbx
	addq $1740, %rbx
	movl (%rbx), %r8d
	addl %r8d, %ecx
	movq $_gp,%rbx
	addq $140, %rbx
	movl $4, %r8d
	imull %r8d, %ecx
	addl %ecx, %ebx
	movl (%rbx), %ecx
	movl %ecx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	leave
	ret
