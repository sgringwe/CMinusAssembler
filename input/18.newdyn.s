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
	movq $_gp,%rbx
	addq $3848, %rbx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $3844, %rbx
	movl (%rbx), %r8d
	imull %r8d, %ecx
	movq $_gp,%rbx
	addq $240, %rbx
	movl $4, %r8d
	imull %r8d, %ecx
	addl %ecx, %ebx
	movq $_gp,%rcx
	addq $3848, %rcx
	movl (%rcx), %r8d
	movl %r8d, (%rbx)
	movq $_gp,%rbx
	addq $3848, %rbx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $0, %rbx
	movl $4, %r8d
	imull %r8d, %ecx
	addl %ecx, %ebx
	movq $_gp,%rcx
	addq $3848, %rcx
	movl (%rcx), %r8d
	movl $1, %ecx
	addl %ecx, %r8d
	movl %r8d, (%rbx)
	movq $_gp,%rbx
	addq $3848, %rbx
	movq $_gp,%rcx
	addq $3848, %rcx
	movl (%rcx), %r8d
	movl $1, %ecx
	addl %ecx, %r8d
	movl %r8d, (%rbx)
	jmp label0
label1: nop
	movq $_gp,%rbx
	addq $3852, %rbx
	movl $0, %ecx
	movl %ecx, (%rbx)
label2: nop
	movq $_gp,%rbx
	addq $3852, %rbx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $3840, %rbx
	movl (%rbx), %r8d
	cmpl %r8d, %ecx
	movl $0, %ecx
	movl $1, %ebx
	cmovl %ebx, %ecx
	movl $-1 , %ebx
	testl %ecx, %ebx
	je label3
	movq $_gp,%rbx
	addq $3852, %rbx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $240, %rbx
	movl $4, %r8d
	imull %r8d, %ecx
	addl %ecx, %ebx
	movq $_gp,%rcx
	addq $3852, %rcx
	movl (%rcx), %r8d
	movl %r8d, (%rbx)
	movq $_gp,%rbx
	addq $3852, %rbx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $120, %rbx
	movl $4, %r8d
	imull %r8d, %ecx
	addl %ecx, %ebx
	movl $2, %ecx
	movq $_gp,%r8
	addq $3852, %r8
	movl (%r8), %r9d
	movl $1, %r8d
	addl %r8d, %r9d
	imull %r9d, %ecx
	movl %ecx, (%rbx)
	movq $_gp,%rbx
	addq $3852, %rbx
	movq $_gp,%rcx
	addq $3852, %rcx
	movl (%rcx), %r8d
	movl $1, %ecx
	addl %ecx, %r8d
	movl %r8d, (%rbx)
	jmp label2
label3: nop
	movq $_gp,%rbx
	addq $3848, %rbx
	movl $1, %ecx
	movl %ecx, (%rbx)
label4: nop
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
	je label5
	movq $_gp,%rbx
	addq $3852, %rbx
	movl $1, %ecx
	movl %ecx, (%rbx)
