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
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $0, %ebx
	movl %ebx, (%rcx)
	movl $1, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $1, %ebx
	movl %ebx, (%rcx)
	movl $2, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $2, %ebx
	movl %ebx, (%rcx)
	movl $3, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $3, %ebx
	movl %ebx, (%rcx)
	movl $4, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $4, %ebx
	movl %ebx, (%rcx)
	movl $5, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $5, %ebx
	movl %ebx, (%rcx)
	movl $6, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $6, %ebx
	movl %ebx, (%rcx)
	movl $7, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $7, %ebx
	movl %ebx, (%rcx)
	movl $8, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $8, %ebx
	movl %ebx, (%rcx)
	movl $9, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $9, %ebx
	movl %ebx, (%rcx)
	movl $10, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $8, %ebx
	movl %ebx, (%rcx)
	movl $11, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $7, %ebx
	movl %ebx, (%rcx)
	movl $12, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $6, %ebx
	movl %ebx, (%rcx)
	movl $13, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $5, %ebx
	movl %ebx, (%rcx)
	movl $14, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $4, %ebx
	movl %ebx, (%rcx)
	movl $15, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $3, %ebx
	movl %ebx, (%rcx)
	movl $16, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $2, %ebx
	movl %ebx, (%rcx)
	movl $17, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $1, %ebx
	movl %ebx, (%rcx)
	movl $18, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $0, %ebx
	movl %ebx, (%rcx)
	movl $0, %ebx
	movq $_gp,%rcx
	addq $76, %rcx
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $0, %ebx
	movl %ebx, (%rcx)
	movl $1, %ebx
	movq $_gp,%rcx
	addq $76, %rcx
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $1, %ebx
	movl %ebx, (%rcx)
	movl $2, %ebx
	movq $_gp,%rcx
	addq $76, %rcx
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $3, %ebx
	movl %ebx, (%rcx)
	movl $3, %ebx
	movq $_gp,%rcx
	addq $76, %rcx
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $5, %ebx
	movl %ebx, (%rcx)
	movl $4, %ebx
	movq $_gp,%rcx
	addq $76, %rcx
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $7, %ebx
	movl %ebx, (%rcx)
	movl $5, %ebx
	movq $_gp,%rcx
	addq $76, %rcx
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $9, %ebx
	movl %ebx, (%rcx)
	movl $6, %ebx
	movq $_gp,%rcx
	addq $76, %rcx
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $11, %ebx
	movl %ebx, (%rcx)
	movl $7, %ebx
	movq $_gp,%rcx
	addq $76, %rcx
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $4, %ebx
	movl %ebx, (%rcx)
	movl $8, %ebx
	movq $_gp,%rcx
	addq $76, %rcx
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $3, %ebx
	movl %ebx, (%rcx)
	movl $9, %ebx
	movq $_gp,%rcx
	addq $76, %rcx
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $2, %ebx
	movl %ebx, (%rcx)
	movl $10, %ebx
	movq $_gp,%rcx
	addq $76, %rcx
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $1, %ebx
	movl %ebx, (%rcx)
	movl $11, %ebx
	movq $_gp,%rcx
	addq $76, %rcx
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $9, %ebx
	movl %ebx, (%rcx)
	movl $12, %ebx
	movq $_gp,%rcx
	addq $76, %rcx
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $8, %ebx
	movl %ebx, (%rcx)
	movl $13, %ebx
	movq $_gp,%rcx
	addq $76, %rcx
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $7, %ebx
	movl %ebx, (%rcx)
	movl $14, %ebx
	movq $_gp,%rcx
	addq $76, %rcx
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $6, %ebx
	movl %ebx, (%rcx)
	movl $15, %ebx
	movq $_gp,%rcx
	addq $76, %rcx
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
	movl (%rbx), %r8d
	movq $_gp,%rbx
	addq $140, %rbx
	imull %r9d, %r8d
	addl %r8d, %ebx
	movq $_gp,%r8
	addq $1740, %r8
	movl (%r8), %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $1740, %rbx
	movq $_gp,%r8
	addq $1740, %r8
	movl (%r8), %r9d
	movl $1, %r8d
	addl %r8d, %r9d
	movl %r9d, (%rbx)
	jmp label0
