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
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $32, %ebx
	movl %ebx, (%rcx)
	movl $1, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $11, %ebx
	movl %ebx, (%rcx)
	movl $2, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $111, %ebx
	movl %ebx, (%rcx)
	movl $3, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $88, %ebx
	movl %ebx, (%rcx)
	movl $4, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $11, %ebx
	movl %ebx, (%rcx)
	movl $5, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $44, %ebx
	movl %ebx, (%rcx)
	movl $6, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $33, %ebx
	movl %ebx, (%rcx)
	movl $7, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $33, %ebx
	movl %ebx, (%rcx)
	movl $8, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $22, %ebx
	movl %ebx, (%rcx)
	movl $9, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $77, %ebx
	movl %ebx, (%rcx)
	movl $10, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $45, %ebx
	movl %ebx, (%rcx)
	movl $11, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $65, %ebx
	movl %ebx, (%rcx)
	movl $12, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $76, %ebx
	movl %ebx, (%rcx)
	movl $13, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %r8d, %ebx
	addl %ebx, %ecx
	movl $87, %ebx
	movl %ebx, (%rcx)
	movl $14, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
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
	movq $_gp,%r8
	addq $60, %r8
	movl (%r8), %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $64, %rbx
	movq $_gp,%r8
	addq $60, %r8
	movl (%r8), %r9d
	movl $1, %r8d
	addl %r8d, %r9d
	movl %r9d, (%rbx)
label2: nop
	movq $_gp,%rbx
	addq $64, %rbx
	movl (%rbx), %r8d
	movl $15, %ebx
	cmpl %ebx, %r8d
	movl $0, %r8d
	movl $1, %ebx
	cmovl %ebx, %r8d
	movl $-1 , %ebx
	testl %r8d, %ebx
	je label3
	movq $_gp,%rbx
	addq $64, %rbx
	movl (%rbx), %r9d
	movq $_gp,%rbx
	addq $0, %rbx
	imull %r10d, %r9d
	addl %r9d, %ebx
	movl (%rbx), %r9d
	movq $_gp,%rbx
	addq $72, %rbx
	movl (%rbx), %r10d
	movq $_gp,%rbx
	addq $0, %rbx
	imull %r11d, %r10d
	addl %r10d, %ebx
	movl (%rbx), %r10d
	cmpl %r10d, %r9d
	movl $0, %r9d
	movl $1, %ebx
	cmovl %ebx, %r9d
	movl $-1 , %ebx
	testl %r9d, %ebx
	je label4
	movq $_gp,%rbx
	addq $72, %rbx
	movq $_gp,%r10
	addq $64, %r10
	movl (%r10), %r11d
	movl %r11d, (%rbx)
	jmp label5
label4: nop
label5: nop
	movq $_gp,%rbx
	addq $64, %rbx
	movq $_gp,%r10
	addq $64, %r10
	movl (%r10), %r11d
	movl $1, %r10d
	addl %r10d, %r11d
	movl %r11d, (%rbx)
	jmp label2
label3: nop
	movq $_gp,%rbx
	addq $68, %rbx
	movq $_gp,%r10
	addq $60, %r10
	movl (%r10), %r11d
	movq $_gp,%r10
	addq $0, %r10
	imull %r12d, %r11d
	addl %r11d, %r10d
	movl (%r10), %r11d
	movl %r11d, (%rbx)
	movq $_gp,%rbx
	addq $60, %rbx
	movl (%rbx), %r10d
	movq $_gp,%rbx
	addq $0, %rbx
	imull %r11d, %r10d
	addl %r10d, %ebx
	movq $_gp,%r10
	addq $72, %r10
	movl (%r10), %r11d
	movq $_gp,%r10
	addq $0, %r10
	imull %r12d, %r11d
	addl %r11d, %r10d
	movl (%r10), %r11d
	movl %r11d, (%rbx)
	movq $_gp,%rbx
	addq $72, %rbx
	movl (%rbx), %r10d
	movq $_gp,%rbx
	addq $0, %rbx
	imull %r11d, %r10d
	addl %r10d, %ebx
	movq $_gp,%r10
	addq $68, %r10
	movl (%r10), %r11d
	movl %r11d, (%rbx)
	movq $_gp,%rbx
	addq $60, %rbx
	movq $_gp,%r10
	addq $60, %r10
	movl (%r10), %r11d
	movl $1, %r10d
	addl %r10d, %r11d
	movl %r11d, (%rbx)
	jmp label0
label1: nop
	movq $_gp,%rbx
	addq $60, %rbx
	movl $0, %r10d
	movl %r10d, (%rbx)
label6: nop
	movq $_gp,%rbx
	addq $60, %rbx
	movl (%rbx), %r10d
	movl $15, %ebx
	cmpl %ebx, %r10d
	movl $0, %r10d
	movl $1, %ebx
	cmovl %ebx, %r10d
	movl $-1 , %ebx
	testl %r10d, %ebx
	je label7
	movq $_gp,%rbx
	addq $60, %rbx
	movl (%rbx), %r11d
	movq $_gp,%rbx
	addq $0, %rbx
	imull %r12d, %r11d
	addl %r11d, %ebx
	movl (%rbx), %r11d
	movl %r11d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq $_gp,%rbx
	addq $60, %rbx
	movq $_gp,%r11
	addq $60, %r11
	movl (%r11), %r12d
	movl $1, %r11d
	addl %r11d, %r12d
	movl %r12d, (%rbx)
	jmp label6
label7: nop
	leave
	ret
