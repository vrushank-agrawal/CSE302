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
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	addq $1, (%rax)

.main.Loop0:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop0.exit
	subq $1, (%rax)

.main.Loop1:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop1.exit
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	jmp .main.Loop1
.main.Loop1.exit:


.main.Loop2:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop2.exit
	subq $1, (%rax)
	jmp .main.Loop2
.main.Loop2.exit:

	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax

.main.Loop3:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop3.exit

.main.Loop4:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop4.exit
	subq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	jmp .main.Loop4
.main.Loop4.exit:

	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	jmp .main.Loop3
.main.Loop3.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	pushq %rax
	callq __bf_get
	movq %rax, %r11
	popq %rax
	movb %r11b, (%rax)
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
	jmp .main.Loop0
.main.Loop0.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop5:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop5.exit
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
	subq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	subq $1, (%rax)
	addq $1, %rax
	jmp .main.Loop5
.main.Loop5.exit:

	subq $1, %rax

.main.Loop6:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop6.exit
	addq $1, (%rax)
	addq $1, %rax

.main.Loop7:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop7.exit
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	jmp .main.Loop7
.main.Loop7.exit:

	subq $1, %rax
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	jmp .main.Loop6
.main.Loop6.exit:

	subq $1, (%rax)

.main.Loop8:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop8.exit
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
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	jmp .main.Loop8
.main.Loop8.exit:

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
	subq $1, (%rax)
	subq $1, (%rax)
	movb (%rax), %dil
	pushq %rax
	callq __bf_print
	popq %rax

.main.Loop9:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop9.exit
	subq $1, (%rax)
	jmp .main.Loop9
.main.Loop9.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, (%rax)
	addq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	addq $1, (%rax)

.main.Loop10:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop10.exit

.main.Loop11:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop11.exit
	subq $1, (%rax)
	jmp .main.Loop11
.main.Loop11.exit:

	addq $1, %rax
	addq $1, %rax

.main.Loop12:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop12.exit
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop13:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop13.exit
	subq $1, (%rax)
	jmp .main.Loop13
.main.Loop13.exit:

	addq $1, %rax

.main.Loop14:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop14.exit
	subq $1, (%rax)
	jmp .main.Loop14
.main.Loop14.exit:

	addq $1, %rax

.main.Loop15:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop15.exit
	subq $1, (%rax)
	jmp .main.Loop15
.main.Loop15.exit:

	addq $1, %rax

.main.Loop16:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop16.exit
	subq $1, (%rax)
	jmp .main.Loop16
.main.Loop16.exit:

	addq $1, %rax

.main.Loop17:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop17.exit
	subq $1, (%rax)
	jmp .main.Loop17
.main.Loop17.exit:

	addq $1, %rax

.main.Loop18:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop18.exit
	subq $1, (%rax)
	jmp .main.Loop18
.main.Loop18.exit:

	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax

.main.Loop19:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop19.exit
	subq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	jmp .main.Loop19
.main.Loop19.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	jmp .main.Loop12
.main.Loop12.exit:

	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax

.main.Loop20:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop20.exit
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop21:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop21.exit
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	jmp .main.Loop21
.main.Loop21.exit:

	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	jmp .main.Loop20
.main.Loop20.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop22:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop22.exit
	addq $1, %rax

.main.Loop23:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop23.exit
	subq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	jmp .main.Loop23
.main.Loop23.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	jmp .main.Loop22
.main.Loop22.exit:

	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax

.main.Loop24:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop24.exit
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop25:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop25.exit
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	jmp .main.Loop25
.main.Loop25.exit:

	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	jmp .main.Loop24
.main.Loop24.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop26:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop26.exit
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop27:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop27.exit
	subq $1, (%rax)
	jmp .main.Loop27
.main.Loop27.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop28:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop28.exit
	subq $1, (%rax)
	jmp .main.Loop28
.main.Loop28.exit:

	addq $1, %rax

.main.Loop29:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop29.exit
	subq $1, (%rax)
	jmp .main.Loop29
.main.Loop29.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	jmp .main.Loop26
.main.Loop26.exit:

	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax

.main.Loop30:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop30.exit
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	jmp .main.Loop30
.main.Loop30.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop31:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop31.exit
	subq $1, (%rax)
	jmp .main.Loop31
.main.Loop31.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax

