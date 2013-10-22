Offset for 1 is 4
Offset for 1 is 4
Offset for 0 is 0
Offset for 0 is 0
Offset for 0 is 0
Offset for 1 is 4
Offset for 0 is 0
Offset for 0 is 0
Offset for 1 is 4
Offset for 1 is 4
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
	addq $4, %rbx
	movl $1, %ecx
	movl %ecx, (%rbx)
label0: nop
	movq $_gp,%rbx
	addq $4, %rbx
	movl (%rbx), %ecx
	movl $10, %ebx
	cmpl %ebx, %ecx
	movl $0, %ecx
	movl $1, %ebx
	cmovle %ebx, %ecx
	movl $-1 , %ebx
	testl %ecx, %ebx
	je label1
	movq $_gp,%r8
	addq $0, %r8
	movl $1, %r9d
	movl %r9d, (%r8)
label2: nop
	movq $_gp,%r8
	addq $0, %r8
	movl (%r8), %r9d
	movl $10, %r8d
	cmpl %r8d, %r9d
	movl $0, %r9d
	movl $1, %r8d
	cmovle %r8d, %r9d
	movl $-1 , %r8d
	testl %r9d, %r8d
	je label3
	movq $_gp,%r10
	addq $0, %r10
	movl (%r10), %r11d
	movq $_gp,%r10
	addq $4, %r10
	movl (%r10), %r12d
	imull %r12d, %r11d
	movl %r11d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq $_gp,%r10
	addq $0, %r10
	movq $_gp,%r11
	addq $0, %r11
	movl (%r11), %r12d
	movl $1, %r11d
	addl %r11d, %r12d
	movl %r12d, (%r10)
	jmp label2
label3: nop
	movq $_gp,%r10
	addq $4, %r10
	movq $_gp,%r11
	addq $4, %r11
	movl (%r11), %r12d
	movl $1, %r11d
	addl %r11d, %r12d
	movl %r12d, (%r10)
	jmp label0
label1: nop
	leave
	ret
