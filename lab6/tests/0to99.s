	.bss
buffer:
	.zero 30000

	.text
	.globl main
main:
	pushq %rbp
	pushq %rax
	movq %rsp, %rbp
	lea buffer(%rip), %rax
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, %rax
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, %rax
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)

.main.Loop0:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop0.exit
	addq $1, %rax
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, %rax
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)

.main.Loop1:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop1.exit
	addq $-1, %rax
	addq $-1, %rax
	addq $-1, %rax
	movb (%rax), %dil
	pushq %rax
	callq __bf_print
	popq %rax
	addq $1, %rax
	addq $1, %rax
	movb (%rax), %dil
	pushq %rax
	callq __bf_print
	popq %rax
	addq $1, (%rax)
	addq $-1, %rax
	addq $-1, %rax
	addq $-1, %rax
	movb (%rax), %dil
	pushq %rax
	callq __bf_print
	popq %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $-1, (%rax)
	jmp .main.Loop1
.main.Loop1.exit:

	addq $-1, %rax
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, (%rax)
	addq $-1, %rax
	addq $-1, %rax
	addq $1, (%rax)
	addq $1, %rax
	addq $-1, (%rax)
	jmp .main.Loop0
.main.Loop0.exit:

.main.Lexit:
	xorq %rax, %rax
	movq %rbp, %rsp
	popq %rbp
	popq %rax
	retq