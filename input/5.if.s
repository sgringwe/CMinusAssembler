emitTest: Expression register: 6
emitTest: Expression register: 8
emitTest: Expression register: 12
	.section	.rodata
	.int_wformat: .string "%d\n"
	.str_wformat: .string "%s\n"
	.int_rformat: .string "%d"
	.comm _gp, 8, 4
.string_const0: .string "enter a:"
.string_const1: .string "enter b:"
.string_const2: .string "a = "
.string_const3: .string "b = "
.string_const4: .string "a = "
.string_const5: .string "b = "
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
	movl $.string_const1, %ebx
	movl %ebx, %esi
	movl $0, %eax
	movl $.str_wformat, %edi
	call printf
	movq $_gp,%rbx
	addq $4, %rbx
	movl $.int_rformat, %edi
	movl %ebx, %esi
	movl $0, %eax
	call scanf
	movq $_gp,%rbx
	addq $4, %rbx
	movl (%rbx), %ecx
	movq $_gp,%rbx
	addq $0, %rbx
	movl (%rbx), %r8d
	cmpl %r8d, %ecx
	movl $0, %ecx
	movl $1, %ebx
	cmovg %ebx, %ecx
	movl $-1 %ebx
	testl %ecx %ebx
	je .label0
	movq $_gp,%r8
	addq $0, %r8
	movl (%r8), %r9d
	movl $0, %r8d
	cmpl %r8d, %r9d
	movl $0, %r9d
	movl $1, %r8d
	cmovg %r8d, %r9d
	movl $-1 %r8d
	testl %r9d %r8d
	je .label1
	movl $.string_const2, %r10d
	movl %r10d, %esi
	movl $0, %eax
	movl $.str_wformat, %edi
	call printf
	movq $_gp,%r10
	addq $0, %r10
	movl (%r10), %r11d
	movl %r11d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
label1: nop
	movl $.string_const3, %r10d
	movl %r10d, %esi
	movl $0, %eax
	movl $.str_wformat, %edi
	call printf
	movq $_gp,%r10
	addq $4, %r10
	movl (%r10), %r11d
	movl %r11d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
label0: nop
	movq $_gp,%r10
	addq $0, %r10
	movl (%r10), %r11d
	movl $0, %r10d
	cmpl %r10d, %r11d
	movl $0, %r11d
	movl $1, %r10d
	cmovl %r10d, %r11d
	movl $-1 %r10d
	testl %r11d %r10d
	je .label2
	movl $.string_const4, %r12d
	movl %r12d, %esi
	movl $0, %eax
	movl $.str_wformat, %edi
	call printf
	movq $_gp,%r12
	addq $0, %r12
	movl (%r12), %r13d
	movl %r13d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
label2: nop
	movl $.string_const5, %r12d
	movl %r12d, %esi
	movl $0, %eax
	movl $.str_wformat, %edi
	call printf
	movq $_gp,%r12
	addq $4, %r12
	movl (%r12), %r13d
	movl %r13d, %esi
	movl $0, %eax
	movl $.int_wformat, %edi
	call printf
	leave
	ret
