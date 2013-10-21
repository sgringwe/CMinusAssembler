WRITE LPAREN Expr RPAREN SEMICOLON
WRITE LPAREN Expr RPAREN SEMICOLON
	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.int_rformat: .string "%d"
	.comm _gp, 8, 4
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
	addq $0, %rbx
	movl $.int_rformat, %edi
	movl %ebx, %esi
	movl $0, %eax
	call scanf
	movq $_gp,%rbx
	addq $0, %rbx
	movl (%rbx), %ecx
	movl $-1 , %ebx
	testl %ecx, %ebx
	je label0
	movq $_gp,%r8
	addq $4, %r8
	movl $0, %r9d
	movq $_gp,%r10
	addq $0, %r10
	movl (%r10), %r11d
	subl %r11d, %r9d
	movl %r9d, (%r8)
	movq $_gp,%r8
	addq $4, %r8
	movl (%r8), %r9d
	movl %r9d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	jmp label1
label0: nop
	movq $_gp,%r8
	addq $4, %r8
	movq $_gp,%r9
	addq $0, %r9
	movl (%r9), %r10d
	movl %r10d, (%r8)
	movq $_gp,%r8
	addq $4, %r8
	movl (%r8), %r9d
	movl %r9d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
label1: nop
	leave
	ret
