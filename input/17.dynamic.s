emitTest: Expression register: 7
emitTest: Expression register: 7
emitTest: Expression register: 7
	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.int_rformat: .string "%d"
	.comm _gp, 32, 4
	.text
	.globl main
	.type main,@function
main:	nop
	pushq %rbp
	movq %rsp, %rbp
	movl $0, %ebx
	movl $0, %ecx
	movl %ecx, (%rbx)
	movl $1, %ebx
	movl $1, %ecx
	movl %ecx, (%rbx)
	movl $2, %ebx
	movl $2, %ecx
	movl %ecx, (%rbx)
	movl $3, %ebx
	movl $3, %ecx
	movl %ecx, (%rbx)
	movl $4, %ebx
	movl $4, %ecx
	movl %ecx, (%rbx)
	movl $5, %ebx
	movl $5, %ecx
	movl %ecx, (%rbx)
	movl $6, %ebx
	movl $6, %ecx
	movl %ecx, (%rbx)
	movl $7, %ebx
	movl $7, %ecx
	movl %ecx, (%rbx)
	movl $8, %ebx
	movl $8, %ecx
	movl %ecx, (%rbx)
	movl $9, %ebx
	movl $9, %ecx
	movl %ecx, (%rbx)
	movl $10, %ebx
	movl $8, %ecx
	movl %ecx, (%rbx)
	movl $11, %ebx
	movl $7, %ecx
	movl %ecx, (%rbx)
	movl $12, %ebx
	movl $6, %ecx
	movl %ecx, (%rbx)
	movl $13, %ebx
	movl $5, %ecx
	movl %ecx, (%rbx)
	movl $14, %ebx
	movl $4, %ecx
	movl %ecx, (%rbx)
	movl $15, %ebx
	movl $3, %ecx
	movl %ecx, (%rbx)
	movl $16, %ebx
	movl $2, %ecx
	movl %ecx, (%rbx)
	movl $17, %ebx
	movl $1, %ecx
	movl %ecx, (%rbx)
	movl $18, %ebx
	movl $0, %ecx
	movl %ecx, (%rbx)
	movl $0, %ebx
	movl $0, %ecx
	movl %ecx, (%rbx)
	movl $1, %ebx
	movl $1, %ecx
	movl %ecx, (%rbx)
	movl $2, %ebx
	movl $3, %ecx
	movl %ecx, (%rbx)
	movl $3, %ebx
	movl $5, %ecx
	movl %ecx, (%rbx)
	movl $4, %ebx
	movl $7, %ecx
	movl %ecx, (%rbx)
	movl $5, %ebx
	movl $9, %ecx
	movl %ecx, (%rbx)
	movl $6, %ebx
	movl $11, %ecx
	movl %ecx, (%rbx)
	movl $7, %ebx
	movl $4, %ecx
	movl %ecx, (%rbx)
	movl $8, %ebx
	movl $3, %ecx
	movl %ecx, (%rbx)
	movl $9, %ebx
	movl $2, %ecx
	movl %ecx, (%rbx)
	movl $10, %ebx
	movl $1, %ecx
	movl %ecx, (%rbx)
	movl $11, %ebx
	movl $9, %ecx
	movl %ecx, (%rbx)
	movl $12, %ebx
	movl $8, %ecx
	movl %ecx, (%rbx)
	movl $13, %ebx
	movl $7, %ecx
	movl %ecx, (%rbx)
	movl $14, %ebx
	movl $6, %ecx
	movl %ecx, (%rbx)
	movl $15, %ebx
	movl $0, %ecx
	movl %ecx, (%rbx)
	movq $_gp,%rbx
	addq $28, %rbx
	movl $20, %ecx
	movl %ecx, (%rbx)
	movq $_gp,%rbx
	addq $12, %rbx
	movl $0, %ecx
	movl %ecx, (%rbx)
	movq $_gp,%rbx
	addq $12, %rbx
	movl (%rbx), %ecx
	movl $1, %ebx
	addl %ebx, %ecx
	movl (%rbx), %ebx
	movl $0, %ebx
	cmpl %ebx, %ebx
	movl $0, %ebx
	movl $1, %ebx
	cmovne %ebx, %ebx
	movq $_gp,%rbx
	addq $12, %rbx
	movl (%rbx), %r8d
	movq $_gp,%rbx
	addq $12, %rbx
	movl (%rbx), %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $12, %rbx
	movq $_gp,%r9
	addq $12, %r9
	movl (%r9), %r10d
	movl $1, %r9d
	addl %r9d, %r10d
	movl %r10d, (%rbx)
	movq $_gp,%rbx
	addq $12, %rbx
	movq $_gp,%r9
	addq $12, %r9
	movl (%r9), %r10d
	movl $1, %r9d
	subl %r9d, %r10d
	movl %r10d, (%rbx)
	movq $_gp,%rbx
	addq $16, %rbx
	movl $0, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $16, %rbx
	movl (%rbx), %r9d
	movl $1, %ebx
	addl %ebx, %r9d
	movl (%rbx), %ebx
	movl $0, %ebx
	cmpl %ebx, %ebx
	movl $0, %ebx
	movl $1, %ebx
	cmovne %ebx, %ebx
	movq $_gp,%rbx
	addq $16, %rbx
	movl (%rbx), %r10d
	movq $_gp,%rbx
	addq $28, %rbx
	movl (%rbx), %r11d
	imull %r11d, %r10d
	movq $_gp,%rbx
	addq $16, %rbx
	movl (%rbx), %r11d
	movl %r11d, (%rbx)
	movq $_gp,%rbx
	addq $16, %rbx
	movq $_gp,%r11
	addq $16, %r11
	movl (%r11), %r12d
	movl $1, %r11d
	addl %r11d, %r12d
	movl %r12d, (%rbx)
	movq $_gp,%rbx
	addq $16, %rbx
	movq $_gp,%r11
	addq $16, %r11
	movl (%r11), %r12d
	movl $1, %r11d
	subl %r11d, %r12d
	movl %r12d, (%rbx)
	movq $_gp,%rbx
	addq $20, %rbx
	movl $1, %r11d
	movl %r11d, (%rbx)
	movq $_gp,%rbx
	addq $20, %rbx
	movl (%rbx), %r11d
	movq $_gp,%rbx
	addq $16, %rbx
	movl (%rbx), %r12d
	cmpl %r12d, %r11d
	movl $0, %r11d
	movl $1, %ebx
	cmovle %ebx, %r11d
	movq $_gp,%rbx
	addq $24, %rbx
	movl $1, %r12d
	movl %r12d, (%rbx)
	movq $_gp,%rbx
	addq $24, %rbx
	movl (%rbx), %r12d
	movq $_gp,%rbx
	addq $12, %rbx
	movl (%rbx), %r13d
	cmpl %r13d, %r12d
	movl $0, %r12d
	movl $1, %ebx
	cmovle %ebx, %r12d
	movq $_gp,%rbx
	addq $20, %rbx
	movl (%rbx), %r13d
	movq $_gp,%rbx
	addq $28, %rbx
	movl (%rbx), %r14d
	imull %r14d, %r13d
	movq $_gp,%rbx
	addq $24, %rbx
	movl (%rbx), %r14d
	addl %r14d, %r13d
	movq $_gp,%rbx
	addq $20, %rbx
	movl (%rbx), %r14d
	movl $1, %ebx
	subl %ebx, %r14d
	movq $_gp,%rbx
	addq $28, %rbx
	movl (%rbx), %r15d
	imull %r15d, %r14d
	movq $_gp,%rbx
	addq $24, %rbx
	movl (%rbx), %r15d
	addl %r15d, %r14d
	movl $1, %ebx
	subl %ebx, %r14d
	movl (%rbx), %ebx
	movl %ebx, (%rbx)
	movq $_gp,%rbx
	addq $20, %rbx
	movl (%rbx), %r15d
	movl (%rbx), %ebx
	movq $_gp,%rbx
	addq $24, %rbx
	movl (%rbx), bogus
	movl (%rbx), %ebx
	cmpl %ebx, %ebx
	movl $0, %ebx
	movl $1, %ebx
	cmovne %ebx, %ebx
	movl $-1 %ebx
	testl %ebx %ebx
	je .label0
	movq $_gp,bogus
	addq $20, bogus
	movl (bogus), bogus
	movq $_gp,bogus
	addq $28, bogus
	movl (bogus), bogus
	imull bogus, bogus
	movq $_gp,bogus
	addq $24, bogus
	movl (bogus), bogus
	addl bogus, bogus
	movq $_gp,bogus
	addq $20, bogus
	movl (bogus), bogus
	movq $_gp,bogus
	addq $28, bogus
	movl (bogus), bogus
	imull bogus, bogus
	movq $_gp,bogus
	addq $24, bogus
	movl (bogus), bogus
	addl bogus, bogus
	movl (%rbx), bogus
	movl $1, %ebx
	addl %ebx, bogus
	movl bogus, (%rbx)
