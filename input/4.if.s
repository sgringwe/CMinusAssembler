WRITE LPAREN Expr RPAREN SEMICOLON
WRITE LPAREN Expr RPAREN SEMICOLON
WRITE LPAREN Expr RPAREN SEMICOLON
WRITE LPAREN Expr RPAREN SEMICOLON
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
	movl $0, %ecx
	movl %ecx, (%rbx)
	movq $_gp,%rbx
	addq $4, %rbx
	movq $_gp,%rcx
	addq $0, %rcx
	movl (%rcx), %r8d
	movl $2, %ecx
	subl %ecx, %r8d
	movl %r8d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl (%rbx), %ecx
	movl $-1 , %ebx
	testl %ecx, %ebx
	je label0
	movl $1, %r8d
	movl %r8d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	jmp label1
label0: nop
	movl $0, %r8d
	movl %r8d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
label1: nop
	movq $_gp,%r8
	addq $4, %r8
	movl (%r8), %r9d
	movl $-1 , %r8d
	testl %r9d, %r8d
	je label2
	movq $_gp,%r10
	addq $0, %r10
	movl (%r10), %r11d
	movl $-1 , %r10d
	testl %r11d, %r10d
	je label3
	movl $0, %r12d
	movl %r12d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	jmp label4
label3: nop
	movl $1, %r12d
	movl %r12d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
label4: nop
	jmp label5
label2: nop
	movl $0, %r12d
	movl %r12d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
label5: nop
	leave
	ret
