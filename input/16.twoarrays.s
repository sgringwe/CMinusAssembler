CompoundStatement : LBRACE StatementList RBRACE
Statement : CompoundStatement
CompoundStatement : LBRACE StatementList RBRACE
Statement : CompoundStatement
Test    : LPAREN Expr RPAREN
CompoundStatement : LBRACE StatementList RBRACE
TestAndThen : Test CompoundStatement
CompoundStatement : LBRACE StatementList RBRACE
IfStatement : IF TestAndThen ELSE CompoundStatement
CompoundStatement : LBRACE StatementList RBRACE
Statement : CompoundStatement
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
	movq $_gp,%rbx
	addq $0, %rbx
	movl (%rbx), %ecx
	movl $50, %ebx
	cmpl %ebx, %ecx
	movl $0, %ecx
	movl $1, %ebx
	cmovl %ebx, %ecx
	movq $_gp,%rbx
	addq $0, %rbx
	movl (%rbx), %r8d
	movl $0, %ebx
	movl %ebx, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movq $_gp,%r9
	addq $0, %r9
	movl (%r9), %r10d
	movl $1, %r9d
	addl %r9d, %r10d
	movl %r10d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl $0, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl (%rbx), %r9d
	movl $50, %ebx
	cmpl %ebx, %r9d
	movl $0, %r9d
	movl $1, %ebx
	cmovl %ebx, %r9d
	movq $_gp,%rbx
	addq $0, %rbx
	movl (%rbx), %r10d
	movq $_gp,%rbx
	addq $0, %rbx
	movl (%rbx), %r11d
	movl $50, %ebx
	addl %ebx, %r11d
	movl %r11d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movq $_gp,%r11
	addq $0, %r11
	movl (%r11), %r12d
	movl $1, %r11d
	addl %r11d, %r12d
	movl %r12d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl $0, %r11d
	movl %r11d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl $0, %r11d
	movl %r11d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl (%rbx), %r11d
	movl $100, %ebx
	cmpl %ebx, %r11d
	movl $0, %r11d
	movl $1, %ebx
	cmovl %ebx, %r11d
	movq $_gp,%rbx
	addq $0, %rbx
	movl (%rbx), %r12d
	movl $50, %ebx
	cmpl %ebx, %r12d
	movl $0, %r12d
	movl $1, %ebx
	cmovl %ebx, %r12d
	movl $-1 , %ebx
	testl %r12d, %ebx
	je label0
	movq $_gp,%r13
	addq $0, %r13
	movq $_gp,%r14
	addq $0, %r14
	movl (%r14), %r15d
	movq $_gp,%r14
	addq $0, %r14
	movl (%r14), bogus
	movl (%rbx), %r14d
	addl %r14d, %r15d
	movl %r15d, (%r13)
	jmp label1
label0: nop
	movq $_gp,%rbx
	addq $0, %rbx
	movq $_gp,%r13
	addq $0, %r13
	movl (%r13), %r14d
	movq $_gp,%r13
	addq $0, %r13
	movl (%r13), %r15d
	movl $50, %r13d
	subl %r13d, %r15d
	movl (%rbx), %r13d
	addl %r13d, %r14d
	movl %r14d, (%rbx)
label1: nop
	movq $_gp,%rbx
	addq $0, %rbx
	movq $_gp,%r13
	addq $0, %r13
	movl (%r13), %r14d
	movl $1, %r13d
	addl %r13d, %r14d
	movl %r14d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl (%rbx), %r13d
	movl %r13d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movl $5, %ebx
	movl (%rbx), %r13d
	movl %r13d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movl $10, %ebx
	movl (%rbx), %r13d
	movl %r13d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	leave
	ret
