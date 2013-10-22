	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.int_rformat: .string "%d"
	.comm _gp, 12, 4
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
	addq $8, %rbx
	movl $.int_rformat, %edi
	movl %ebx, %esi
	movl $0, %eax
	call scanf
	movq $_gp,%rbx
	addq $8, %rbx
	movl (%rbx), %ecx
	movl $2, %ebx
	movl %ecx, %eax
	cdq
	idivl %ebx
	movl %eax, %ecx
	movl $2, %ebx
	imull %ebx, %ecx
	movq $_gp,%rbx
	addq $8, %rbx
	movl (%rbx), %r8d
	cmpl %r8d, %ecx
	movl $0, %ecx
	movl $1, %ebx
	cmove %ebx, %ecx
	movl $-1 , %ebx
	testl %ecx, %ebx
	je label0
	movq $_gp,%rbx
	addq $4, %rbx
	movl $1, %ecx
	movl %ecx, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl $0, %ecx
	movl %ecx, (%rbx)
label1: nop
	movq $_gp,%rbx
	addq $4, %rbx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $8, %rbx
	movl (%rbx), %r8d
	cmpl %r8d, %ecx
	movl $0, %ecx
	movl $1, %ebx
	cmovle %ebx, %ecx
	movl $-1 , %ebx
	testl %ecx, %ebx
	je label2
	movq $_gp,%rbx
	addq $0, %rbx
	movq $_gp,%rcx
	addq $0, %rcx
	movl (%rcx), %r8d
	movq $_gp,%rcx
	addq $4, %rcx
	movl (%rcx), %r9d
	addl %r9d, %r8d
	movl %r8d, (%rbx)
	movq $_gp,%rbx
	addq $4, %rbx
	movq $_gp,%rcx
	addq $4, %rcx
	movl (%rcx), %r8d
	movl $1, %ecx
	addl %ecx, %r8d
	movl %r8d, (%rbx)
	jmp label1
label2: nop
	jmp label3
label0: nop
	movq $_gp,%rbx
	addq $4, %rbx
	movl $1, %ecx
	movl %ecx, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl $1, %ecx
	movl %ecx, (%rbx)
label4: nop
	movq $_gp,%rbx
	addq $4, %rbx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $8, %rbx
	movl (%rbx), %r8d
	cmpl %r8d, %ecx
	movl $0, %ecx
	movl $1, %ebx
	cmovle %ebx, %ecx
	movl $-1 , %ebx
	testl %ecx, %ebx
	je label5
	movq $_gp,%rbx
	addq $0, %rbx
	movq $_gp,%rcx
	addq $0, %rcx
	movl (%rcx), %r8d
	movq $_gp,%rcx
	addq $4, %rcx
	movl (%rcx), %r9d
	imull %r9d, %r8d
	movl %r8d, (%rbx)
	movq $_gp,%rbx
	addq $4, %rbx
	movq $_gp,%rcx
	addq $4, %rcx
	movl (%rcx), %r8d
	movl $1, %ecx
	addl %ecx, %r8d
	movl %r8d, (%rbx)
	jmp label4
label5: nop
label3: nop
	movq $_gp,%rbx
	addq $0, %rbx
	movl (%rbx), %ecx
	movl %ecx, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	leave
	ret
