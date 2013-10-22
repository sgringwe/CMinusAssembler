	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.int_rformat: .string "%d"
	.comm _gp, 12, 4
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
label0: nop
	movq $_gp,%rbx
	addq $0, %rbx
	movl (%rbx), %ecx
	movl $50, %ebx
	cmpl %ebx, %ecx
	movl $0, %ecx
	movl $1, %ebx
	cmovl %ebx, %ecx
	movl $-1 , %ebx
	testl %ecx, %ebx
	je label1
	movq $_gp,%rbx
	addq $4, %rbx
	movl $0, %r8d
	movl %r8d, (%rbx)
label2: nop
	movq $_gp,%rbx
	addq $4, %rbx
	movl (%rbx), %r8d
	movl $10, %ebx
	cmpl %ebx, %r8d
	movl $0, %r8d
	movl $1, %ebx
	cmovl %ebx, %r8d
	movl $-1 , %ebx
	testl %r8d, %ebx
	je label3
	movq $_gp,%rbx
	addq $0, %rbx
	movl (%rbx), %r9d
	movq $_gp,%rbx
	addq $4, %rbx
	movl (%rbx), %r10d
	addl %r10d, %r9d
	movl %r9d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq $_gp,%rbx
	addq $4, %rbx
	movq $_gp,%r9
	addq $4, %r9
	movl (%r9), %r10d
	movl $2, %r9d
	addl %r9d, %r10d
	movl %r10d, (%rbx)
	jmp label2
label3: nop
	movq $_gp,%rbx
	addq $8, %rbx
	movl $0, %r9d
	movq $_gp,%r10
	addq $4, %r10
	movl (%r10), %r11d
	subl %r11d, %r9d
	movl %r9d, (%rbx)
label4: nop
	movq $_gp,%rbx
	addq $8, %rbx
	movl (%rbx), %r9d
	movq $_gp,%rbx
	addq $4, %rbx
	movl (%rbx), %r10d
	cmpl %r10d, %r9d
	movl $0, %r9d
	movl $1, %ebx
	cmovne %ebx, %r9d
	movl $-1 , %ebx
	testl %r9d, %ebx
	je label5
	movq $_gp,%rbx
	addq $8, %rbx
	movl (%rbx), %r10d
	movl %r10d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	movq $_gp,%rbx
	addq $8, %rbx
	movq $_gp,%r10
	addq $8, %r10
	movl (%r10), %r11d
	movl $1, %r10d
	addl %r10d, %r11d
	movl %r11d, (%rbx)
	jmp label4
label5: nop
	movq $_gp,%rbx
	addq $0, %rbx
	movq $_gp,%r10
	addq $0, %r10
	movl (%r10), %r11d
	movl $10, %r10d
	addl %r10d, %r11d
	movl %r11d, (%rbx)
	jmp label0
label1: nop
	leave
	ret