.main.Loop32:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop32.exit
	addq $1, (%rax)
	jmp .main.Loop32
.main.Loop32.exit:

	addq $1, (%rax)

.main.Loop33:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop33.exit
	subq $1, (%rax)
	addq $1, %rax
	addq $1, %rax

.main.Loop34:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop34.exit
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop35:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop35.exit
	subq $1, (%rax)
	addq $1, %rax
	addq $1, (%rax)
	addq $1, (%rax)
	subq $1, %rax
	jmp .main.Loop35
.main.Loop35.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	jmp .main.Loop34
.main.Loop34.exit:

	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax

.main.Loop36:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop36.exit
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop37:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop37.exit
	subq $1, (%rax)
	jmp .main.Loop37
.main.Loop37.exit:

	addq $1, %rax

.main.Loop38:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop38.exit
	subq $1, (%rax)
	jmp .main.Loop38
.main.Loop38.exit:

	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax

.main.Loop39:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop39.exit
	subq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, (%rax)
	addq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	jmp .main.Loop39
.main.Loop39.exit:

	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	jmp .main.Loop36
.main.Loop36.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop40:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop40.exit
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop41:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop41.exit
	subq $1, (%rax)
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax

.main.Loop42:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop42.exit
	subq $1, (%rax)
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax

.main.Loop43:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop43.exit
	subq $1, (%rax)
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax

.main.Loop44:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop44.exit
	subq $1, (%rax)
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax

.main.Loop45:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop45.exit
	subq $1, (%rax)
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax

.main.Loop46:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop46.exit
	subq $1, (%rax)
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax

.main.Loop47:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop47.exit
	subq $1, (%rax)
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax

.main.Loop48:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop48.exit
	subq $1, (%rax)
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax

.main.Loop49:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop49.exit
	subq $1, (%rax)
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax

.main.Loop50:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop50.exit
	subq $1, (%rax)
	addq $1, %rax
	subq $1, (%rax)
	subq $1, (%rax)
	subq $1, (%rax)
	subq $1, (%rax)
	subq $1, (%rax)
	subq $1, (%rax)
	subq $1, (%rax)
	subq $1, (%rax)
	subq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax

.main.Loop51:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop51.exit
	subq $1, (%rax)
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax
	jmp .main.Loop51
.main.Loop51.exit:

	jmp .main.Loop50
.main.Loop50.exit:

	jmp .main.Loop49
.main.Loop49.exit:

	jmp .main.Loop48
.main.Loop48.exit:

	jmp .main.Loop47
.main.Loop47.exit:

	jmp .main.Loop46
.main.Loop46.exit:

	jmp .main.Loop45
.main.Loop45.exit:

	jmp .main.Loop44
.main.Loop44.exit:

	jmp .main.Loop43
.main.Loop43.exit:

	jmp .main.Loop42
.main.Loop42.exit:

	jmp .main.Loop41
.main.Loop41.exit:

	addq $1, %rax
	addq $1, %rax
	jmp .main.Loop40
.main.Loop40.exit:

	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax

.main.Loop52:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop52.exit
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop53:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop53.exit
	subq $1, (%rax)
	subq $1, %rax
	addq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	jmp .main.Loop53
.main.Loop53.exit:

	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	jmp .main.Loop52
.main.Loop52.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop54:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop54.exit
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop55:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop55.exit
	subq $1, (%rax)
	subq $1, %rax
	addq $1, (%rax)
	addq $1, %rax

.main.Loop56:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop56.exit
	subq $1, (%rax)
	subq $1, %rax
	addq $1, (%rax)
	addq $1, %rax

.main.Loop57:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop57.exit
	subq $1, (%rax)
	subq $1, %rax
	addq $1, (%rax)
	addq $1, %rax

.main.Loop58:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop58.exit
	subq $1, (%rax)
	subq $1, %rax
	addq $1, (%rax)
	addq $1, %rax

.main.Loop59:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop59.exit
	subq $1, (%rax)
	subq $1, %rax
	addq $1, (%rax)
	addq $1, %rax

.main.Loop60:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop60.exit
	subq $1, (%rax)
	subq $1, %rax
	addq $1, (%rax)
	addq $1, %rax

.main.Loop61:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop61.exit
	subq $1, (%rax)
	subq $1, %rax
	addq $1, (%rax)
	addq $1, %rax

