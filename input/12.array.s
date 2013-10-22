Offset for 1 is 40
Offset for 1 is 40
Offset for 1 is 40
Offset for 1 is 40
Offset for 1 is 40
Offset for 1 is 40
	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.int_rformat: .string "%d"
	.comm _gp, 44, 4
	.text
	.globl main
	.type main,@function
main:	nop
	pushq %rbp
	movq %rsp, %rbp
	movl $3, %ebx
	movq $_gp,%rcx
	addq $0, %rcx
	imull %ebx, $4
	addq %ecx, %ebx
	movl $4, %r8d
	movl %r8d, (%rcx)
	movl $3, %ecx
	movq $_gp,%r8
	addq $0, %r8
	imull %ecx, $4
	addq %r8d, %ecx
	movl (%r8), %r9d
	movl %r9d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq $_gp,%r8
	addq $40, %r8
	movl $3, %r9d
	movl %r9d, (%r8)
	movq $_gp,%r8
	addq $40, %r8
	movl (%r8), %r9d
	movq $_gp,%r8
	addq $0, %r8
	imull %r9d, $4
	addq %r8d, %r9d
	movl $7, %r10d
	movl %r10d, (%r8)
	movq $_gp,%r8
	addq $40, %r8
	movl (%r8), %r10d
	movq $_gp,%r8
	addq $0, %r8
	imull %r10d, $4
	addq %r8d, %r10d
	movl (%r8), %r11d
	movl %r11d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq $_gp,%r8
	addq $40, %r8
	movq $_gp,%r11
	addq $40, %r11
	movl (%r11), %r12d
	movl $2, %r11d
	addl %r11d, %r12d
	movl %r12d, (%r8)
	movq $_gp,%r8
	addq $40, %r8
	movl (%r8), %r11d
	movq $_gp,%r8
	addq $0, %r8
	imull %r11d, $4
	addq %r8d, %r11d
	movl $22, %r12d
	movl %r12d, (%r8)
	movl $5, %r8d
	movq $_gp,%r12
	addq $0, %r12
	imull %r8d, $4
	addq %r12d, %r8d
	movl (%r12), %r13d
	movl %r13d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	leave
	ret
