	.bss
buffer:
	.zero 30000

	.text
	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	addq $1, %rax
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
	subq $1, %rax
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
	subq $1, (%rax)
	jmp .main.Loop0
.main.Loop0.exit:

	subq $1, %rax
	movb (%rax), %dil
	pushq %rax
	callq __bf_print
	popq %rax
	addq $1, %rax
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)

.main.Loop1:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop1.exit
	subq $1, %rax
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, %rax
	subq $1, (%rax)
	jmp .main.Loop1
.main.Loop1.exit:

	subq $1, %rax
	addq $1, (%rax)
	movb (%rax), %dil
	pushq %rax
	callq __bf_print
	popq %rax
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	movb (%rax), %dil
	pushq %rax
	callq __bf_print
	popq %rax
	movb (%rax), %dil
	pushq %rax
	callq __bf_print
	popq %rax
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	movb (%rax), %dil
	pushq %rax
	callq __bf_print
	popq %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)

.main.Loop2:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop2.exit
	subq $1, %rax
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, %rax
	subq $1, (%rax)
	jmp .main.Loop2
.main.Loop2.exit:

	subq $1, %rax
	addq $1, (%rax)
	addq $1, (%rax)
	movb (%rax), %dil
	pushq %rax
	callq __bf_print
	popq %rax
	subq $1, (%rax)
	subq $1, (%rax)
	subq $1, (%rax)
	subq $1, (%rax)
	subq $1, (%rax)
	subq $1, (%rax)
	subq $1, (%rax)
	subq $1, (%rax)
	subq $1, (%rax)
	subq $1, (%rax)
	subq $1, (%rax)
	subq $1, (%rax)
	movb (%rax), %dil
	pushq %rax
	callq __bf_print
	popq %rax
	addq $1, %rax
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)

.main.Loop3:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop3.exit
	subq $1, %rax
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
	subq $1, (%rax)
	jmp .main.Loop3
.main.Loop3.exit:

	subq $1, %rax
	addq $1, (%rax)
	movb (%rax), %dil
	pushq %rax
	callq __bf_print
	popq %rax
	subq $1, %rax
	movb (%rax), %dil
	pushq %rax
	callq __bf_print
	popq %rax
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	movb (%rax), %dil
	pushq %rax
	callq __bf_print
	popq %rax
	subq $1, (%rax)
	subq $1, (%rax)
	subq $1, (%rax)
	subq $1, (%rax)
	subq $1, (%rax)
	subq $1, (%rax)
	movb (%rax), %dil
	pushq %rax
	callq __bf_print
	popq %rax
	subq $1, (%rax)
	subq $1, (%rax)
	subq $1, (%rax)
	subq $1, (%rax)
	subq $1, (%rax)
	subq $1, (%rax)
	subq $1, (%rax)
	subq $1, (%rax)
	movb (%rax), %dil
	pushq %rax
	callq __bf_print
	popq %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)

.main.Loop4:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop4.exit
	subq $1, %rax
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, %rax
	subq $1, (%rax)
	jmp .main.Loop4
.main.Loop4.exit:

	subq $1, %rax
	addq $1, (%rax)
	movb (%rax), %dil
	pushq %rax
	callq __bf_print
	popq %rax
.main.Lexit:
	xorq %rax, %rax
	movq %rbp, %rsp
	popq %rbp
	retq
