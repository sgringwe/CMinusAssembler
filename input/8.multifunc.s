<<ProcedureBody : StatementList RBRACE
<<ProcedureDecl : ProcedureHead ProcedureBody
<<ProcedureBody : StatementList RBRACE
<<ProcedureDecl : ProcedureHead ProcedureBody
<<ProcedureBody : StatementList RBRACE
<<ProcedureDecl : ProcedureHead ProcedureBody
<<Procedures
<<Procedures  : ProcedureDecl Procedures
<<Procedures  : ProcedureDecl Procedures
<<Procedures  : ProcedureDecl Procedures
	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.int_rformat: .string "%d"
	.text
	.globl a1
	.type a1,@function
a1:	nop
	pushq %rbp
	movq %rsp, %rbp
	movl $1, %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movl $1, %ebx
	leave
	ret
	.globl a2
	.type a2,@function
a2:	nop
	pushq %rbp
	movq %rsp, %rbp
	movl $2, %ecx
	movl %ecx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	leave
	ret
	.globl main
	.type main,@function
main:	nop
	pushq %rbp
	movq %rsp, %rbp
	addl , 
	movl , %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	leave
	ret
