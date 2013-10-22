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
	movl $1, %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	jmp label1
label0: nop
	movl $0, %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
label1: nop
	movq $_gp,%rbx
	addq $4, %rbx
	movl (%rbx), %ecx
	movl $-1 , %ebx
	testl %ecx, %ebx
	je label2
	movq $_gp,%rbx
	addq $0, %rbx
	movl (%rbx), %ecx
	movl $-1 , %ebx
	testl %ecx, %ebx
	je label3
	movl $0, %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	jmp label4
label3: nop
	movl $1, %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
label4: nop
	jmp label5
label2: nop
	movl $0, %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
label5: nop
	leave
	ret
