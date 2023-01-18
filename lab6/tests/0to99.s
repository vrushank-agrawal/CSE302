	.bss
buffer:
	.zero 30000

	.text
	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	leaq buffer(%rip), %rax
	addb $10, 0(%rax)
	addb $48, 1(%rax)
	addb $10, 2(%rax)
	addq $2, %rax

.main.Loop1:
	cmpb $0, (%rax)
	jz .main.Loop1.exit
	addb $48, 1(%rax)
	addb $10, 2(%rax)
	addq $2, %rax

.main.Loop0:
	cmpb $0, (%rax)
	jz .main.Loop0.exit
	addq $-3, %rax
	movzbq (%rax), %rdi
	pushq %rax
	callq __bf_print
	popq %rax
	addq $2, %rax
	movzbq (%rax), %rdi
	pushq %rax
	callq __bf_print
	popq %rax
	addb $1, 0(%rax)
	addq $-3, %rax
	movzbq (%rax), %rdi
	pushq %rax
	callq __bf_print
	popq %rax
	addb $-1, 4(%rax)
	addq $4, %rax
	jmp .main.Loop0
.main.Loop0.exit:

	addb $-58, -1(%rax)
	addb $1, -3(%rax)
	addb $-1, -2(%rax)
	addq $-2, %rax
	jmp .main.Loop1
.main.Loop1.exit:

.main.Lexit:
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	retq
