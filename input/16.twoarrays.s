WhileToken  : WHILE
WhileExpr : LPAREN Expr RPAREN
WhileStatement  : WhileToken WhileExpr Statement
Statement : WhileStatement
WhileToken  : WHILE
WhileExpr : LPAREN Expr RPAREN
WhileStatement  : WhileToken WhileExpr Statement
Statement : WhileStatement
WhileToken  : WHILE
WhileExpr : LPAREN Expr RPAREN
WhileStatement  : WhileToken WhileExpr Statement
Statement : WhileStatement
WRITE LPAREN Expr RPAREN SEMICOLON
WRITE LPAREN Expr RPAREN SEMICOLON
WRITE LPAREN Expr RPAREN SEMICOLON
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
	movq $_gp,%rbx
	addq $0, %rbx
	movl $0, %ecx
	movl %ecx, (%rbx)
label0: nop
	movq $_gp,%rbx
	addq $0, %rbx
	movl (%rbx), %ecx
	movl $50, %ebx
	cmpl %ebx, %ecx
	movl $0, %ecx
	movl $1, %ebx
	cmovl %ebx, %ecx
	movl $-1 , %ebx
	testl %ecx, %ebx
	je label1
	movq $_gp,%r8
	addq $0, %r8
	movl (%r8), %r9d
	movl $0, %r8d
	movl %r8d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movq $_gp,%r8
	addq $0, %r8
	movl (%r8), %r10d
	movl $1, %r8d
	addl %r8d, %r10d
	movl %r10d, (%rbx)
	jmp label0
label1: nop
	movq $_gp,%rbx
	addq $0, %rbx
	movl $0, %r8d
	movl %r8d, (%rbx)
label2: nop
	movq $_gp,%rbx
	addq $0, %rbx
	movl (%rbx), %r8d
	movl $50, %ebx
	cmpl %ebx, %r8d
	movl $0, %r8d
	movl $1, %ebx
	cmovl %ebx, %r8d
	movl $-1 , %ebx
	testl %r8d, %ebx
	je label3
	movq $_gp,%r10
	addq $0, %r10
	movl (%r10), %r11d
	movq $_gp,%r10
	addq $0, %r10
	movl (%r10), %r12d
	movl $50, %r10d
	addl %r10d, %r12d
	movl %r12d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movq $_gp,%r10
	addq $0, %r10
	movl (%r10), %r12d
	movl $1, %r10d
	addl %r10d, %r12d
	movl %r12d, (%rbx)
	jmp label2
label3: nop
	movq $_gp,%rbx
	addq $0, %rbx
	movl $0, %r10d
	movl %r10d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl $0, %r10d
	movl %r10d, (%rbx)
label4: nop
	movq $_gp,%rbx
	addq $0, %rbx
	movl (%rbx), %r10d
	movl $100, %ebx
	cmpl %ebx, %r10d
	movl $0, %r10d
	movl $1, %ebx
	cmovl %ebx, %r10d
	movl $-1 , %ebx
	testl %r10d, %ebx
	je label5
	movq $_gp,%r12
	addq $0, %r12
	movl (%r12), %r13d
	movl $50, %r12d
	cmpl %r12d, %r13d
	movl $0, %r13d
	movl $1, %r12d
	cmovl %r12d, %r13d
	movl $-1 , %r12d
	testl %r13d, %r12d
	je label6
	movq $_gp,%r14
	addq $0, %r14
	movq $_gp,%r15
	addq $0, %r15
	movl (%r15), bogus
	movq $_gp,%r15
	addq $0, %r15
	movl (%r15), bogus
	movl (%rbx), %r15d
	addl %r15d, bogus
	movl bogus, (%r14)
	jmp label7
label6: nop
	movq $_gp,%rbx
	addq $0, %rbx
	movq $_gp,%r14
	addq $0, %r14
	movl (%r14), %r15d
	movq $_gp,%r14
	addq $0, %r14
	movl (%r14), bogus
	movl $50, %r14d
	subl %r14d, bogus
	movl (%rbx), %r14d
	addl %r14d, %r15d
	movl %r15d, (%rbx)
label7: nop
	movq $_gp,%rbx
	addq $0, %rbx
	movq $_gp,%r14
	addq $0, %r14
	movl (%r14), %r15d
	movl $1, %r14d
	addl %r14d, %r15d
	movl %r15d, (%rbx)
	jmp label4
label5: nop
	movq $_gp,%rbx
	addq $0, %rbx
	movl (%rbx), %r14d
	movl %r14d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movl $5, %ebx
	movl (%rbx), %r14d
	movl %r14d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movl $10, %ebx
	movl (%rbx), %r14d
	movl %r14d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	leave
	ret
