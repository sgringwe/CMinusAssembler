Offset for 0 is 0
Offset for 1 is 4
Offset for 2 is 8
Offset for 4 is 52
Offset for 5 is 56
Offset for 6 is 60
Offset for 1 is 4
Offset for 0 is 0
Offset for 1 is 4
Offset for 6 is 60
Offset for 6 is 60
	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.int_rformat: .string "%d"
	.comm _gp, 64, 4
	.text
	.globl main
	.type main,@function
main:	nop
	pushq %rbp
	movq %rsp, %rbp
	movq $_gp,%rbx
	addq $0, %rbx
	movl $3, %ecx
	movl %ecx, (%rbx)
	movq $_gp,%rbx
	addq $4, %rbx
	movl $4, %ecx
	movl %ecx, (%rbx)
	movq $_gp,%rbx
	addq $8, %rbx
	movl $5, %ecx
	movl %ecx, (%rbx)
	movq $_gp,%rbx
	addq $52, %rbx
	movl $13, %ecx
	movl %ecx, (%rbx)
	movq $_gp,%rbx
	addq $56, %rbx
	movl $14, %ecx
	movl %ecx, (%rbx)
	movq $_gp,%rbx
	addq $60, %rbx
	movl $15, %ecx
	movl %ecx, (%rbx)
	movq $_gp,%rbx
	addq $4, %rbx
	movl $0, %ecx
	movq $_gp,%r8
	addq $0, %r8
	movl (%r8), %r9d
	subl %r9d, %ecx
	movl %ecx, (%rbx)
	movq $_gp,%rbx
	addq $4, %rbx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $12, %rbx
	imull %ecx, $4
	addq %ebx, %ecx
	movl (%rbx), %r8d
	movl %r8d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movl $11, %ebx
	movq $_gp,%r8
	addq $12, %r8
	imull %ebx, $4
	addq %r8d, %ebx
	movl (%r8), %r9d
	movl %r9d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq $_gp,%r8
	addq $60, %r8
	movl (%r8), %r9d
	movl %r9d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movl $12, %r8d
	movq $_gp,%r9
	addq $12, %r9
	imull %r8d, $4
	addq %r9d, %r8d
	movl $100, %r10d
	movl %r10d, (%r9)
	movq $_gp,%r9
	addq $60, %r9
	movl (%r9), %r10d
	movl %r10d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	leave
	ret
