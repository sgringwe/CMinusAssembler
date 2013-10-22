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
	imull %ebx, $4
	addq %ecx, %ebx
	movl $0, %ebx
	movl %ebx, (%rcx)
	movl $1, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
	movl $1, %ebx
	movl %ebx, (%rcx)
	movl $2, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
	movl $2, %ebx
	movl %ebx, (%rcx)
	movl $3, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
	movl $3, %ebx
	movl %ebx, (%rcx)
	movl $4, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
	movl $4, %ebx
	movl %ebx, (%rcx)
	movl $5, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
	movl $5, %ebx
	movl %ebx, (%rcx)
	movl $6, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
	movl $6, %ebx
	movl %ebx, (%rcx)
	movl $7, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
	movl $7, %ebx
	movl %ebx, (%rcx)
	movl $8, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
	movl $8, %ebx
	movl %ebx, (%rcx)
	movl $9, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
	movl $9, %ebx
	movl %ebx, (%rcx)
	movl $10, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
	movl $8, %ebx
	movl %ebx, (%rcx)
	movl $11, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
	movl $7, %ebx
	movl %ebx, (%rcx)
	movl $12, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
	movl $6, %ebx
	movl %ebx, (%rcx)
	movl $13, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
	movl $5, %ebx
	movl %ebx, (%rcx)
	movl $14, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
	movl $4, %ebx
	movl %ebx, (%rcx)
	movl $15, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
	movl $3, %ebx
	movl %ebx, (%rcx)
	movl $16, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
	movl $2, %ebx
	movl %ebx, (%rcx)
	movl $17, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
	movl $1, %ebx
	movl %ebx, (%rcx)
	movl $18, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
	movl $0, %ebx
	movl %ebx, (%rcx)
	movl $0, %ebx
	movq $_gp,%rcx
	addq $76, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
	movl $0, %ebx
	movl %ebx, (%rcx)
	movl $1, %ebx
	movq $_gp,%rcx
	addq $76, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
	movl $1, %ebx
	movl %ebx, (%rcx)
	movl $2, %ebx
	movq $_gp,%rcx
	addq $76, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
	movl $3, %ebx
	movl %ebx, (%rcx)
	movl $3, %ebx
	movq $_gp,%rcx
	addq $76, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
	movl $5, %ebx
	movl %ebx, (%rcx)
	movl $4, %ebx
	movq $_gp,%rcx
	addq $76, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
	movl $7, %ebx
	movl %ebx, (%rcx)
	movl $5, %ebx
	movq $_gp,%rcx
	addq $76, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
	movl $9, %ebx
	movl %ebx, (%rcx)
	movl $6, %ebx
	movq $_gp,%rcx
	addq $76, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
	movl $11, %ebx
	movl %ebx, (%rcx)
	movl $7, %ebx
	movq $_gp,%rcx
	addq $76, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
	movl $4, %ebx
	movl %ebx, (%rcx)
	movl $8, %ebx
	movq $_gp,%rcx
	addq $76, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
	movl $3, %ebx
	movl %ebx, (%rcx)
	movl $9, %ebx
	movq $_gp,%rcx
	addq $76, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
	movl $2, %ebx
	movl %ebx, (%rcx)
	movl $10, %ebx
	movq $_gp,%rcx
	addq $76, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
	movl $1, %ebx
	movl %ebx, (%rcx)
	movl $11, %ebx
	movq $_gp,%rcx
	addq $76, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
	movl $9, %ebx
	movl %ebx, (%rcx)
	movl $12, %ebx
	movq $_gp,%rcx
	addq $76, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
	movl $8, %ebx
	movl %ebx, (%rcx)
	movl $13, %ebx
	movq $_gp,%rcx
	addq $76, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
	movl $7, %ebx
	movl %ebx, (%rcx)
	movl $14, %ebx
	movq $_gp,%rcx
	addq $76, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
	movl $6, %ebx
	movl %ebx, (%rcx)
	movl $15, %ebx
	movq $_gp,%rcx
	addq $76, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
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
	imull %ecx, $4
	addq %ebx, %ecx
	movl (%rbx), %ecx
	movl $0, %ebx
	cmpl %ebx, %ecx
	movl $0, %ecx
	movl $1, %ebx
	cmovne %ebx, %ecx
	movl $-1 , %ebx
	testl %ecx, %ebx
	je label1
	movq $_gp,%r8
	addq $1740, %r8
	movl (%r8), %r9d
	movq $_gp,%r8
	addq $140, %r8
	imull %r9d, $4
	addq %r8d, %r9d
	movq $_gp,%r9
	addq $1740, %r9
	movl (%r9), %r10d
	movl %r10d, (%r8)
	movq $_gp,%r8
	addq $1740, %r8
	movq $_gp,%r9
	addq $1740, %r9
	movl (%r9), %r10d
	movl $1, %r9d
	addl %r9d, %r10d
	movl %r10d, (%r8)
	jmp label0
