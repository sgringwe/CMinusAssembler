WhileToken  : WHILE
WhileExpr : LPAREN Expr RPAREN
WRITE LPAREN Expr RPAREN SEMICOLON
WhileStatement  : WhileToken WhileExpr Statement
Statement : WhileStatement
WRITE LPAREN Expr RPAREN SEMICOLON
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
	movl $1, %ecx
	movl %ecx, (%rbx)
	movq $_gp,%rbx
	addq $4, %rbx
	movl $0, %ecx
	movl %ecx, (%rbx)
label0: nop
	movq $_gp,%rbx
	addq $0, %rbx
	movl (%rbx), %ecx
	movl $10, %ebx
	cmpl %ebx, %ecx
	movl $0, %ecx
	movl $1, %ebx
	cmovle %ebx, %ecx
	movl $-1 , %ebx
	testl %ecx, %ebx
	je label1
	movq $_gp,%r8
	addq $0, %r8
	movl (%r8), %r9d
	movl %r9d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq $_gp,%r8
	addq $4, %r8
	movq $_gp,%r9
	addq $4, %r9
	movl (%r9), %r10d
	movq $_gp,%r9
	addq $0, %r9
	movl (%r9), %r11d
	addl %r11d, %r10d
	movl %r10d, (%r8)
	movq $_gp,%r8
	addq $0, %r8
	movq $_gp,%r9
	addq $0, %r9
	movl (%r9), %r10d
	movl $1, %r9d
	addl %r9d, %r10d
	movl %r10d, (%r8)
	jmp label0
label1: nop
	movq $_gp,%r8
	addq $4, %r8
	movl (%r8), %r9d
	movl %r9d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	leave
	ret