.main.Loop62:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop62.exit
	subq $1, (%rax)
	subq $1, %rax
	addq $1, (%rax)
	addq $1, %rax

.main.Loop63:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop63.exit
	subq $1, (%rax)
	subq $1, %rax
	addq $1, (%rax)
	addq $1, %rax

.main.Loop64:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop64.exit
	subq $1, (%rax)
	subq $1, %rax
	subq $1, (%rax)
	subq $1, (%rax)
	subq $1, (%rax)
	subq $1, (%rax)
	subq $1, (%rax)
	subq $1, (%rax)
	subq $1, (%rax)
	subq $1, (%rax)
	subq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax

.main.Loop65:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop65.exit
	subq $1, (%rax)
	subq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	jmp .main.Loop65
.main.Loop65.exit:

	jmp .main.Loop64
.main.Loop64.exit:

	jmp .main.Loop63
.main.Loop63.exit:

	jmp .main.Loop62
.main.Loop62.exit:

	jmp .main.Loop61
.main.Loop61.exit:

	jmp .main.Loop60
.main.Loop60.exit:

	jmp .main.Loop59
.main.Loop59.exit:

	jmp .main.Loop58
.main.Loop58.exit:

	jmp .main.Loop57
.main.Loop57.exit:

	jmp .main.Loop56
.main.Loop56.exit:

	jmp .main.Loop55
.main.Loop55.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	jmp .main.Loop54
.main.Loop54.exit:

	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax

.main.Loop66:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop66.exit
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop67:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop67.exit
	subq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	jmp .main.Loop67
.main.Loop67.exit:

	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	jmp .main.Loop66
.main.Loop66.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop68:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop68.exit
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop69:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop69.exit
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	jmp .main.Loop69
.main.Loop69.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	jmp .main.Loop68
.main.Loop68.exit:

	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax

.main.Loop70:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop70.exit
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop71:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop71.exit
	subq $1, (%rax)
	addq $1, %rax
	subq $1, (%rax)
	subq $1, %rax
	jmp .main.Loop71
.main.Loop71.exit:

	addq $1, %rax

.main.Loop72:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop72.exit
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax

.main.Loop73:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop73.exit
	subq $1, %rax

.main.Loop74:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop74.exit
	subq $1, (%rax)
	jmp .main.Loop74
.main.Loop74.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop75:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop75.exit
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	jmp .main.Loop75
.main.Loop75.exit:

	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	jmp .main.Loop73
.main.Loop73.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	jmp .main.Loop72
.main.Loop72.exit:

	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	jmp .main.Loop70
.main.Loop70.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop76:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop76.exit
	addq $1, (%rax)

.main.Loop77:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop77.exit
	addq $1, (%rax)

.main.Loop78:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop78.exit
	addq $1, (%rax)

.main.Loop79:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop79.exit
	addq $1, (%rax)

.main.Loop80:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop80.exit
	addq $1, (%rax)

.main.Loop81:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop81.exit
	addq $1, (%rax)

.main.Loop82:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop82.exit
	addq $1, (%rax)

.main.Loop83:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop83.exit
	addq $1, (%rax)

.main.Loop84:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop84.exit
	addq $1, (%rax)

.main.Loop85:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop85.exit
	addq $1, (%rax)

.main.Loop86:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop86.exit

.main.Loop87:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop87.exit
	subq $1, (%rax)
	jmp .main.Loop87
.main.Loop87.exit:

	subq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	jmp .main.Loop86
.main.Loop86.exit:

	jmp .main.Loop85
.main.Loop85.exit:

	jmp .main.Loop84
.main.Loop84.exit:

	jmp .main.Loop83
.main.Loop83.exit:

	jmp .main.Loop82
.main.Loop82.exit:

	jmp .main.Loop81
.main.Loop81.exit:

	jmp .main.Loop80
.main.Loop80.exit:

	jmp .main.Loop79
.main.Loop79.exit:

	jmp .main.Loop78
.main.Loop78.exit:

	jmp .main.Loop77
.main.Loop77.exit:

	jmp .main.Loop76
.main.Loop76.exit:

	subq $1, %rax
	jmp .main.Loop33
.main.Loop33.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop88:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop88.exit
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax

.main.Loop89:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop89.exit
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop90:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop90.exit
	subq $1, (%rax)
	jmp .main.Loop90