label1: nop
	movq $_gp,%r8
	addq $1740, %r8
	movq $_gp,%r9
	addq $1740, %r9
	movl (%r9), %r10d
	movl $1, %r9d
	subl %r9d, %r10d
	movl %r10d, (%r8)
	movq $_gp,%r8
	addq $1744, %r8
	movl $0, %r9d
	movl %r9d, (%r8)
label2: nop
	movq $_gp,%r8
	addq $1744, %r8
	movl (%r8), %r9d
	movl $1, %r8d
	addl %r8d, %r9d
	movq $_gp,%r8
	addq $76, %r8
	imull %r9d, $4
	addq %r8d, %r9d
	movl (%r8), %r9d
	movl $0, %r8d
	cmpl %r8d, %r9d
	movl $0, %r9d
	movl $1, %r8d
	cmovne %r8d, %r9d
	movl $-1 , %r8d
	testl %r9d, %r8d
	je label3
	movq $_gp,%r10
	addq $1744, %r10
	movl (%r10), %r11d
	movq $_gp,%r10
	addq $1756, %r10
	movl (%r10), %r12d
	imull %r12d, %r11d
	movq $_gp,%r10
	addq $140, %r10
	imull %r11d, $4
	addq %r10d, %r11d
	movq $_gp,%r11
	addq $1744, %r11
	movl (%r11), %r12d
	movl %r12d, (%r10)
	movq $_gp,%r10
	addq $1744, %r10
	movq $_gp,%r11
	addq $1744, %r11
	movl (%r11), %r12d
	movl $1, %r11d
	addl %r11d, %r12d
	movl %r12d, (%r10)
	jmp label2
label3: nop
	movq $_gp,%r10
	addq $1744, %r10
	movq $_gp,%r11
	addq $1744, %r11
	movl (%r11), %r12d
	movl $1, %r11d
	subl %r11d, %r12d
	movl %r12d, (%r10)
	movq $_gp,%r10
	addq $1748, %r10
	movl $1, %r11d
	movl %r11d, (%r10)
label4: nop
	movq $_gp,%r10
	addq $1748, %r10
	movl (%r10), %r11d
	movq $_gp,%r10
	addq $1744, %r10
	movl (%r10), %r12d
	cmpl %r12d, %r11d
	movl $0, %r11d
	movl $1, %r10d
	cmovle %r10d, %r11d
	movl $-1 , %r10d
	testl %r11d, %r10d
	je label5
	movq $_gp,%r12
	addq $1752, %r12
	movl $1, %r13d
	movl %r13d, (%r12)
