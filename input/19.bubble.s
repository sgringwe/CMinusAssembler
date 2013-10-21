WhileToken  : WHILE
WhileExpr : LPAREN Expr RPAREN
WhileToken  : WHILE
WhileExpr : LPAREN Expr RPAREN
WhileStatement  : WhileToken WhileExpr Statement
Statement : WhileStatement
WhileStatement  : WhileToken WhileExpr Statement
Statement : WhileStatement
WhileToken  : WHILE
WhileExpr : LPAREN Expr RPAREN
WRITE LPAREN Expr RPAREN SEMICOLON
WhileStatement  : WhileToken WhileExpr Statement
Statement : WhileStatement
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
label0: nop
	movq $_gp,%rbx
	addq $4, %rbx
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
	addq $16, %r8
	movq $_gp,%r9
	addq $4, %r9
	movl (%r9), %r10d
	movl %r10d, (%r8)
	movq $_gp,%r8
	addq $8, %r8
	movq $_gp,%r9
	addq $4, %r9
	movl (%r9), %r10d
	movl $1, %r9d
	addl %r9d, %r10d
	movl %r10d, (%r8)
label2: nop
	movq $_gp,%r8
	addq $8, %r8
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
	addq $8, %r10
	movl (%r10), %r11d
	movl (%rbx), %r10d
	movq $_gp,%rbx
	addq $16, %rbx
	movl (%rbx), %r12d
	movl (%rbx), %ebx
	cmpl %ebx, %r10d
	movl $0, %r10d
	movl $1, %ebx
	cmovl %ebx, %r10d
	movl $-1 , %ebx
	testl %r10d, %ebx
	je label4
	movq $_gp,%r13
	addq $16, %r13
	movq $_gp,%r14
	addq $8, %r14
	movl (%r14), %r15d
	movl %r15d, (%r13)
	jmp label5
label4: nop
label5: nop
	movq $_gp,%r13
	addq $8, %r13
	movq $_gp,%r14
	addq $8, %r14
	movl (%r14), %r15d
	movl $1, %r14d
	addl %r14d, %r15d
	movl %r15d, (%r13)
	jmp label2
label3: nop
	movq $_gp,%r13
	addq $12, %r13
	movq $_gp,%r14
	addq $4, %r14
	movl (%r14), %r15d
	movl (%rbx), %r14d
	movl %r14d, (%r13)
	movq $_gp,%rbx
	addq $4, %rbx
	movl (%rbx), %r13d
	movq $_gp,%rbx
	addq $16, %rbx
	movl (%rbx), %r14d
	movl (%rbx), %ebx
	movl %ebx, (%rbx)
	movq $_gp,%rbx
	addq $16, %rbx
	movl (%rbx), bogus
	movq $_gp,%rbx
	addq $12, %rbx
	movl (%rbx), bogus
	movl bogus, (%rbx)
	movq $_gp,%rbx
	addq $4, %rbx
	movq $_gp,bogus
	addq $4, bogus
	movl (bogus), bogus
	movl $1, bogus
	addl bogus, bogus
	movl bogus, (%rbx)
	jmp label0
label1: nop
	movq $_gp,%rbx
	addq $4, %rbx
	movl $0, bogus
	movl bogus, (%rbx)
label6: nop
	movq $_gp,%rbx
	addq $4, %rbx
	movl (%rbx), bogus
	movl $15, %ebx
	cmpl %ebx, bogus
	movl $0, bogus
	movl $1, %ebx
	cmovl %ebx, bogus
	movl $-1 , %ebx
	testl bogus, %ebx
	je label7
	movq $_gp,bogus
	addq $4, bogus
	movl (bogus), bogus
	movl (%rbx), bogus
	movl bogus, %esi
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
	jmp label6
label7: nop
	leave
	ret