label1: nop
	movq $_gp,%rbx
	addq $1740, %rbx
	movq $_gp,%r8
	addq $1740, %r8
	movl (%r8), %r9d
	movl $1, %r8d
	subl %r8d, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $1744, %rbx
	movl $0, %r8d
	movl %r8d, (%rbx)
label2: nop
	movq $_gp,%rbx
	addq $1744, %rbx
	movl (%rbx), %r8d
	movl $1, %ebx
	addl %ebx, %r8d
	movq $_gp,%rbx
	addq $76, %rbx
	imull %r9d, %r8d
	addl %r8d, %ebx
	movl (%rbx), %r8d
	movl $0, %ebx
	cmpl %ebx, %r8d
	movl $0, %r8d
	movl $1, %ebx
	cmovne %ebx, %r8d
	movl $-1 , %ebx
	testl %r8d, %ebx
	je label3
	movq $_gp,%rbx
	addq $1744, %rbx
	movl (%rbx), %r9d
	movq $_gp,%rbx
	addq $1756, %rbx
	movl (%rbx), %r10d
	imull %r10d, %r9d
	movq $_gp,%rbx
	addq $140, %rbx
	imull %r10d, %r9d
	addl %r9d, %ebx
	movq $_gp,%r9
	addq $1744, %r9
	movl (%r9), %r10d
	movl %r10d, (%rbx)
	movq $_gp,%rbx
	addq $1744, %rbx
	movq $_gp,%r9
	addq $1744, %r9
	movl (%r9), %r10d
	movl $1, %r9d
	addl %r9d, %r10d
	movl %r10d, (%rbx)
	jmp label2
label3: nop
	movq $_gp,%rbx
	addq $1744, %rbx
	movq $_gp,%r9
	addq $1744, %r9
	movl (%r9), %r10d
	movl $1, %r9d
	subl %r9d, %r10d
	movl %r10d, (%rbx)
	movq $_gp,%rbx
	addq $1748, %rbx
	movl $1, %r9d
	movl %r9d, (%rbx)
label4: nop
	movq $_gp,%rbx
	addq $1748, %rbx
	movl (%rbx), %r9d
	movq $_gp,%rbx
	addq $1744, %rbx
	movl (%rbx), %r10d
	cmpl %r10d, %r9d
	movl $0, %r9d
	movl $1, %ebx
	cmovle %ebx, %r9d
	movl $-1 , %ebx
	testl %r9d, %ebx
	je label5
	movq $_gp,%rbx
	addq $1752, %rbx
	movl $1, %r10d
	movl %r10d, (%rbx)
