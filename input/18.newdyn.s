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
WhileToken  : WHILE
WhileExpr : LPAREN Expr RPAREN
WhileStatement  : WhileToken WhileExpr Statement
Statement : WhileStatement
WhileStatement  : WhileToken WhileExpr Statement
Statement : WhileStatement
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
label0: nop
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
	movl $-1 , %ebx
	testl %ecx, %ebx
	je label1
	movq $_gp,%r8
	addq $20, %r8
	movl (%r8), %r9d
	movq $_gp,%r8
	addq $16, %r8
	movl (%r8), %r10d
	imull %r10d, %r9d
	movq $_gp,%r8
	addq $20, %r8
	movl (%r8), %r10d
	movl %r10d, (%rbx)
	movq $_gp,%rbx
	addq $20, %rbx
	movl (%rbx), %r8d
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
	jmp label0
label1: nop
	movq $_gp,%rbx
	addq $24, %rbx
	movl $0, %r10d
	movl %r10d, (%rbx)
label2: nop
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
	movl $-1 , %ebx
	testl %r10d, %ebx
	je label3
	movq $_gp,%r11
	addq $24, %r11
	movl (%r11), %r12d
	movq $_gp,%r11
	addq $24, %r11
	movl (%r11), %r13d
	movl %r13d, (%rbx)
	movq $_gp,%rbx
	addq $24, %rbx
	movl (%rbx), %r11d
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
	jmp label2
label3: nop
	movq $_gp,%rbx
	addq $20, %rbx
	movl $1, %r13d
	movl %r13d, (%rbx)
label4: nop
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
	movl $-1 , %ebx
	testl %r13d, %ebx
	je label5
	movq $_gp,%r14
	addq $24, %r14
	movl $1, %r15d
	movl %r15d, (%r14)
label6: nop
	movq $_gp,%r14
	addq $24, %r14
	movl (%r14), %r15d
	movq $_gp,%r14
	addq $12, %r14
	movl (%r14), bogus
	cmpl bogus, %r15d
	movl $0, %r15d
	movl $1, %r14d
	cmovl %r14d, %r15d
	movl $-1 , %r14d
	testl %r15d, %r14d
	je label7
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
	movl $1, bogus
	subl bogus, bogus
	movl (%rbx), bogus
	movl bogus, (%rbx)
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
	je label8
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
	jmp label9
label8: nop
label9: nop
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
	je label10
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
	jmp label11
label10: nop
label11: nop
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
	je label12
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
	jmp label13
label12: nop
label13: nop
	movq $_gp,%rbx
	addq $24, %rbx
	movq $_gp,bogus
	addq $24, bogus
	movl (bogus), bogus
	movl $1, bogus
	addl bogus, bogus
	movl bogus, (%rbx)
	jmp label6
label7: nop
	movq $_gp,%rbx
	addq $20, %rbx
	movq $_gp,bogus
	addq $20, bogus
	movl (bogus), bogus
	movl $1, bogus
	addl bogus, bogus
	movl bogus, (%rbx)
	jmp label4
label5: nop
	movl $899, %ebx
	movl (%rbx), bogus
	movl bogus, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	leave
	ret