.main.Loop90.exit:

	addq $1, %rax

.main.Loop91:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop91.exit
	subq $1, (%rax)
	jmp .main.Loop91
.main.Loop91.exit:

	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax

.main.Loop92:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop92.exit
	subq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	jmp .main.Loop92
.main.Loop92.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	jmp .main.Loop89
.main.Loop89.exit:

	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax

.main.Loop93:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop93.exit
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop94:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop94.exit
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	jmp .main.Loop94
.main.Loop94.exit:

	subq $1, %rax
	subq $1, %rax
	subq $1, %rax

.main.Loop95:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop95.exit
	subq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	jmp .main.Loop95
.main.Loop95.exit:

	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	jmp .main.Loop93
.main.Loop93.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop96:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop96.exit
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop97:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop97.exit
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	jmp .main.Loop97
.main.Loop97.exit:

	addq $1, %rax
	jmp .main.Loop96
.main.Loop96.exit:

	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax

.main.Loop98:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop98.exit
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop99:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop99.exit
	subq $1, (%rax)
	subq $1, %rax
	subq $1, (%rax)
	addq $1, %rax
	jmp .main.Loop99
.main.Loop99.exit:

	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	jmp .main.Loop98
.main.Loop98.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop100:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop100.exit
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop101:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop101.exit
	subq $1, (%rax)
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax

.main.Loop102:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop102.exit
	subq $1, (%rax)
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax

.main.Loop103:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop103.exit
	subq $1, (%rax)
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax

.main.Loop104:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop104.exit
	subq $1, (%rax)
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax

.main.Loop105:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop105.exit
	subq $1, (%rax)
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax

.main.Loop106:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop106.exit
	subq $1, (%rax)
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax

.main.Loop107:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop107.exit
	subq $1, (%rax)
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax

.main.Loop108:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop108.exit
	subq $1, (%rax)
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax

.main.Loop109:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop109.exit
	subq $1, (%rax)
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax

.main.Loop110:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop110.exit
	subq $1, (%rax)
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax

.main.Loop111:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop111.exit
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

.main.Loop112:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop112.exit
	addq $1, (%rax)
	addq $1, %rax
	subq $1, (%rax)
	subq $1, %rax
	jmp .main.Loop112
.main.Loop112.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	jmp .main.Loop111
.main.Loop111.exit:

	jmp .main.Loop110
.main.Loop110.exit:

	jmp .main.Loop109
.main.Loop109.exit:

	jmp .main.Loop108
.main.Loop108.exit:

	jmp .main.Loop107
.main.Loop107.exit:

	jmp .main.Loop106
.main.Loop106.exit:

	jmp .main.Loop105
.main.Loop105.exit:

	jmp .main.Loop104
.main.Loop104.exit:

	jmp .main.Loop103
.main.Loop103.exit:

	jmp .main.Loop102
.main.Loop102.exit:

	jmp .main.Loop101
.main.Loop101.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	jmp .main.Loop100
.main.Loop100.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, (%rax)

.main.Loop113:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop113.exit

.main.Loop114:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop114.exit
	subq $1, (%rax)
	jmp .main.Loop114
.main.Loop114.exit:

	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax

.main.Loop115:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop115.exit
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop116:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop116.exit
	subq $1, (%rax)
	jmp .main.Loop116
.main.Loop116.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop117:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop117.exit
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	jmp .main.Loop117
.main.Loop117.exit:

	subq $1, %rax
	subq $1, %rax

.main.Loop118:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop118.exit
	subq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	jmp .main.Loop118
.main.Loop118.exit:

	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	jmp .main.Loop115
.main.Loop115.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop119:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop119.exit
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop120:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop120.exit
	subq $1, (%rax)
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	jmp .main.Loop120
.main.Loop120.exit:

	addq $1, %rax
	addq $1, %rax
	jmp .main.Loop119
.main.Loop119.exit:

	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax

.main.Loop121:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop121.exit
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop122:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop122.exit
	subq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	jmp .main.Loop122
.main.Loop122.exit:

	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	jmp .main.Loop121
