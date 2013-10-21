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
WRITE LPAREN Expr RPAREN SEMICOLON
WRITE LPAREN Expr RPAREN SEMICOLON
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
label0: nop
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
	movl $-1 , %ebx
	testl %ebx, %ebx
	je label1
	movq $_gp,%r8
	addq $12, %r8
	movl (%r8), %r9d
	movq $_gp,%r8
	addq $12, %r8
	movl (%r8), %r10d
	movl %r10d, (%rbx)
	movq $_gp,%rbx
	addq $12, %rbx
	movq $_gp,%r8
	addq $12, %r8
	movl (%r8), %r10d
	movl $1, %r8d
	addl %r8d, %r10d
	movl %r10d, (%rbx)
	jmp label0
label1: nop
	movq $_gp,%rbx
	addq $12, %rbx
	movq $_gp,%r8
	addq $12, %r8
	movl (%r8), %r10d
	movl $1, %r8d
	subl %r8d, %r10d
	movl %r10d, (%rbx)
	movq $_gp,%rbx
	addq $16, %rbx
	movl $0, %r8d
	movl %r8d, (%rbx)
label2: nop
	movq $_gp,%rbx
	addq $16, %rbx
	movl (%rbx), %r8d
	movl $1, %ebx
	addl %ebx, %r8d
	movl (%rbx), %ebx
	movl $0, %ebx
	cmpl %ebx, %ebx
	movl $0, %ebx
	movl $1, %ebx
	cmovne %ebx, %ebx
	movl $-1 , %ebx
	testl %ebx, %ebx
	je label3
	movq $_gp,%r10
	addq $16, %r10
	movl (%r10), %r11d
	movq $_gp,%r10
	addq $28, %r10
	movl (%r10), %r12d
	imull %r12d, %r11d
	movq $_gp,%r10
	addq $16, %r10
	movl (%r10), %r12d
	movl %r12d, (%rbx)
	movq $_gp,%rbx
	addq $16, %rbx
	movq $_gp,%r10
	addq $16, %r10
	movl (%r10), %r12d
	movl $1, %r10d
	addl %r10d, %r12d
	movl %r12d, (%rbx)
	jmp label2
label3: nop
	movq $_gp,%rbx
	addq $16, %rbx
	movq $_gp,%r10
	addq $16, %r10
	movl (%r10), %r12d
	movl $1, %r10d
	subl %r10d, %r12d
	movl %r12d, (%rbx)
	movq $_gp,%rbx
	addq $20, %rbx
	movl $1, %r10d
	movl %r10d, (%rbx)
label4: nop
	movq $_gp,%rbx
	addq $20, %rbx
	movl (%rbx), %r10d
	movq $_gp,%rbx
	addq $16, %rbx
	movl (%rbx), %r12d
	cmpl %r12d, %r10d
	movl $0, %r10d
	movl $1, %ebx
	cmovle %ebx, %r10d
	movl $-1 , %ebx
	testl %r10d, %ebx
	je label5
	movq $_gp,%r12
	addq $24, %r12
	movl $1, %r13d
	movl %r13d, (%r12)
label6: nop
	movq $_gp,%r12
	addq $24, %r12
	movl (%r12), %r13d
	movq $_gp,%r12
	addq $12, %r12
	movl (%r12), %r14d
	cmpl %r14d, %r13d
	movl $0, %r13d
	movl $1, %r12d
	cmovle %r12d, %r13d
	movl $-1 , %r12d
	testl %r13d, %r12d
	je label7
	movq $_gp,%r14
	addq $20, %r14
	movl (%r14), %r15d
	movq $_gp,%r14
	addq $28, %r14
	movl (%r14), bogus
	imull bogus, %r15d
	movq $_gp,%r14
	addq $24, %r14
	movl (%r14), bogus
	addl bogus, %r15d
	movq $_gp,%r14
	addq $20, %r14
	movl (%r14), bogus
	movl $1, %r14d
	subl %r14d, bogus
	movq $_gp,%r14
	addq $28, %r14
	movl (%r14), bogus
	imull bogus, bogus
	movq $_gp,%r14
	addq $24, %r14
	movl (%r14), bogus
	addl bogus, bogus
	movl $1, %r14d
	subl %r14d, bogus
	movl (%rbx), %r14d
	movl %r14d, (%rbx)
	movq $_gp,%rbx
	addq $20, %rbx
	movl (%rbx), %r14d
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
	jmp label9
label8: nop
label9: nop
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
	movl $-1 , %ebx
	testl %ebx, %ebx
	je label10
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
	jmp label11
label10: nop
label11: nop
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
	movl $-1 , %ebx
	testl %ebx, %ebx
	je label12
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
