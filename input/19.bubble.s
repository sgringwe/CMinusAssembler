emitTest: Expression register: 6
	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.int_rformat: .string "%d"
	.comm _gp, 20, 4
	.text
	.globl main
	.type main,@function
main:	nop
	pushq %rbp
	movq %rsp, %rbp
	movl $0, %ebx
	movl $32, %ecx
	movl %ecx, (%rbx)
	movl $1, %ebx
	movl $11, %ecx
	movl %ecx, (%rbx)
	movl $2, %ebx
	movl $111, %ecx
	movl %ecx, (%rbx)
	movl $3, %ebx
	movl $88, %ecx
	movl %ecx, (%rbx)
	movl $4, %ebx
	movl $11, %ecx
	movl %ecx, (%rbx)
	movl $5, %ebx
	movl $44, %ecx
	movl %ecx, (%rbx)
	movl $6, %ebx
	movl $33, %ecx
	movl %ecx, (%rbx)
	movl $7, %ebx
	movl $33, %ecx
	movl %ecx, (%rbx)
	movl $8, %ebx
	movl $22, %ecx
	movl %ecx, (%rbx)
	movl $9, %ebx
	movl $77, %ecx
	movl %ecx, (%rbx)
	movl $10, %ebx
	movl $45, %ecx
	movl %ecx, (%rbx)
	movl $11, %ebx
	movl $65, %ecx
	movl %ecx, (%rbx)
	movl $12, %ebx
	movl $76, %ecx
	movl %ecx, (%rbx)
	movl $13, %ebx
	movl $87, %ecx
	movl %ecx, (%rbx)
	movl $14, %ebx
	movl $34, %ecx
	movl %ecx, (%rbx)
	movq $_gp,%rbx
	addq $4, %rbx
	movl $0, %ecx
	movl %ecx, (%rbx)
	movq $_gp,%rbx
	addq $4, %rbx
	movl (%rbx), %ecx
	movl $14, %ebx
	cmpl %ebx, %ecx
	movl $0, %ecx
	movl $1, %ebx
	cmovl %ebx, %ecx
	movq $_gp,%rbx
	addq $16, %rbx
	movq $_gp,%r8
	addq $4, %r8
	movl (%r8), %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $8, %rbx
	movq $_gp,%r8
	addq $4, %r8
	movl (%r8), %r9d
	movl $1, %r8d
	addl %r8d, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $8, %rbx
	movl (%rbx), %r8d
	movl $15, %ebx
	cmpl %ebx, %r8d
	movl $0, %r8d
	movl $1, %ebx
	cmovl %ebx, %r8d
	movq $_gp,%rbx
	addq $8, %rbx
	movl (%rbx), %r9d
	movl (%rbx), %ebx
	movq $_gp,%rbx
	addq $16, %rbx
	movl (%rbx), %r10d
	movl (%rbx), %ebx
	cmpl %ebx, %ebx
	movl $0, %ebx
	movl $1, %ebx
	cmovl %ebx, %ebx
	movl $-1 %ebx
	testl %ebx %ebx
	je .label0
	movq $_gp,%r11
	addq $16, %r11
	movq $_gp,%r12
	addq $8, %r12
	movl (%r12), %r13d
	movl %r13d, (%r11)
label0: nop
	movq $_gp,%r11
	addq $8, %r11
	movq $_gp,%r12
	addq $8, %r12
	movl (%r12), %r13d
	movl $1, %r12d
	addl %r12d, %r13d
	movl %r13d, (%r11)
	movq $_gp,%r11
	addq $12, %r11
	movq $_gp,%r12
	addq $4, %r12
	movl (%r12), %r13d
	movl (%rbx), %r12d
	movl %r12d, (%r11)
	movq $_gp,%rbx
	addq $4, %rbx
	movl (%rbx), %r11d
	movq $_gp,%rbx
	addq $16, %rbx
	movl (%rbx), %r12d
	movl (%rbx), %ebx
	movl %ebx, (%rbx)
	movq $_gp,%rbx
	addq $16, %rbx
	movl (%rbx), %r14d
	movq $_gp,%rbx
	addq $12, %rbx
	movl (%rbx), %r15d
	movl %r15d, (%rbx)
	movq $_gp,%rbx
	addq $4, %rbx
	movq $_gp,%r15
	addq $4, %r15
	movl (%r15), bogus
	movl $1, %r15d
	addl %r15d, bogus
	movl bogus, (%rbx)
	movq $_gp,%rbx
	addq $4, %rbx
	movl $0, %r15d
	movl %r15d, (%rbx)
	movq $_gp,%rbx
	addq $4, %rbx
	movl (%rbx), %r15d
	movl $15, %ebx
	cmpl %ebx, %r15d
	movl $0, %r15d
	movl $1, %ebx
	cmovl %ebx, %r15d
	movq $_gp,%rbx
	addq $4, %rbx
	movl (%rbx), bogus
	movl (%rbx), %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq $_gp,%rbx
	addq $4, %rbx
	movq $_gp,bogus
	addq $4, bogus
	movl (bogus), bogus
	movl $1, bogus
	addl bogus, bogus
	movl bogus, (%rbx)
	leave
	ret