.main.Loop121.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop123:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop123.exit
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop124:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop124.exit
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop125:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop125.exit
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop126:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop126.exit
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop127:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop127.exit
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop128:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop128.exit
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop129:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop129.exit
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop130:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop130.exit
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop131:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop131.exit
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop132:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop132.exit
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop133:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop133.exit
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, (%rax)
	subq $1, (%rax)
	subq $1, (%rax)
	subq $1, (%rax)
	subq $1, (%rax)
	subq $1, (%rax)
	subq $1, (%rax)
	subq $1, (%rax)
	subq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax

.main.Loop134:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop134.exit
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	jmp .main.Loop134
.main.Loop134.exit:

	jmp .main.Loop133
.main.Loop133.exit:

	jmp .main.Loop132
.main.Loop132.exit:

	jmp .main.Loop131
.main.Loop131.exit:

	jmp .main.Loop130
.main.Loop130.exit:

	jmp .main.Loop129
.main.Loop129.exit:

	jmp .main.Loop128
.main.Loop128.exit:

	jmp .main.Loop127
.main.Loop127.exit:

	jmp .main.Loop126
.main.Loop126.exit:

	jmp .main.Loop125
.main.Loop125.exit:

	jmp .main.Loop124
.main.Loop124.exit:

	addq $1, %rax
	jmp .main.Loop123
.main.Loop123.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	jmp .main.Loop113
.main.Loop113.exit:

	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax

.main.Loop135:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop135.exit
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	jmp .main.Loop135
.main.Loop135.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop136:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop136.exit
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop137:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop137.exit
	subq $1, (%rax)
	jmp .main.Loop137
.main.Loop137.exit:

	subq $1, %rax
	subq $1, %rax

.main.Loop138:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop138.exit
	subq $1, (%rax)
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax
	jmp .main.Loop138
.main.Loop138.exit:

	subq $1, %rax

.main.Loop139:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop139.exit
	subq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	jmp .main.Loop139
.main.Loop139.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	jmp .main.Loop136
.main.Loop136.exit:

	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax

.main.Loop140:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop140.exit
	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop141:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop141.exit
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop142:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop142.exit
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, (%rax)
	addq $1, %rax

.main.Loop143:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop143.exit
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop144:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop144.exit
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, (%rax)
	addq $1, %rax

.main.Loop145:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop145.exit
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop146:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop146.exit
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, (%rax)
	addq $1, %rax

.main.Loop147:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop147.exit
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop148:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop148.exit
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, (%rax)
	addq $1, %rax

.main.Loop149:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop149.exit
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	jmp .main.Loop149
.main.Loop149.exit:

	jmp .main.Loop148
.main.Loop148.exit:

	jmp .main.Loop147
.main.Loop147.exit:

	jmp .main.Loop146
.main.Loop146.exit:

	jmp .main.Loop145
.main.Loop145.exit:

	jmp .main.Loop144
.main.Loop144.exit:

	jmp .main.Loop143
.main.Loop143.exit:

	jmp .main.Loop142
.main.Loop142.exit:

	jmp .main.Loop141
.main.Loop141.exit:

	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax

.main.Loop150:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop150.exit
	subq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	jmp .main.Loop150
.main.Loop150.exit:

	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	jmp .main.Loop140
.main.Loop140.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop151:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop151.exit
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	jmp .main.Loop151
.main.Loop151.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop152:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop152.exit
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop153:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop153.exit
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	jmp .main.Loop153
.main.Loop153.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	jmp .main.Loop152
.main.Loop152.exit:

	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax

.main.Loop154:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop154.exit
	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop155:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop155.exit
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop156:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop156.exit
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop157:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop157.exit
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop158:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop158.exit
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop159:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop159.exit
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop160:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop160.exit
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop161:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop161.exit
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop162:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop162.exit
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop163:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop163.exit
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	jmp .main.Loop163
.main.Loop163.exit:

	jmp .main.Loop162
.main.Loop162.exit:

	jmp .main.Loop161
.main.Loop161.exit:

	jmp .main.Loop160
.main.Loop160.exit:

	jmp .main.Loop159
.main.Loop159.exit:

	jmp .main.Loop158
.main.Loop158.exit:

	jmp .main.Loop157
.main.Loop157.exit:

	jmp .main.Loop156
.main.Loop156.exit:

	jmp .main.Loop155
.main.Loop155.exit:

	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax

.main.Loop164:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop164.exit
	subq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	jmp .main.Loop164
.main.Loop164.exit:

	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	jmp .main.Loop154