label6: nop
	movq $_gp,%rbx
	addq $3852, %rbx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $3840, %rbx
	movl (%rbx), %r8d
	cmpl %r8d, %ecx
	movl $0, %ecx
	movl $1, %ebx
	cmovl %ebx, %ecx
	movl $-1 , %ebx
	testl %ecx, %ebx
	je label7
	movq $_gp,%rbx
	addq $3848, %rbx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $3844, %rbx
	movl (%rbx), %r8d
	imull %r8d, %ecx
	movq $_gp,%rbx
	addq $3852, %rbx
	movl (%rbx), %r8d
	addl %r8d, %ecx
	movq $_gp,%rbx
	addq $240, %rbx
	movl $4, %r8d
	imull %r8d, %ecx
	addl %ecx, %ebx
	movq $_gp,%rcx
	addq $3848, %rcx
	movl (%rcx), %r8d
	movl $1, %ecx
	subl %ecx, %r8d
	movq $_gp,%rcx
	addq $3844, %rcx
	movl (%rcx), %r9d
	imull %r9d, %r8d
	movq $_gp,%rcx
	addq $3852, %rcx
	movl (%rcx), %r9d
	addl %r9d, %r8d
	movl $1, %ecx
	subl %ecx, %r8d
	movq $_gp,%rcx
	addq $240, %rcx
	movl $4, %r9d
	imull %r9d, %r8d
	addl %r8d, %ecx
	movl (%rcx), %r8d
	movl %r8d, (%rbx)
	movq $_gp,%rbx
	addq $3848, %rbx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $120, %rbx
	movl $4, %r8d
	imull %r8d, %ecx
	addl %ecx, %ebx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $3852, %rbx
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
	addq $3848, %rbx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $3844, %rbx
	movl (%rbx), %r8d
	imull %r8d, %ecx
	movq $_gp,%rbx
	addq $3852, %rbx
	movl (%rbx), %r8d
	addl %r8d, %ecx
	movq $_gp,%rbx
	addq $240, %rbx
	movl $4, %r8d
	imull %r8d, %ecx
	addl %ecx, %ebx
	movq $_gp,%rcx
	addq $3848, %rcx
	movl (%rcx), %r8d
	movq $_gp,%rcx
	addq $3844, %rcx
	movl (%rcx), %r9d
	imull %r9d, %r8d
	movq $_gp,%rcx
	addq $3852, %rcx
	movl (%rcx), %r9d
	addl %r9d, %r8d
	movq $_gp,%rcx
	addq $240, %rcx
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
	addq $3848, %rbx
	movl (%rbx), %ecx
	movl $1, %ebx
	subl %ebx, %ecx
	movq $_gp,%rbx
	addq $3844, %rbx
	movl (%rbx), %r8d
	imull %r8d, %ecx
	movq $_gp,%rbx
	addq $3852, %rbx
	movl (%rbx), %r8d
	addl %r8d, %ecx
	movq $_gp,%rbx
	addq $240, %rbx
	movl $4, %r8d
	imull %r8d, %ecx
	addl %ecx, %ebx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $3848, %rbx
	movl (%rbx), %r8d
	movq $_gp,%rbx
	addq $3844, %rbx
	movl (%rbx), %r9d
	imull %r9d, %r8d
	movq $_gp,%rbx
	addq $3852, %rbx
	movl (%rbx), %r9d
	addl %r9d, %r8d
	movq $_gp,%rbx
	addq $240, %rbx
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
	addq $3848, %rbx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $3844, %rbx
	movl (%rbx), %r8d
	imull %r8d, %ecx
	movq $_gp,%rbx
	addq $3852, %rbx
	movl (%rbx), %r8d
	addl %r8d, %ecx
	movq $_gp,%rbx
	addq $240, %rbx
	movl $4, %r8d
	imull %r8d, %ecx
	addl %ecx, %ebx
	movq $_gp,%rcx
	addq $3848, %rcx
	movl (%rcx), %r8d
	movl $1, %ecx
	subl %ecx, %r8d
	movq $_gp,%rcx
	addq $3844, %rcx
	movl (%rcx), %r9d
	imull %r9d, %r8d
	movq $_gp,%rcx
	addq $3852, %rcx
	movl (%rcx), %r9d
	addl %r9d, %r8d
	movq $_gp,%rcx
	addq $240, %rcx
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
	addq $3848, %rbx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $3844, %rbx
	movl (%rbx), %r8d
	imull %r8d, %ecx
	movq $_gp,%rbx
	addq $3852, %rbx
	movl (%rbx), %r8d
	addl %r8d, %ecx
	movl $1, %ebx
	subl %ebx, %ecx
	movq $_gp,%rbx
	addq $240, %rbx
	movl $4, %r8d
	imull %r8d, %ecx
	addl %ecx, %ebx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $3848, %rbx
	movl (%rbx), %r8d
	movq $_gp,%rbx
	addq $3844, %rbx
	movl (%rbx), %r9d
	imull %r9d, %r8d
	movq $_gp,%rbx
	addq $3852, %rbx
	movl (%rbx), %r9d
	addl %r9d, %r8d
	movq $_gp,%rbx
	addq $240, %rbx
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
	addq $3848, %rbx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $3844, %rbx
	movl (%rbx), %r8d
	imull %r8d, %ecx
	movq $_gp,%rbx
	addq $3852, %rbx
	movl (%rbx), %r8d
	addl %r8d, %ecx
	movq $_gp,%rbx
	addq $240, %rbx
	movl $4, %r8d
	imull %r8d, %ecx
	addl %ecx, %ebx
	movq $_gp,%rcx
	addq $3848, %rcx
	movl (%rcx), %r8d
	movq $_gp,%rcx
	addq $3844, %rcx
	movl (%rcx), %r9d
	imull %r9d, %r8d
	movq $_gp,%rcx
	addq $3852, %rcx
	movl (%rcx), %r9d
	addl %r9d, %r8d
	movl $1, %ecx
	subl %ecx, %r8d
	movq $_gp,%rcx
	addq $240, %rcx
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
	addq $3852, %rbx
	movq $_gp,%rcx
	addq $3852, %rcx
	movl (%rcx), %r8d
	movl $1, %ecx
	addl %ecx, %r8d
	movl %r8d, (%rbx)
	jmp label6
label7: nop
	movq $_gp,%rbx
	addq $3848, %rbx
	movq $_gp,%rcx
	addq $3848, %rcx
	movl (%rcx), %r8d
	movl $1, %ecx
	addl %ecx, %r8d
	movl %r8d, (%rbx)
	jmp label4
label5: nop
	movl $899, %ebx
	movq $_gp,%rcx
	addq $240, %rcx
	movl $4, %r8d
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl (%rcx), %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	leave
	ret