label6: nop
	movq $_gp,%rbx
	addq $1752, %rbx
	movl (%rbx), %r10d
	movq $_gp,%rbx
	addq $1740, %rbx
	movl (%rbx), %r11d
	cmpl %r11d, %r10d
	movl $0, %r10d
	movl $1, %ebx
	cmovle %ebx, %r10d
	movl $-1 , %ebx
	testl %r10d, %ebx
	je label7
	movq $_gp,%rbx
	addq $1748, %rbx
	movl (%rbx), %r11d
	movq $_gp,%rbx
	addq $1756, %rbx
	movl (%rbx), %r12d
	imull %r12d, %r11d
	movq $_gp,%rbx
	addq $1752, %rbx
	movl (%rbx), %r12d
	addl %r12d, %r11d
	movq $_gp,%rbx
	addq $140, %rbx
	imull %r12d, %r11d
	addl %r11d, %ebx
	movq $_gp,%r11
	addq $1748, %r11
	movl (%r11), %r12d
	movl $1, %r11d
	subl %r11d, %r12d
	movq $_gp,%r11
	addq $1756, %r11
	movl (%r11), %r13d
	imull %r13d, %r12d
	movq $_gp,%r11
	addq $1752, %r11
	movl (%r11), %r13d
	addl %r13d, %r12d
	movl $1, %r11d
	subl %r11d, %r12d
	movq $_gp,%r11
	addq $140, %r11
	imull %r13d, %r12d
	addl %r12d, %r11d
	movl (%r11), %r12d
	movl %r12d, (%rbx)
	movq $_gp,%rbx
	addq $1748, %rbx
	movl (%rbx), %r11d
	movq $_gp,%rbx
	addq $76, %rbx
	imull %r12d, %r11d
	addl %r11d, %ebx
	movl (%rbx), %r11d
	movq $_gp,%rbx
	addq $1752, %rbx
	movl (%rbx), %r12d
	movq $_gp,%rbx
	addq $0, %rbx
	imull %r13d, %r12d
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
	addq $1748, %rbx
	movl (%rbx), %r12d
	movq $_gp,%rbx
	addq $1756, %rbx
	movl (%rbx), %r13d
	imull %r13d, %r12d
	movq $_gp,%rbx
	addq $1752, %rbx
	movl (%rbx), %r13d
	addl %r13d, %r12d
	movq $_gp,%rbx
	addq $140, %rbx
	imull %r13d, %r12d
	addl %r12d, %ebx
	movq $_gp,%r12
	addq $1748, %r12
	movl (%r12), %r13d
	movq $_gp,%r12
	addq $1756, %r12
	movl (%r12), %r14d
	imull %r14d, %r13d
	movq $_gp,%r12
	addq $1752, %r12
	movl (%r12), %r14d
	addl %r14d, %r13d
	movq $_gp,%r12
	addq $140, %r12
	imull %r14d, %r13d
	addl %r13d, %r12d
	movl (%r12), %r13d
	movl $1, %r12d
	addl %r12d, %r13d
	movl %r13d, (%rbx)
	jmp label9
label8: nop
label9: nop
	movq $_gp,%rbx
	addq $1748, %rbx
	movl (%rbx), %r12d
	movl $1, %ebx
	subl %ebx, %r12d
	movq $_gp,%rbx
	addq $1756, %rbx
	movl (%rbx), %r13d
	imull %r13d, %r12d
	movq $_gp,%rbx
	addq $1752, %rbx
	movl (%rbx), %r13d
	addl %r13d, %r12d
	movq $_gp,%rbx
	addq $140, %rbx
	imull %r13d, %r12d
	addl %r12d, %ebx
	movl (%rbx), %r12d
	movq $_gp,%rbx
	addq $1748, %rbx
	movl (%rbx), %r13d
	movq $_gp,%rbx
	addq $1756, %rbx
	movl (%rbx), %r14d
	imull %r14d, %r13d
	movq $_gp,%rbx
	addq $1752, %rbx
	movl (%rbx), %r14d
	addl %r14d, %r13d
	movq $_gp,%rbx
	addq $140, %rbx
	imull %r14d, %r13d
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
	addq $1748, %rbx
	movl (%rbx), %r13d
	movq $_gp,%rbx
	addq $1756, %rbx
	movl (%rbx), %r14d
	imull %r14d, %r13d
	movq $_gp,%rbx
	addq $1752, %rbx
	movl (%rbx), %r14d
	addl %r14d, %r13d
	movq $_gp,%rbx
	addq $140, %rbx
	imull %r14d, %r13d
	addl %r13d, %ebx
	movq $_gp,%r13
	addq $1748, %r13
	movl (%r13), %r14d
	movl $1, %r13d
	subl %r13d, %r14d
	movq $_gp,%r13
	addq $1756, %r13
	movl (%r13), %r15d
	imull %r15d, %r14d
	movq $_gp,%r13
	addq $1752, %r13
	movl (%r13), %r15d
	addl %r15d, %r14d
	movq $_gp,%r13
	addq $140, %r13
	imull %r15d, %r14d
	addl %r14d, %r13d
	movl (%r13), %r14d
	movl $1, %r13d
	addl %r13d, %r14d
	movl %r14d, (%rbx)
	jmp label11
