

.section .data
	path:
	.ascii "/bin/sh\0"

.section .text

.globl _start

_start:
	leaq path, %rdi
	xor %rsi, %rsi
	push %rsi
	push %rdi
	mov %rsp, %rsi
	xor %rdx, %rdx
	mov $59, %rax
	syscall

	#exit system call
	mov $0, %rdi
	mov $60, %rax
	syscall

