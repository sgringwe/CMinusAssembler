Test    : LPAREN Expr RPAREN
CompoundStatement : LBRACE StatementList RBRACE
Statement : CompoundStatement
CompoundStatement : LBRACE StatementList RBRACE
TestAndThen : Test CompoundStatement
CompoundStatement : LBRACE StatementList RBRACE
Statement : CompoundStatement
CompoundStatement : LBRACE StatementList RBRACE
IfStatement : IF TestAndThen ELSE CompoundStatement
WRITE LPAREN Expr RPAREN SEMICOLON
	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.int_rformat: .string "%d"
	.comm _gp, 12, 4
.string_const0: .string "Enter a:"
	.text
	.globl main
	.type main,@function
main:	nop
	pushq %rbp
	movq %rsp, %rbp
	movl $.string_const0, %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.str_wformat, %edi
	call printf
	movq $_gp,%rbx
	addq $8, %rbx
	movl $.int_rformat, %edi
	movl %ebx, %esi
	movl $0, %eax
	call scanf
	movq $_gp,%rbx
	addq $8, %rbx
	movl (%rbx), %ecx
	movl $2, %ebx
	movl %ecx, %eax
	cdq
	idivl %ebx
	movl %eax, %ecx
	movl $2, %ebx
	imull %ebx, %ecx
	movq $_gp,%rbx
	addq $8, %rbx
	movl (%rbx), %r8d
	cmpl %r8d, %ecx
	movl $0, %ecx
	movl $1, %ebx
	cmove %ebx, %ecx
	movl $-1 , %ebx
	testl %ecx, %ebx
	je label0
	movq $_gp,%r8
	addq $4, %r8
	movl $1, %r9d
	movl %r9d, (%r8)
	movq $_gp,%r8
	addq $0, %r8
	movl $0, %r9d
	movl %r9d, (%r8)
	movq $_gp,%r8
	addq $4, %r8
	movl (%r8), %r9d
	movq $_gp,%r8
	addq $8, %r8
	movl (%r8), %r10d
	cmpl %r10d, %r9d
	movl $0, %r9d
	movl $1, %r8d
	cmovle %r8d, %r9d
	movq $_gp,%r8
	addq $0, %r8
	movq $_gp,%r10
	addq $0, %r10
	movl (%r10), %r11d
	movq $_gp,%r10
	addq $4, %r10
	movl (%r10), %r12d
	addl %r12d, %r11d
	movl %r11d, (%r8)
	movq $_gp,%r8
	addq $4, %r8
	movq $_gp,%r10
	addq $4, %r10
	movl (%r10), %r11d
	movl $1, %r10d
	addl %r10d, %r11d
	movl %r11d, (%r8)
	jmp label1
label0: nop
	movq $_gp,%r8
	addq $4, %r8
	movl $1, %r10d
	movl %r10d, (%r8)
	movq $_gp,%r8
	addq $0, %r8
	movl $1, %r10d
	movl %r10d, (%r8)
	movq $_gp,%r8
	addq $4, %r8
	movl (%r8), %r10d
	movq $_gp,%r8
	addq $8, %r8
	movl (%r8), %r11d
	cmpl %r11d, %r10d
	movl $0, %r10d
	movl $1, %r8d
	cmovle %r8d, %r10d
	movq $_gp,%r8
	addq $0, %r8
	movq $_gp,%r11
	addq $0, %r11
	movl (%r11), %r12d
	movq $_gp,%r11
	addq $4, %r11
	movl (%r11), %r13d
	imull %r13d, %r12d
	movl %r12d, (%r8)
	movq $_gp,%r8
	addq $4, %r8
	movq $_gp,%r11
	addq $4, %r11
	movl (%r11), %r12d
	movl $1, %r11d
	addl %r11d, %r12d
	movl %r12d, (%r8)
label1: nop
	movq $_gp,%r8
	addq $0, %r8
	movl (%r8), %r11d
	movl %r11d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	leave
	ret
