CompoundStatement : LBRACE StatementList RBRACE
Statement : CompoundStatement
Test    : LPAREN Expr RPAREN
WRITE LPAREN Expr RPAREN SEMICOLON
CompoundStatement : LBRACE StatementList RBRACE
TestAndThen : Test CompoundStatement
WRITE LPAREN Expr RPAREN SEMICOLON
CompoundStatement : LBRACE StatementList RBRACE
IfStatement : IF TestAndThen ELSE CompoundStatement
CompoundStatement : LBRACE StatementList RBRACE
Statement : CompoundStatement
	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.int_rformat: .string "%d"
	.comm _gp, 8, 4
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
	movl $10, %ebx
	cmpl %ebx, %ecx
	movl $0, %ecx
	movl $1, %ebx
	cmovl %ebx, %ecx
	movq $_gp,%rbx
	addq $0, %rbx
	movl (%rbx), %r8d
	movq $_gp,%rbx
	addq $0, %rbx
	movl (%rbx), %r9d
	movl %r9d, (%rbx)
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
	movl $10, %ebx
	cmpl %ebx, %r9d
	movl $0, %r9d
	movl $1, %ebx
	cmovl %ebx, %r9d
	movq $_gp,%rbx
	addq $0, %rbx
	movl (%rbx), %r10d
	movl $5, %ebx
	cmpl %ebx, %r10d
	movl $0, %r10d
	movl $1, %ebx
	cmovl %ebx, %r10d
	movl $-1 , %ebx
	testl %r10d, %ebx
	je label0
	movq $_gp,%r11
	addq $0, %r11
	movl (%r11), %r12d
	movl (%rbx), %r11d
	movl %r11d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	jmp label1
label0: nop
	movl $0, %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
label1: nop
	movq $_gp,%rbx
	addq $0, %rbx
	movq $_gp,%r11
	addq $0, %r11
	movl (%r11), %r13d
	movl $1, %r11d
	addl %r11d, %r13d
	movl %r13d, (%rbx)
	leave
	ret
