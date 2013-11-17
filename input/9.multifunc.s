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
	.globl a3
	.type a3,@function
a3:	nop
	pushq %rbp
	movq %rsp, %rbp
	movl $4, %ecx
	movl %ecx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	addl , 
	leave
	ret
	.globl a4
	.type a4,@function
a4:	nop
	pushq %rbp
	movq %rsp, %rbp
	movl $4, %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	addl , 
	addl , 
	leave
	ret
	.globl main
	.type main,@function
main:	nop
	pushq %rbp
	movq %rsp, %rbp
	addl , 
	addl , 
	addl , 
	movl , %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	leave
	ret
