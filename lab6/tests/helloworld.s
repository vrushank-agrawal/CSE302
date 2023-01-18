	.bss
buffer:
	.zero 30000

	.text
	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	leaq buffer(%rip), %rax
	addb $8, 1(%rax)
	addq $1, %rax

.main.Loop0:
	cmpb $0, (%rax)
	jz .main.Loop0.exit
	addb $9, -1(%rax)
	addb $-1, 0(%rax)
	jmp .main.Loop0
.main.Loop0.exit:

	addq $-1, %rax
	movzbq (%rax), %rdi
	pushq %rax
	callq __bf_print
	popq %rax
	addb $4, 1(%rax)
	addq $1, %rax

.main.Loop1:
	cmpb $0, (%rax)
	jz .main.Loop1.exit
	addb $7, -1(%rax)
	addb $-1, 0(%rax)
	jmp .main.Loop1
.main.Loop1.exit:

	addb $1, -1(%rax)
	addq $-1, %rax
	movzbq (%rax), %rdi
	pushq %rax
	callq __bf_print
	popq %rax
	addb $7, 0(%rax)
	movzbq (%rax), %rdi
	pushq %rax
	callq __bf_print
	popq %rax
	movzbq (%rax), %rdi
	pushq %rax
	callq __bf_print
	popq %rax
	addb $3, 0(%rax)
	movzbq (%rax), %rdi
	pushq %rax
	callq __bf_print
	popq %rax
	addb $6, 2(%rax)
	addq $2, %rax

.main.Loop2:
	cmpb $0, (%rax)
	jz .main.Loop2.exit
	addb $7, -1(%rax)
	addb $-1, 0(%rax)
	jmp .main.Loop2
.main.Loop2.exit:

	addb $2, -1(%rax)
	addq $-1, %rax
	movzbq (%rax), %rdi
	pushq %rax
	callq __bf_print
	popq %rax
	addb $-12, 0(%rax)
	movzbq (%rax), %rdi
	pushq %rax
	callq __bf_print
	popq %rax
	addb $6, 1(%rax)
	addq $1, %rax

.main.Loop3:
	cmpb $0, (%rax)
	jz .main.Loop3.exit
	addb $9, -1(%rax)
	addb $-1, 0(%rax)
	jmp .main.Loop3
.main.Loop3.exit:

	addb $1, -1(%rax)
	addq $-1, %rax
	movzbq (%rax), %rdi
	pushq %rax
	callq __bf_print
	popq %rax
	addq $-1, %rax
	movzbq (%rax), %rdi
	pushq %rax
	callq __bf_print
	popq %rax
	addb $3, 0(%rax)
	movzbq (%rax), %rdi
	pushq %rax
	callq __bf_print
	popq %rax
	addb $-6, 0(%rax)
	movzbq (%rax), %rdi
	pushq %rax
	callq __bf_print
	popq %rax
	addb $-8, 0(%rax)
	movzbq (%rax), %rdi
	pushq %rax
	callq __bf_print
	popq %rax
	addb $4, 3(%rax)
	addq $3, %rax

.main.Loop4:
	cmpb $0, (%rax)
	jz .main.Loop4.exit
	addb $8, -1(%rax)
	addb $-1, 0(%rax)
	jmp .main.Loop4
.main.Loop4.exit:

	addb $1, -1(%rax)
	addq $-1, %rax
	movzbq (%rax), %rdi
	pushq %rax
	callq __bf_print
	popq %rax
.main.Lexit:
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	retq
