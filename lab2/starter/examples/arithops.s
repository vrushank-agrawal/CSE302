	.section .rodata
.lprintfmt:
	.string "%ld\n"
	.text
	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $176, %rsp
	movq $42, -8(%rbp)
	movq -16(%rbp), %r11
	movq %r11, -24(%rbp)
	movq $1, -32(%rbp)
	movq -24(%rbp), %r11
	movq -32(%rbp), %rcx
	sarq %cl, %r11
	movq %r11, -40(%rbp)
	movq -16(%rbp), %r11
	movq %r11, -48(%rbp)
	movq -56(%rbp), %r11
	movq %r11, -64(%rbp)
	movq -48(%rbp), %r11
	addq -64(%rbp), %r11
	movq %r11, -72(%rbp)
	leaq .lprintfmt(%rip), %rdi
	movq -72(%rbp), %rsi
	xorq %rax, %rax
	callq printf@PLT
	movq -16(%rbp), %r11
	movq %r11, -80(%rbp)
	movq -56(%rbp), %r11
	movq %r11, -88(%rbp)
	movq -80(%rbp), %r11
	subq -88(%rbp), %r11
	movq %r11, -96(%rbp)
	leaq .lprintfmt(%rip), %rdi
	movq -96(%rbp), %rsi
	xorq %rax, %rax
	callq printf@PLT
	movq -16(%rbp), %r11
	movq %r11, -104(%rbp)
	movq $3, -112(%rbp)
	movq -104(%rbp), %rax
	imulq -112(%rbp)
	movq %rax, -120(%rbp)
	movq -56(%rbp), %r11
	movq %r11, -128(%rbp)
	movq -120(%rbp), %r11
	addq -128(%rbp), %r11
	movq %r11, -136(%rbp)
	movq -144(%rbp), %r11
	movq %r11, -152(%rbp)
	movq -16(%rbp), %r11
	movq %r11, -160(%rbp)
	movq -152(%rbp), %rax
	cqto
	idivq -160(%rbp)
	movq %rdx, -168(%rbp)
	leaq .lprintfmt(%rip), %rdi
	movq -168(%rbp), %rsi
	xorq %rax, %rax
	callq printf@PLT
	movq %rbp, %rsp
	popq %rbp
	xorq %rax, %rax
	retq
