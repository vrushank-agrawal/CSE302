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
	addq $1, %rax
	addq $8, (%rax)

.main.Loop0:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop0.exit
	addq $-1, %rax
	addq $9, (%rax)
	addq $1, %rax
	addq $-1, (%rax)
	jmp .main.Loop0
.main.Loop0.exit:

	addq $-1, %rax
	movb (%rax), %dil
	pushq %rax
	callq __bf_print
	popq %rax
	addq $1, %rax
	addq $4, (%rax)

.main.Loop1:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop1.exit
	addq $-1, %rax
	addq $7, (%rax)
	addq $1, %rax
	addq $-1, (%rax)
	jmp .main.Loop1
.main.Loop1.exit:

	addq $-1, %rax
	addq $1, (%rax)
	movb (%rax), %dil
	pushq %rax
	callq __bf_print
	popq %rax
	addq $7, (%rax)
	movb (%rax), %dil
	pushq %rax
	callq __bf_print
	popq %rax
	movb (%rax), %dil
	pushq %rax
	callq __bf_print
	popq %rax
	addq $3, (%rax)
	movb (%rax), %dil
	pushq %rax
	callq __bf_print
	popq %rax
	addq $2, %rax
	addq $6, (%rax)

.main.Loop2:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop2.exit
	addq $-1, %rax
	addq $7, (%rax)
	addq $1, %rax
	addq $-1, (%rax)
	jmp .main.Loop2
.main.Loop2.exit:

	addq $-1, %rax
	addq $2, (%rax)
	movb (%rax), %dil
	pushq %rax
	callq __bf_print
	popq %rax
	addq $-12, (%rax)
	movb (%rax), %dil
	pushq %rax
	callq __bf_print
	popq %rax
	addq $1, %rax
	addq $6, (%rax)

.main.Loop3:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop3.exit
	addq $-1, %rax
	addq $9, (%rax)
	addq $1, %rax
	addq $-1, (%rax)
	jmp .main.Loop3
.main.Loop3.exit:

	addq $-1, %rax
	addq $1, (%rax)
	movb (%rax), %dil
	pushq %rax
	callq __bf_print
	popq %rax
	addq $-1, %rax
	movb (%rax), %dil
	pushq %rax
	callq __bf_print
	popq %rax
	addq $3, (%rax)
	movb (%rax), %dil
	pushq %rax
	callq __bf_print
	popq %rax
	addq $-6, (%rax)
	movb (%rax), %dil
	pushq %rax
	callq __bf_print
	popq %rax
	addq $-8, (%rax)
	movb (%rax), %dil
	pushq %rax
	callq __bf_print
	popq %rax
	addq $3, %rax
	addq $4, (%rax)

.main.Loop4:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop4.exit
	addq $-1, %rax
	addq $8, (%rax)
	addq $1, %rax
	addq $-1, (%rax)
	jmp .main.Loop4
.main.Loop4.exit:

	addq $-1, %rax
	addq $1, (%rax)
	movb (%rax), %dil
	pushq %rax
	callq __bf_print
	popq %rax
.main.Lexit:
	xorq %rax, %rax
	movq %rbp, %rsp
	popq %rbp
	popq %rax
	retq
