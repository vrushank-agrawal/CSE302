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
	addq $10, 0(%rax)
	addq $48, 1(%rax)
	addq $10, 2(%rax)
	addq $2, %rax

.main.Loop0:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop0.exit
	addq $48, 1(%rax)
	addq $10, 2(%rax)
	addq $2, %rax

.main.Loop1:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop1.exit
	addq $-3, %rax
	movb (%rax), %dil
	pushq %rax
	callq __bf_print
	popq %rax
	addq $2, %rax
	movb (%rax), %dil
	pushq %rax
	callq __bf_print
	popq %rax
	addq $1, 0(%rax)
	addq $-3, %rax
	movb (%rax), %dil
	pushq %rax
	callq __bf_print
	popq %rax
	addq $-1, 4(%rax)
	addq $4, %rax
	jmp .main.Loop1
.main.Loop1.exit:

	addq $-58, -1(%rax)
	addq $1, -3(%rax)
	addq $-1, -2(%rax)
	addq $-2, %rax
	jmp .main.Loop0
.main.Loop0.exit:

.main.Lexit:
	xorq %rax, %rax
	movq %rbp, %rsp
	popq %rbp
	popq %rax
	retq