label0: nop
	movq $_gp,%rbx
	addq $20, %rbx
	movl (%rbx), bogus
	movl $1, %ebx
	subl %ebx, bogus
	movq $_gp,%rbx
	addq $28, %rbx
	movl (%rbx), bogus
	imull bogus, bogus
	movq $_gp,%rbx
	addq $24, %rbx
	movl (%rbx), bogus
	addl bogus, bogus
	movl (%rbx), %ebx
	movq $_gp,%rbx
	addq $20, %rbx
	movl (%rbx), bogus
	movq $_gp,%rbx
	addq $28, %rbx
	movl (%rbx), bogus
	imull bogus, bogus
	movq $_gp,%rbx
	addq $24, %rbx
	movl (%rbx), bogus
	addl bogus, bogus
	movl (%rbx), %ebx
	cmpl %ebx, %ebx
	movl $0, %ebx
	movl $1, %ebx
	cmovl %ebx, %ebx
	movl $-1 %ebx
	testl %ebx %ebx
	je .label1
	movq $_gp,bogus
	addq $20, bogus
	movl (bogus), bogus
	movq $_gp,bogus
	addq $28, bogus
	movl (bogus), bogus
	imull bogus, bogus
	movq $_gp,bogus
	addq $24, bogus
	movl (bogus), bogus
	addl bogus, bogus
	movq $_gp,bogus
	addq $20, bogus
	movl (bogus), bogus
	movl $1, bogus
	subl bogus, bogus
	movq $_gp,bogus
	addq $28, bogus
	movl (bogus), bogus
	imull bogus, bogus
	movq $_gp,bogus
	addq $24, bogus
	movl (bogus), bogus
	addl bogus, bogus
	movl (%rbx), bogus
	movl $1, %ebx
	addl %ebx, bogus
	movl bogus, (%rbx)