.main.Loop154.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop165:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop165.exit
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	jmp .main.Loop165
.main.Loop165.exit:

	addq $1, %rax
	addq $1, %rax

.main.Loop166:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop166.exit
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop167:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop167.exit
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	jmp .main.Loop167
.main.Loop167.exit:

	addq $1, %rax
	addq $1, %rax
	jmp .main.Loop166
.main.Loop166.exit:

	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax

.main.Loop168:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop168.exit
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	jmp .main.Loop168
.main.Loop168.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	jmp .main.Loop88
.main.Loop88.exit:

	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax

.main.Loop169:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop169.exit
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop170:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop170.exit
	subq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	jmp .main.Loop170
.main.Loop170.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	jmp .main.Loop169
.main.Loop169.exit:

	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax

.main.Loop171:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop171.exit
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop172:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop172.exit
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	jmp .main.Loop172
.main.Loop172.exit:

	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax

.main.Loop173:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop173.exit
	subq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	jmp .main.Loop173
.main.Loop173.exit:

	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	jmp .main.Loop171
.main.Loop171.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop174:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop174.exit
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop175:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop175.exit
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	jmp .main.Loop175
.main.Loop175.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	jmp .main.Loop174
.main.Loop174.exit:

	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax

.main.Loop176:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop176.exit
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop177:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop177.exit
	subq $1, (%rax)
	subq $1, %rax
	subq $1, (%rax)
	addq $1, %rax
	jmp .main.Loop177
.main.Loop177.exit:

	subq $1, %rax

.main.Loop178:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop178.exit
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax

.main.Loop179:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop179.exit
	subq $1, %rax
	subq $1, %rax

.main.Loop180:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop180.exit
	subq $1, (%rax)
	jmp .main.Loop180
.main.Loop180.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop181:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop181.exit
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	jmp .main.Loop181
.main.Loop181.exit:

	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	jmp .main.Loop179
.main.Loop179.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	jmp .main.Loop178
.main.Loop178.exit:

	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	jmp .main.Loop176
.main.Loop176.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop182:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop182.exit
	addq $1, %rax
	subq $1, (%rax)
	subq $1, %rax

.main.Loop183:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop183.exit
	addq $1, (%rax)

.main.Loop184:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop184.exit
	addq $1, (%rax)

.main.Loop185:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop185.exit
	addq $1, (%rax)

.main.Loop186:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop186.exit
	addq $1, (%rax)

.main.Loop187:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop187.exit
	addq $1, (%rax)

.main.Loop188:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop188.exit
	addq $1, (%rax)

.main.Loop189:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop189.exit
	addq $1, (%rax)

.main.Loop190:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop190.exit
	addq $1, (%rax)

.main.Loop191:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop191.exit
	addq $1, (%rax)

.main.Loop192:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop192.exit

.main.Loop193:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop193.exit
	subq $1, (%rax)
	jmp .main.Loop193
.main.Loop193.exit:

	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax
	jmp .main.Loop192
.main.Loop192.exit:

	jmp .main.Loop191
.main.Loop191.exit:

	jmp .main.Loop190
.main.Loop190.exit:

	jmp .main.Loop189
.main.Loop189.exit:

	jmp .main.Loop188
.main.Loop188.exit:

	jmp .main.Loop187
.main.Loop187.exit:

	jmp .main.Loop186
.main.Loop186.exit:

	jmp .main.Loop185
.main.Loop185.exit:

	jmp .main.Loop184
.main.Loop184.exit:

	jmp .main.Loop183
.main.Loop183.exit:

	jmp .main.Loop182
.main.Loop182.exit:

	addq $1, %rax
	addq $1, (%rax)

.main.Loop194:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop194.exit

.main.Loop195:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop195.exit
	subq $1, (%rax)
	jmp .main.Loop195
.main.Loop195.exit:

	subq $1, %rax

.main.Loop196:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop196.exit
	subq $1, (%rax)
	jmp .main.Loop196
.main.Loop196.exit:

	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop197:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop197.exit
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	jmp .main.Loop197
.main.Loop197.exit:

	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax

.main.Loop198:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop198.exit
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax

.main.Loop199:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop199.exit
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax

.main.Loop200:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop200.exit
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	jmp .main.Loop200
.main.Loop200.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	jmp .main.Loop199
.main.Loop199.exit:

	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	jmp .main.Loop198
