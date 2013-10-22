Offset for 0 is 0
Offset for 2 is 8
Offset for 1 is 4
Offset for 1 is 4
Offset for 0 is 0
Offset for 1 is 4
Offset for 2 is 8
Offset for 2 is 8
Offset for 1 is 4
Offset for 1 is 4
Offset for 1 is 4
Offset for 2 is 8
	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.int_rformat: .string "%d"
	.comm _gp, 12, 4
.string_const0: .string "enter a:"
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
	addq $0, %rbx
	movl $.int_rformat, %edi
	movl %ebx, %esi
	movl $0, %eax
	call scanf
	movq $_gp,%rbx
	addq $8, %rbx
	movl $0, %ecx
	movl %ecx, (%rbx)
	movq $_gp,%rbx
	addq $4, %rbx
	movl $0, %ecx
	movl %ecx, (%rbx)
label0: nop
	movq $_gp,%rbx
	addq $4, %rbx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $0, %rbx
	movl (%rbx), %r8d
	cmpl %r8d, %ecx
	movl $0, %ecx
	movl $1, %ebx
	cmovle %ebx, %ecx
	movq $_gp,%rbx
	addq $4, %rbx
	movl (%rbx), %r8d
	movl $100, %ebx
	cmpl %ebx, %r8d
	movl $0, %r8d
	movl $1, %ebx
	cmovle %ebx, %r8d
	andl %r8d, %ecx
	movl $-1 , %ebx
	testl %ecx, %ebx
	je label1
	movq $_gp,%r8
	addq $8, %r8
	movq $_gp,%r9
	addq $8, %r9
	movl (%r9), %r10d
	movq $_gp,%r9
	addq $4, %r9
	movl (%r9), %r11d
	addl %r11d, %r10d
	movl %r10d, (%r8)
	movq $_gp,%r8
	addq $4, %r8
	movq $_gp,%r9
	addq $4, %r9
	movl (%r9), %r10d
	movl $1, %r9d
	addl %r9d, %r10d
	movl %r10d, (%r8)
	jmp label0
label1: nop
	movq $_gp,%r8
	addq $8, %r8
	movl (%r8), %r9d
	movl %r9d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	leave
	ret