label1: nop
	movq $_gp,%rbx
	addq $20, %rbx
	movl (%rbx), bogus
	movq $_gp,%rbx
	addq $28, %rbx
	movl (%rbx), bogus
	imull bogus, bogus
	movq $_gp,%rbx
	addq $24, %rbx
	movl (%rbx), bogus
	addl bogus, bogus
	movl $1, %ebx
	subl %ebx, bogus
	movl (%rbx), %ebx
	movq $_gp,%rbx
	addq $20, %rbx
	movl (%rbx), bogus
	movq $_gp,%rbx
	addq $28, %rbx
	movl (%rbx), bogus
	imull bogus, bogus
	movq $_gp,%rbx
	addq $24, %rbx
	movl (%rbx), bogus
	addl bogus, bogus
	movl (%rbx), %ebx
	cmpl %ebx, %ebx
	movl $0, %ebx
	movl $1, %ebx
	cmovl %ebx, %ebx
	movl $-1 %ebx
	testl %ebx %ebx
	je .label2
	movq $_gp,bogus
	addq $20, bogus
	movl (bogus), bogus
	movq $_gp,bogus
	addq $28, bogus
	movl (bogus), bogus
	imull bogus, bogus
	movq $_gp,bogus
	addq $24, bogus
	movl (bogus), bogus
	addl bogus, bogus
	movq $_gp,bogus
	addq $20, bogus
	movl (bogus), bogus
	movq $_gp,bogus
	addq $28, bogus
	movl (bogus), bogus
	imull bogus, bogus
	movq $_gp,bogus
	addq $24, bogus
	movl (bogus), bogus
	addl bogus, bogus
	movl $1, bogus
	subl bogus, bogus
	movl (%rbx), bogus
	movl $1, %ebx
	addl %ebx, bogus
	movl bogus, (%rbx)
label2: nop
	movq $_gp,%rbx
	addq $24, %rbx
	movq $_gp,bogus
	addq $24, bogus
	movl (bogus), bogus
	movl $1, bogus
	addl bogus, bogus
	movl bogus, (%rbx)
	movq $_gp,%rbx
	addq $20, %rbx
	movq $_gp,bogus
	addq $20, bogus
	movl (bogus), bogus
	movl $1, bogus
	addl bogus, bogus
	movl bogus, (%rbx)
	movq $_gp,%rbx
	addq $16, %rbx
	movl (%rbx), bogus
	movl bogus, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq $_gp,%rbx
	addq $12, %rbx
	movl (%rbx), bogus
	movl bogus, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq $_gp,%rbx
	addq $16, %rbx
	movl (%rbx), bogus
	movq $_gp,%rbx
	addq $28, %rbx
	movl (%rbx), bogus
	imull bogus, bogus
	movq $_gp,%rbx
	addq $12, %rbx
	movl (%rbx), bogus
	addl bogus, bogus
	movl (%rbx), %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	leave
	ret