.main.Loop198.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop201:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop201.exit
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	jmp .main.Loop201
.main.Loop201.exit:

	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax

.main.Loop202:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop202.exit
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	jmp .main.Loop202
.main.Loop202.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	subq $1, (%rax)

.main.Loop203:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop203.exit

.main.Loop204:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop204.exit
	addq $1, (%rax)
	jmp .main.Loop204
.main.Loop204.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax

.main.Loop205:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop205.exit
	addq $1, %rax

.main.Loop206:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop206.exit
	subq $1, (%rax)
	jmp .main.Loop206
.main.Loop206.exit:

	addq $1, %rax
	addq $1, %rax

.main.Loop207:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop207.exit
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	jmp .main.Loop207
.main.Loop207.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	jmp .main.Loop205
.main.Loop205.exit:

	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax

.main.Loop208:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop208.exit
	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax

.main.Loop209:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop209.exit
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	jmp .main.Loop209
.main.Loop209.exit:

	subq $1, %rax
	subq $1, %rax
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	jmp .main.Loop208
.main.Loop208.exit:

	subq $1, (%rax)

.main.Loop210:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop210.exit
	addq $1, %rax
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
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	jmp .main.Loop210
.main.Loop210.exit:

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
	movb (%rax), %dil
	pushq %rax
	callq __bf_print
	popq %rax

.main.Loop211:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop211.exit
	subq $1, (%rax)
	jmp .main.Loop211
.main.Loop211.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	jmp .main.Loop203
.main.Loop203.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop212:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop212.exit
	addq $1, %rax
	addq $1, %rax

.main.Loop213:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop213.exit
	subq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax

.main.Loop214:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop214.exit
	subq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax

.main.Loop215:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop215.exit
	subq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax

.main.Loop216:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop216.exit
	subq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax

.main.Loop217:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop217.exit
	subq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax

.main.Loop218:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop218.exit
	subq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax

.main.Loop219:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop219.exit
	subq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax

.main.Loop220:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop220.exit
	subq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax

.main.Loop221:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop221.exit
	subq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax

.main.Loop222:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop222.exit
	subq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	subq $1, (%rax)
	subq $1, (%rax)
	subq $1, (%rax)
	subq $1, (%rax)
	subq $1, (%rax)
	subq $1, (%rax)
	subq $1, (%rax)
	subq $1, (%rax)
	subq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax

.main.Loop223:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop223.exit
	subq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	jmp .main.Loop223
.main.Loop223.exit:

	jmp .main.Loop222
.main.Loop222.exit:

	jmp .main.Loop221
.main.Loop221.exit:

	jmp .main.Loop220
.main.Loop220.exit:

	jmp .main.Loop219
.main.Loop219.exit:

	jmp .main.Loop218
.main.Loop218.exit:

	jmp .main.Loop217
.main.Loop217.exit:

	jmp .main.Loop216
.main.Loop216.exit:

	jmp .main.Loop215
.main.Loop215.exit:

	jmp .main.Loop214
.main.Loop214.exit:

	jmp .main.Loop213
.main.Loop213.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	jmp .main.Loop212
.main.Loop212.exit:

	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax

.main.Loop224:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop224.exit
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax

.main.Loop225:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop225.exit
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	jmp .main.Loop225
.main.Loop225.exit:

	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	jmp .main.Loop224
.main.Loop224.exit:

	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	jmp .main.Loop194
.main.Loop194.exit:

	subq $1, %rax
	jmp .main.Loop10
.main.Loop10.exit:

	addq $1, %rax
	addq $1, %rax

.main.Loop226:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop226.exit
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	jmp .main.Loop226
.main.Loop226.exit:

	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax

.main.Loop227:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop227.exit
	addq $1, (%rax)
	addq $1, %rax

.main.Loop228:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop228.exit
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, %rax
	addq $1, (%rax)
	addq $1, %rax
	jmp .main.Loop228
.main.Loop228.exit:

	subq $1, %rax
	subq $1, (%rax)
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	jmp .main.Loop227
.main.Loop227.exit:

	subq $1, (%rax)

.main.Loop229:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop229.exit
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
	movb (%rax), %dil
	pushq %rax
	callq __bf_print
	popq %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	subq $1, %rax
	jmp .main.Loop229
.main.Loop229.exit:

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