label10: nop
label11: nop
	movq $_gp,%rbx
	addq $1748, %rbx
	movl (%rbx), %r13d
	movq $_gp,%rbx
	addq $1756, %rbx
	movl (%rbx), %r14d
	imull %r14d, %r13d
	movq $_gp,%rbx
	addq $1752, %rbx
	movl (%rbx), %r14d
	addl %r14d, %r13d
	movl $1, %ebx
	subl %ebx, %r13d
	movq $_gp,%rbx
	addq $140, %rbx
	imull %r14d, %r13d
	addl %r13d, %ebx
	movl (%rbx), %r13d
	movq $_gp,%rbx
	addq $1748, %rbx
	movl (%rbx), %r14d
	movq $_gp,%rbx
	addq $1756, %rbx
	movl (%rbx), %r15d
	imull %r15d, %r14d
	movq $_gp,%rbx
	addq $1752, %rbx
	movl (%rbx), %r15d
	addl %r15d, %r14d
	movq $_gp,%rbx
	addq $140, %rbx
	imull %r15d, %r14d
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
	addq $1748, %rbx
	movl (%rbx), %r14d
	movq $_gp,%rbx
	addq $1756, %rbx
	movl (%rbx), %r15d
	imull %r15d, %r14d
	movq $_gp,%rbx
	addq $1752, %rbx
	movl (%rbx), %r15d
	addl %r15d, %r14d
	movq $_gp,%rbx
	addq $140, %rbx
	imull %r15d, %r14d
	addl %r14d, %ebx
	movq $_gp,%r14
	addq $1748, %r14
	movl (%r14), %r15d
	movq $_gp,%r14
	addq $1756, %r14
	movl (%r14), bogus
	imull bogus, %r15d
	movq $_gp,%r14
	addq $1752, %r14
	movl (%r14), bogus
	addl bogus, %r15d
	movl $1, %r14d
	subl %r14d, %r15d
	movq $_gp,%r14
	addq $140, %r14
	imull bogus, %r15d
	addl %r15d, %r14d
	movl (%r14), %r15d
	movl $1, %r14d
	addl %r14d, %r15d
	movl %r15d, (%rbx)
	jmp label13
label12: nop
label13: nop
	movq $_gp,%rbx
	addq $1752, %rbx
	movq $_gp,%r14
	addq $1752, %r14
	movl (%r14), %r15d
	movl $1, %r14d
	addl %r14d, %r15d
	movl %r15d, (%rbx)
	jmp label6
label7: nop
	movq $_gp,%rbx
	addq $1748, %rbx
	movq $_gp,%r14
	addq $1748, %r14
	movl (%r14), %r15d
	movl $1, %r14d
	addl %r14d, %r15d
	movl %r15d, (%rbx)
	jmp label4
label5: nop
	movq $_gp,%rbx
	addq $1744, %rbx
	movl (%rbx), %r14d
	movl %r14d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq $_gp,%rbx
	addq $1740, %rbx
	movl (%rbx), %r14d
	movl %r14d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq $_gp,%rbx
	addq $1744, %rbx
	movl (%rbx), %r14d
	movq $_gp,%rbx
	addq $1756, %rbx
	movl (%rbx), %r15d
	imull %r15d, %r14d
	movq $_gp,%rbx
	addq $1740, %rbx
	movl (%rbx), %r15d
	addl %r15d, %r14d
	movq $_gp,%rbx
	addq $140, %rbx
	imull %r15d, %r14d
	addl %r14d, %ebx
	movl (%rbx), %r14d
	movl %r14d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	leave
	ret