label6: nop
	movq $_gp,%r12
	addq $1752, %r12
	movl (%r12), %r13d
	movq $_gp,%r12
	addq $1740, %r12
	movl (%r12), %r14d
	cmpl %r14d, %r13d
	movl $0, %r13d
	movl $1, %r12d
	cmovle %r12d, %r13d
	movl $-1 , %r12d
	testl %r13d, %r12d
	je label7
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
	movq $_gp,%r14
	addq $140, %r14
	imull %r15d, $4
	addq %r14d, %r15d
	movq $_gp,%r15
	addq $1748, %r15
	movl (%r15), bogus
	movl $1, %r15d
	subl %r15d, bogus
	movq $_gp,%r15
	addq $1756, %r15
	movl (%r15), bogus
	imull bogus, bogus
	movq $_gp,%r15
	addq $1752, %r15
	movl (%r15), bogus
	addl bogus, bogus
	movl $1, %r15d
	subl %r15d, bogus
	movq $_gp,%r15
	addq $140, %r15
	imull bogus, $4
	addq %r15d, bogus
	movl (%r15), bogus
	movl bogus, (%r14)
	movq $_gp,%r14
	addq $1748, %r14
	movl (%r14), %r15d
	movq $_gp,%r14
	addq $76, %r14
	imull %r15d, $4
	addq %r14d, %r15d
	movl (%r14), %r15d
	movq $_gp,%r14
	addq $1752, %r14
	movl (%r14), bogus
	movq $_gp,%r14
	addq $0, %r14
	imull bogus, $4
	addq %r14d, bogus
	movl (%r14), bogus
	cmpl bogus, %r15d
	movl $0, %r15d
	movl $1, %r14d
	cmovne %r14d, %r15d
	movl $-1 , %r14d
	testl %r15d, %r14d
	je label8
	movq $_gp,bogus
	addq $1748, bogus
	movl (bogus), bogus
	movq $_gp,bogus
	addq $1756, bogus
	movl (bogus), bogus
	imull bogus, bogus
	movq $_gp,bogus
	addq $1752, bogus
	movl (bogus), bogus
	addl bogus, bogus
	movq $_gp,bogus
	addq $140, bogus
	imull bogus, $4
	addq bogus, bogus
	movq $_gp,bogus
	addq $1748, bogus
	movl (bogus), bogus
	movq $_gp,bogus
	addq $1756, bogus
	movl (bogus), bogus
	imull bogus, bogus
	movq $_gp,bogus
	addq $1752, bogus
	movl (bogus), bogus
	addl bogus, bogus
	movq $_gp,bogus
	addq $140, bogus
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
	addq $1748, bogus
	movl (bogus), bogus
	movl $1, bogus
	subl bogus, bogus
	movq $_gp,bogus
	addq $1756, bogus
	movl (bogus), bogus
	imull bogus, bogus
	movq $_gp,bogus
	addq $1752, bogus
	movl (bogus), bogus
	addl bogus, bogus
	movq $_gp,bogus
	addq $140, bogus
	imull bogus, $4
	addq bogus, bogus
	movl (bogus), bogus
	movq $_gp,bogus
	addq $1748, bogus
	movl (bogus), bogus
	movq $_gp,bogus
	addq $1756, bogus
	movl (bogus), bogus
	imull bogus, bogus
	movq $_gp,bogus
	addq $1752, bogus
	movl (bogus), bogus
	addl bogus, bogus
	movq $_gp,bogus
	addq $140, bogus
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
	addq $1748, bogus
	movl (bogus), bogus
	movq $_gp,bogus
	addq $1756, bogus
	movl (bogus), bogus
	imull bogus, bogus
	movq $_gp,bogus
	addq $1752, bogus
	movl (bogus), bogus
	addl bogus, bogus
	movq $_gp,bogus
	addq $140, bogus
	imull bogus, $4
	addq bogus, bogus
	movq $_gp,bogus
	addq $1748, bogus
	movl (bogus), bogus
	movl $1, bogus
	subl bogus, bogus
	movq $_gp,bogus
	addq $1756, bogus
	movl (bogus), bogus
	imull bogus, bogus
	movq $_gp,bogus
	addq $1752, bogus
	movl (bogus), bogus
	addl bogus, bogus
	movq $_gp,bogus
	addq $140, bogus
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
	addq $1748, bogus
	movl (bogus), bogus
	movq $_gp,bogus
	addq $1756, bogus
	movl (bogus), bogus
	imull bogus, bogus
	movq $_gp,bogus
	addq $1752, bogus
	movl (bogus), bogus
	addl bogus, bogus
	movl $1, bogus
	subl bogus, bogus
	movq $_gp,bogus
	addq $140, bogus
	imull bogus, $4
	addq bogus, bogus
	movl (bogus), bogus
	movq $_gp,bogus
	addq $1748, bogus
	movl (bogus), bogus
	movq $_gp,bogus
	addq $1756, bogus
	movl (bogus), bogus
	imull bogus, bogus
	movq $_gp,bogus
	addq $1752, bogus
	movl (bogus), bogus
	addl bogus, bogus
	movq $_gp,bogus
	addq $140, bogus
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
	addq $1748, bogus
	movl (bogus), bogus
	movq $_gp,bogus
	addq $1756, bogus
	movl (bogus), bogus
	imull bogus, bogus
	movq $_gp,bogus
	addq $1752, bogus
	movl (bogus), bogus
	addl bogus, bogus
	movq $_gp,bogus
	addq $140, bogus
	imull bogus, $4
	addq bogus, bogus
	movq $_gp,bogus
	addq $1748, bogus
	movl (bogus), bogus
	movq $_gp,bogus
	addq $1756, bogus
	movl (bogus), bogus
	imull bogus, bogus
	movq $_gp,bogus
	addq $1752, bogus
	movl (bogus), bogus
	addl bogus, bogus
	movl $1, bogus
	subl bogus, bogus
	movq $_gp,bogus
	addq $140, bogus
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
	addq $1752, bogus
	movq $_gp,bogus
	addq $1752, bogus
	movl (bogus), bogus
	movl $1, bogus
	addl bogus, bogus
	movl bogus, (bogus)
	jmp label6
label7: nop
	movq $_gp,bogus
	addq $1748, bogus
	movq $_gp,bogus
	addq $1748, bogus
	movl (bogus), bogus
	movl $1, bogus
	addl bogus, bogus
	movl bogus, (bogus)
	jmp label4
label5: nop
	movq $_gp,bogus
	addq $1744, bogus
	movl (bogus), bogus
	movl bogus, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq $_gp,bogus
	addq $1740, bogus
	movl (bogus), bogus
	movl bogus, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq $_gp,bogus
	addq $1744, bogus
	movl (bogus), bogus
	movq $_gp,bogus
	addq $1756, bogus
	movl (bogus), bogus
	imull bogus, bogus
	movq $_gp,bogus
	addq $1740, bogus
	movl (bogus), bogus
	addl bogus, bogus
	movq $_gp,bogus
	addq $140, bogus
	imull bogus, $4
	addq bogus, bogus
	movl (bogus), bogus
	movl bogus, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	leave
	ret
