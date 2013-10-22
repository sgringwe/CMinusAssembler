Offset for 1 is 400
Offset for 1 is 400
Offset for 1 is 400
Offset for 1 is 400
Offset for 1 is 400
Offset for 1 is 400
	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.int_rformat: .string "%d"
	.comm _gp, 404, 4
.string_const0: .string "enter i ="
.string_const1: .string "out of bound!"
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
	addq $400, %rbx
	movl $.int_rformat, %edi
	movl %ebx, %esi
	movl $0, %eax
	call scanf
	movq $_gp,%rbx
	addq $400, %rbx
	movl (%rbx), %ecx
	movl $0, %ebx
	cmpl %ebx, %ecx
	movl $0, %ecx
	movl $1, %ebx
	cmovl %ebx, %ecx
	movq $_gp,%rbx
	addq $400, %rbx
	movl (%rbx), %r8d
	movl $100, %ebx
	cmpl %ebx, %r8d
	movl $0, %r8d
	movl $1, %ebx
	cmovge %ebx, %r8d
	orl %r8d, %ecx
	movl $-1 , %ebx
	testl %ecx, %ebx
	je label0
	movl $.string_const1, %r8d
	movl %r8d, %esi
	movl $0, %eax
	movl $.str_wformat, %edi
	call printf
	jmp label1
label0: nop
	movq $_gp,%r8
	addq $400, %r8
	movl (%r8), %r9d
	movq $_gp,%r8
	addq $0, %r8
	imull %r9d, $4
	addq %r8d, %r9d
	movq $_gp,%r10
	addq $400, %r10
	movl (%r10), %r11d
	movl $2, %r10d
	imull %r10d, %r11d
	movl %r11d, (%r8)
	movl $5, %r8d
	movq $_gp,%r10
	addq $0, %r10
	imull %r8d, $4
	addq %r10d, %r8d
	movl $5, %r11d
	movl %r11d, (%r10)
	movq $_gp,%r10
	addq $400, %r10
	movl (%r10), %r11d
	movq $_gp,%r10
	addq $0, %r10
	imull %r11d, $4
	addq %r10d, %r11d
	movl (%r10), %r12d
	movl %r12d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
label1: nop
	leave
	ret
