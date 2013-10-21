WhileToken  : WHILE
WhileExpr : LPAREN Expr RPAREN
WhileStatement  : WhileToken WhileExpr Statement
Statement : WhileStatement
WhileToken  : WHILE
WhileExpr : LPAREN Expr RPAREN
WRITE LPAREN Expr RPAREN SEMICOLON
WRITE LPAREN Expr RPAREN SEMICOLON
WhileStatement  : WhileToken WhileExpr Statement
Statement : WhileStatement
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
label0: nop
	movq $_gp,%rbx
	addq $0, %rbx
	movl (%rbx), %ecx
	movl $10, %ebx
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
	movq $_gp,%r8
	addq $0, %r8
	movl (%r8), %r10d
	movl %r10d, (%rbx)
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
	movl $10, %ebx
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
	movl $5, %r10d
	cmpl %r10d, %r11d
	movl $0, %r11d
	movl $1, %r10d
	cmovl %r10d, %r11d
	movl $-1 , %r10d
	testl %r11d, %r10d
	je label4
	movq $_gp,%r12
	addq $0, %r12
	movl (%r12), %r13d
	movl (%rbx), %r12d
	movl %r12d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	jmp label5
label4: nop
	movl $0, %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
label5: nop
	movq $_gp,%rbx
	addq $0, %rbx
	movq $_gp,%r12
	addq $0, %r12
	movl (%r12), %r14d
	movl $1, %r12d
	addl %r12d, %r14d
	movl %r14d, (%rbx)
	jmp label2
label3: nop
	leave
	ret
