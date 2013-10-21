CompoundStatement : LBRACE StatementList RBRACE
Statement : CompoundStatement
CompoundStatement : LBRACE StatementList RBRACE
Statement : CompoundStatement
Test    : LPAREN Expr RPAREN
CompoundStatement : LBRACE StatementList RBRACE
TestAndThen : Test CompoundStatement
IF TestAndThen
Test    : LPAREN Expr RPAREN
CompoundStatement : LBRACE StatementList RBRACE
TestAndThen : Test CompoundStatement
IF TestAndThen
Test    : LPAREN Expr RPAREN
CompoundStatement : LBRACE StatementList RBRACE
TestAndThen : Test CompoundStatement
IF TestAndThen
CompoundStatement : LBRACE StatementList RBRACE
Statement : CompoundStatement
CompoundStatement : LBRACE StatementList RBRACE
Statement : CompoundStatement
WRITE LPAREN Expr RPAREN SEMICOLON
	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.int_rformat: .string "%d"
	.comm _gp, 28, 4
	.text
	.globl main
	.type main,@function
main:	nop
	pushq %rbp
	movq %rsp, %rbp
	movq $_gp,%rbx
	addq $16, %rbx
	movl $30, %ecx
	movl %ecx, (%rbx)
	movq $_gp,%rbx
	addq $12, %rbx
	movl $30, %ecx
	movl %ecx, (%rbx)
	movq $_gp,%rbx
	addq $20, %rbx
	movl $0, %ecx
	movl %ecx, (%rbx)
	movq $_gp,%rbx
	addq $20, %rbx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $16, %rbx
	movl (%rbx), %r8d
	cmpl %r8d, %ecx
	movl $0, %ecx
	movl $1, %ebx
	cmovl %ebx, %ecx
	movq $_gp,%rbx
	addq $20, %rbx
	movl (%rbx), %r8d
	movq $_gp,%rbx
	addq $16, %rbx
	movl (%rbx), %r9d
	imull %r9d, %r8d
	movq $_gp,%rbx
	addq $20, %rbx
	movl (%rbx), %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $20, %rbx
	movl (%rbx), %r9d
	movq $_gp,%rbx
	addq $20, %rbx
	movl (%rbx), %r10d
	movl $1, %ebx
	addl %ebx, %r10d
	movl %r10d, (%rbx)
	movq $_gp,%rbx
	addq $20, %rbx
	movq $_gp,%r10
	addq $20, %r10
	movl (%r10), %r11d
	movl $1, %r10d
	addl %r10d, %r11d
	movl %r11d, (%rbx)
	movq $_gp,%rbx
	addq $24, %rbx
	movl $0, %r10d
	movl %r10d, (%rbx)
	movq $_gp,%rbx
	addq $24, %rbx
	movl (%rbx), %r10d
	movq $_gp,%rbx
	addq $12, %rbx
	movl (%rbx), %r11d
	cmpl %r11d, %r10d
	movl $0, %r10d
	movl $1, %ebx
	cmovl %ebx, %r10d
	movq $_gp,%rbx
	addq $24, %rbx
	movl (%rbx), %r11d
	movq $_gp,%rbx
	addq $24, %rbx
	movl (%rbx), %r12d
	movl %r12d, (%rbx)
	movq $_gp,%rbx
	addq $24, %rbx
	movl (%rbx), %r12d
	movl $2, %ebx
	movq $_gp,%r13
	addq $24, %r13
	movl (%r13), %r14d
	movl $1, %r13d
	addl %r13d, %r14d
	imull %r14d, %ebx
	movl %ebx, (%rbx)
	movq $_gp,%rbx
	addq $24, %rbx
	movq $_gp,%r13
	addq $24, %r13
	movl (%r13), %r14d
	movl $1, %r13d
	addl %r13d, %r14d
	movl %r14d, (%rbx)
	movq $_gp,%rbx
	addq $20, %rbx
	movl $1, %r13d
	movl %r13d, (%rbx)
	movq $_gp,%rbx
	addq $20, %rbx
	movl (%rbx), %r13d
	movq $_gp,%rbx
	addq $16, %rbx
	movl (%rbx), %r14d
	cmpl %r14d, %r13d
	movl $0, %r13d
	movl $1, %ebx
	cmovl %ebx, %r13d
	movq $_gp,%rbx
	addq $24, %rbx
	movl $1, %r14d
	movl %r14d, (%rbx)
	movq $_gp,%rbx
	addq $24, %rbx
	movl (%rbx), %r14d
	movq $_gp,%rbx
	addq $12, %rbx
	movl (%rbx), %r15d
	cmpl %r15d, %r14d
	movl $0, %r14d
	movl $1, %ebx
	cmovl %ebx, %r14d
	movq $_gp,%rbx
	addq $20, %rbx
	movl (%rbx), %r15d
	movq $_gp,%rbx
	addq $16, %rbx
	movl (%rbx), bogus
	imull bogus, %r15d
	movq $_gp,%rbx
	addq $24, %rbx
	movl (%rbx), bogus
	addl bogus, %r15d
	movq $_gp,%rbx
	addq $20, %rbx
	movl (%rbx), bogus
	movl $1, %ebx
	subl %ebx, bogus
	movq $_gp,%rbx
	addq $16, %rbx
	movl (%rbx), bogus
	imull bogus, bogus
	movq $_gp,%rbx
	addq $24, %rbx
	movl (%rbx), bogus
	addl bogus, bogus
	movl $1, %ebx
	subl %ebx, bogus
	movl (%rbx), %ebx
	movl %ebx, (%rbx)
	movq $_gp,%rbx
	addq $20, %rbx
	movl (%rbx), bogus
	movl (%rbx), %ebx
	movq $_gp,%rbx
	addq $24, %rbx
	movl (%rbx), bogus
	movl (%rbx), %ebx
	cmpl %ebx, %ebx
	movl $0, %ebx
	movl $1, %ebx
	cmovne %ebx, %ebx
	movl $-1 , %ebx
	testl %ebx, %ebx
	je label0
	movq $_gp,bogus
	addq $20, bogus
	movl (bogus), bogus
	movq $_gp,bogus
	addq $16, bogus
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
	addq $16, bogus
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
	jmp label1
label0: nop
label1: nop
	movq $_gp,%rbx
	addq $20, %rbx
	movl (%rbx), bogus
	movl $1, %ebx
	subl %ebx, bogus
	movq $_gp,%rbx
	addq $16, %rbx
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
	addq $16, %rbx
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
	movl $-1 , %ebx
	testl %ebx, %ebx
	je label2
	movq $_gp,bogus
	addq $20, bogus
	movl (bogus), bogus
	movq $_gp,bogus
	addq $16, bogus
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
	addq $16, bogus
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
	jmp label3
label2: nop
label3: nop
	movq $_gp,%rbx
	addq $20, %rbx
	movl (%rbx), bogus
	movq $_gp,%rbx
	addq $16, %rbx
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
	addq $16, %rbx
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
	movl $-1 , %ebx
	testl %ebx, %ebx
	je label4
	movq $_gp,bogus
	addq $20, bogus
	movl (bogus), bogus
	movq $_gp,bogus
	addq $16, bogus
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
	addq $16, bogus
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
	jmp label5
label4: nop
label5: nop
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
	movl $899, %ebx
	movl (%rbx), bogus
	movl bogus, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	leave
	ret
