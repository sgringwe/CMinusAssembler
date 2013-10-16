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
	movq $_gp,%rbx
	addq $4, %rbx
	movl $1, %r8d
	movl %r8d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl $0, %r8d
	movl %r8d, (%rbx)
	movq $_gp,%rbx
	addq $4, %rbx
	movl (%rbx), %r8d
	movq $_gp,%rbx
	addq $8, %rbx
	movl (%rbx), %r9d
	cmpl %r9d, %r8d
	movl $0, %r8d
	movl $1, %ebx
	cmovle %ebx, %r8d
	movq $_gp,%rbx
	addq $0, %rbx
	movq $_gp,%r9
	addq $0, %r9
	movl (%r9), %r10d
	movq $_gp,%r9
	addq $4, %r9
	movl (%r9), %r11d
	addl %r11d, %r10d
	movl %r10d, (%rbx)
	movq $_gp,%rbx
	addq $4, %rbx
	movq $_gp,%r9
	addq $4, %r9
	movl (%r9), %r10d
	movl $1, %r9d
	addl %r9d, %r10d
	movl %r10d, (%rbx)
	movq $_gp,%rbx
	addq $4, %rbx
	movl $1, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl $1, %r9d
	movl %r9d, (%rbx)
	movq $_gp,%rbx
	addq $4, %rbx
	movl (%rbx), %r9d
	movq $_gp,%rbx
	addq $8, %rbx
	movl (%rbx), %r10d
	cmpl %r10d, %r9d
	movl $0, %r9d
	movl $1, %ebx
	cmovle %ebx, %r9d
	movq $_gp,%rbx
	addq $0, %rbx
	movq $_gp,%r10
	addq $0, %r10
	movl (%r10), %r11d
	movq $_gp,%r10
	addq $4, %r10
	movl (%r10), %r12d
	imull %r12d, %r11d
	movl %r11d, (%rbx)
	movq $_gp,%rbx
	addq $4, %rbx
	movq $_gp,%r10
	addq $4, %r10
	movl (%r10), %r11d
	movl $1, %r10d
	addl %r10d, %r11d
	movl %r11d, (%rbx)
	movq $_gp,%rbx
	addq $0, %rbx
	movl (%rbx), %r10d
	movl %r10d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	leave
	ret
