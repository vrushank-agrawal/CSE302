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
	addq $-1, 30(%rax)
	addq $1, 21(%rax)
	addq $21, %rax

.main.Loop4:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop4.exit
	addq $-1, 0(%rax)

.main.Loop0:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop0.exit
	addq $10, %rax
	jmp .main.Loop0
.main.Loop0.exit:

	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	addq $-10, %rax

.main.Loop3:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop3.exit
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	movb 1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 10(%rax), %r8
	movb %r8b, 10(%rax)
	addq $-10, %rax
	jmp .main.Loop3
.main.Loop3.exit:

	addq $10, %rax
	pushq %rax
	callq __bf_get
	movq %rax, %r11
	popq %rax
	movb %r11b, (%rax)
	addq $-10, 0(%rax)
	jmp .main.Loop4
.main.Loop4.exit:

	addq $10, %rax

.main.Loop5:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop5.exit
	addq $-37, 0(%rax)
	addq $-1, 9(%rax)
	addq $10, %rax
	jmp .main.Loop5
.main.Loop5.exit:

	addq $-1, %rax

.main.Loop7:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop7.exit
	addq $1, 0(%rax)
	addq $1, %rax

.main.Loop6:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop6.exit
	addq $1, 9(%rax)
	addq $10, %rax
	jmp .main.Loop6
.main.Loop6.exit:

	addq $-1, -1(%rax)
	addq $-11, %rax
	jmp .main.Loop7
.main.Loop7.exit:

	addq $-1, 0(%rax)

.main.Loop8:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop8.exit
	addq $48, 1(%rax)
	addq $1, %rax
	movb (%rax), %dil
	pushq %rax
	callq __bf_print
	popq %rax
	addq $-48, 0(%rax)
	addq $-11, %rax
	jmp .main.Loop8
.main.Loop8.exit:

	addq $58, 0(%rax)
	movb (%rax), %dil
	pushq %rax
	callq __bf_print
	popq %rax
	addq $-26, 0(%rax)
	movb (%rax), %dil
	pushq %rax
	callq __bf_print
	popq %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	addq $2, 12(%rax)
	addq $1, 8(%rax)
	addq $8, %rax

.main.Loop225:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop225.exit
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	addq $2, %rax

.main.Loop18:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop18.exit
	addq $4, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	addq $1, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	addq $1, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	addq $1, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	addq $1, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	addq $1, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	addq $-7, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	movb 1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 3(%rax), %r8
	movb %r8b, 3(%rax)
	movb 1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 4(%rax), %r8
	movb %r8b, 4(%rax)
	addq $8, %rax
	jmp .main.Loop18
.main.Loop18.exit:

	addq $-10, %rax

.main.Loop20:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop20.exit
	addq $6, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	movb 1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq -4(%rax), %r8
	movb %r8b, -4(%rax)
	addq $-16, %rax
	jmp .main.Loop20
.main.Loop20.exit:

	addq $10, %rax

.main.Loop22:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop22.exit
	addq $1, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	movb 1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 3(%rax), %r8
	movb %r8b, 3(%rax)
	movb 1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 5(%rax), %r8
	movb %r8b, 5(%rax)
	addq $9, %rax
	jmp .main.Loop22
.main.Loop22.exit:

	addq $-10, %rax

.main.Loop24:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop24.exit
	addq $6, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	movb 1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq -5(%rax), %r8
	movb %r8b, -5(%rax)
	addq $-16, %rax
	jmp .main.Loop24
.main.Loop24.exit:

	addq $10, %rax

.main.Loop28:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop28.exit
	addq $3, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	addq $3, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	addq $1, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	addq $3, %rax
	jmp .main.Loop28
.main.Loop28.exit:

	addq $-10, %rax

.main.Loop29:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop29.exit
	addq $-10, %rax
	jmp .main.Loop29
.main.Loop29.exit:

	addq $9, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	addq $1, 7(%rax)
	addq $-1, %rax

.main.Loop31:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop31.exit
	addq $1, 0(%rax)
	jmp .main.Loop31
.main.Loop31.exit:

	addq $1, 0(%rax)

.main.Loop86:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop86.exit
	addq $-1, 0(%rax)
	addq $2, %rax

.main.Loop33:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop33.exit
	addq $6, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	movb 2, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 1(%rax), %r8
	movb %r8b, 1(%rax)
	addq $4, %rax
	jmp .main.Loop33
.main.Loop33.exit:

	addq $-10, %rax

.main.Loop37:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop37.exit
	addq $8, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	addq $1, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	addq $-4, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	movb 2, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 3(%rax), %r8
	movb %r8b, 3(%rax)
	addq $-15, %rax
	jmp .main.Loop37
.main.Loop37.exit:

	addq $10, %rax

.main.Loop49:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop49.exit
	addq $8, %rax

.main.Loop48:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop48.exit
	addq $-1, 0(%rax)
	addq $1, 1(%rax)

.main.Loop47:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop47.exit
	addq $-1, 0(%rax)
	addq $1, 1(%rax)

.main.Loop46:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop46.exit
	addq $-1, 0(%rax)
	addq $1, 1(%rax)

.main.Loop45:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop45.exit
	addq $-1, 0(%rax)
	addq $1, 1(%rax)

.main.Loop44:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop44.exit
	addq $-1, 0(%rax)
	addq $1, 1(%rax)

.main.Loop43:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop43.exit
	addq $-1, 0(%rax)
	addq $1, 1(%rax)

.main.Loop42:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop42.exit
	addq $-1, 0(%rax)
	addq $1, 1(%rax)

.main.Loop41:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop41.exit
	addq $-1, 0(%rax)
	addq $1, 1(%rax)

.main.Loop40:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop40.exit
	addq $-1, 0(%rax)
	addq $1, 1(%rax)

.main.Loop39:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop39.exit
	addq $-1, 0(%rax)
	addq $-9, 1(%rax)
	addq $1, 10(%rax)
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	movb 1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 1(%rax), %r8
	movb %r8b, 1(%rax)
	jmp .main.Loop39
.main.Loop39.exit:

	jmp .main.Loop40
.main.Loop40.exit:

	jmp .main.Loop41
.main.Loop41.exit:

	jmp .main.Loop42
.main.Loop42.exit:

	jmp .main.Loop43
.main.Loop43.exit:

	jmp .main.Loop44
.main.Loop44.exit:

	jmp .main.Loop45
.main.Loop45.exit:

	jmp .main.Loop46
.main.Loop46.exit:

	jmp .main.Loop47
.main.Loop47.exit:

	jmp .main.Loop48
.main.Loop48.exit:

	addq $2, %rax
	jmp .main.Loop49
.main.Loop49.exit:

	addq $-10, %rax

.main.Loop51:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop51.exit
	addq $9, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	movb 1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq -1(%rax), %r8
	movb %r8b, -1(%rax)
	movb 1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq -4(%rax), %r8
	movb %r8b, -4(%rax)
	addq $-19, %rax
	jmp .main.Loop51
.main.Loop51.exit:

	addq $10, %rax

.main.Loop63:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop63.exit
	addq $7, %rax

.main.Loop62:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop62.exit
	addq $-1, 0(%rax)
	addq $1, -1(%rax)

.main.Loop61:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop61.exit
	addq $-1, 0(%rax)
	addq $1, -1(%rax)

.main.Loop60:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop60.exit
	addq $-1, 0(%rax)
	addq $1, -1(%rax)

.main.Loop59:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop59.exit
	addq $-1, 0(%rax)
	addq $1, -1(%rax)

.main.Loop58:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop58.exit
	addq $-1, 0(%rax)
	addq $1, -1(%rax)

.main.Loop57:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop57.exit
	addq $-1, 0(%rax)
	addq $1, -1(%rax)

.main.Loop56:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop56.exit
	addq $-1, 0(%rax)
	addq $1, -1(%rax)

.main.Loop55:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop55.exit
	addq $-1, 0(%rax)
	addq $1, -1(%rax)

.main.Loop54:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop54.exit
	addq $-1, 0(%rax)
	addq $1, -1(%rax)

.main.Loop53:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop53.exit
	addq $-1, 0(%rax)
	addq $-9, -1(%rax)
	addq $1, 10(%rax)
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	movb 1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq -1(%rax), %r8
	movb %r8b, -1(%rax)
	jmp .main.Loop53
.main.Loop53.exit:

	jmp .main.Loop54
.main.Loop54.exit:

	jmp .main.Loop55
.main.Loop55.exit:

	jmp .main.Loop56
.main.Loop56.exit:

	jmp .main.Loop57
.main.Loop57.exit:

	jmp .main.Loop58
.main.Loop58.exit:

	jmp .main.Loop59
.main.Loop59.exit:

	jmp .main.Loop60
.main.Loop60.exit:

	jmp .main.Loop61
.main.Loop61.exit:

	jmp .main.Loop62
.main.Loop62.exit:

	addq $3, %rax
	jmp .main.Loop63
.main.Loop63.exit:

	addq $-10, %rax

.main.Loop65:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop65.exit
	addq $4, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	movb 1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 3(%rax), %r8
	movb %r8b, 3(%rax)
	movb 1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 5(%rax), %r8
	movb %r8b, 5(%rax)
	addq $-14, %rax
	jmp .main.Loop65
.main.Loop65.exit:

	addq $10, %rax

.main.Loop67:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop67.exit
	addq $7, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	movb 1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq -3(%rax), %r8
	movb %r8b, -3(%rax)
	addq $3, %rax
	jmp .main.Loop67
.main.Loop67.exit:

	addq $-10, %rax

.main.Loop73:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop73.exit
	addq $8, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 1(%rax), %r8
	movb %r8b, 1(%rax)
	addq $1, %rax

.main.Loop72:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop72.exit
	addq $-9, %rax

.main.Loop71:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop71.exit
	addq $-1, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	addq $10, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	movb 1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq -10(%rax), %r8
	movb %r8b, -10(%rax)
	addq $-19, %rax
	jmp .main.Loop71
.main.Loop71.exit:

	addq $19, %rax
	jmp .main.Loop72
.main.Loop72.exit:

	addq $-19, %rax
	jmp .main.Loop73
.main.Loop73.exit:

	addq $9, %rax

.main.Loop85:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop85.exit
	addq $1, 0(%rax)

.main.Loop84:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop84.exit
	addq $1, 0(%rax)

.main.Loop83:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop83.exit
	addq $1, 0(%rax)

.main.Loop82:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop82.exit
	addq $1, 0(%rax)

.main.Loop81:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop81.exit
	addq $1, 0(%rax)

.main.Loop80:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop80.exit
	addq $1, 0(%rax)

.main.Loop79:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop79.exit
	addq $1, 0(%rax)

.main.Loop78:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop78.exit
	addq $1, 0(%rax)

.main.Loop77:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop77.exit
	addq $1, 0(%rax)

.main.Loop76:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop76.exit
	addq $1, 0(%rax)

.main.Loop75:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop75.exit
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	addq $1, -1(%rax)
	jmp .main.Loop75
.main.Loop75.exit:

	jmp .main.Loop76
.main.Loop76.exit:

	jmp .main.Loop77
.main.Loop77.exit:

	jmp .main.Loop78
.main.Loop78.exit:

	jmp .main.Loop79
.main.Loop79.exit:

	jmp .main.Loop80
.main.Loop80.exit:

	jmp .main.Loop81
.main.Loop81.exit:

	jmp .main.Loop82
.main.Loop82.exit:

	jmp .main.Loop83
.main.Loop83.exit:

	jmp .main.Loop84
.main.Loop84.exit:

	jmp .main.Loop85
.main.Loop85.exit:

	addq $-1, %rax
	jmp .main.Loop86
.main.Loop86.exit:

	addq $8, %rax

.main.Loop167:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop167.exit
	addq $-6, %rax

.main.Loop90:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop90.exit
	addq $8, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	addq $1, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	addq $-5, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	movb 1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 3(%rax), %r8
	movb %r8b, 3(%rax)
	movb 1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 4(%rax), %r8
	movb %r8b, 4(%rax)
	addq $6, %rax
	jmp .main.Loop90
.main.Loop90.exit:

	addq $-10, %rax

.main.Loop93:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop93.exit
	addq $8, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	movb 1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq -4(%rax), %r8
	movb %r8b, -4(%rax)
	addq $-3, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	movb 1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 3(%rax), %r8
	movb %r8b, 3(%rax)
	movb 1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 4(%rax), %r8
	movb %r8b, 4(%rax)
	addq $-15, %rax
	jmp .main.Loop93
.main.Loop93.exit:

	addq $10, %rax

.main.Loop95:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop95.exit
	addq $9, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	movb 1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq -4(%rax), %r8
	movb %r8b, -4(%rax)
	addq $1, %rax
	jmp .main.Loop95
.main.Loop95.exit:

	addq $-10, %rax

.main.Loop97:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop97.exit
	addq $8, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq -1(%rax), %r8
	movb %r8b, -1(%rax)
	addq $-18, %rax
	jmp .main.Loop97
.main.Loop97.exit:

	addq $10, %rax

.main.Loop110:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop110.exit
	addq $7, %rax

.main.Loop109:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop109.exit
	addq $-1, 0(%rax)
	addq $1, 1(%rax)

.main.Loop108:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop108.exit
	addq $-1, 0(%rax)
	addq $1, 1(%rax)

.main.Loop107:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop107.exit
	addq $-1, 0(%rax)
	addq $1, 1(%rax)

.main.Loop106:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop106.exit
	addq $-1, 0(%rax)
	addq $1, 1(%rax)

.main.Loop105:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop105.exit
	addq $-1, 0(%rax)
	addq $1, 1(%rax)

.main.Loop104:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop104.exit
	addq $-1, 0(%rax)
	addq $1, 1(%rax)

.main.Loop103:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop103.exit
	addq $-1, 0(%rax)
	addq $1, 1(%rax)

.main.Loop102:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop102.exit
	addq $-1, 0(%rax)
	addq $1, 1(%rax)

.main.Loop101:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop101.exit
	addq $-1, 0(%rax)
	addq $1, 1(%rax)

.main.Loop100:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop100.exit
	addq $-1, 0(%rax)
	addq $1, 1(%rax)

.main.Loop99:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop99.exit
	addq $10, 0(%rax)

.main.Loop98:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop98.exit
	addq $1, 0(%rax)
	addq $-1, 1(%rax)
	jmp .main.Loop98
.main.Loop98.exit:

	addq $-1, 10(%rax)
	jmp .main.Loop99
.main.Loop99.exit:

	jmp .main.Loop100
.main.Loop100.exit:

	jmp .main.Loop101
.main.Loop101.exit:

	jmp .main.Loop102
.main.Loop102.exit:

	jmp .main.Loop103
.main.Loop103.exit:

	jmp .main.Loop104
.main.Loop104.exit:

	jmp .main.Loop105
.main.Loop105.exit:

	jmp .main.Loop106
.main.Loop106.exit:

	jmp .main.Loop107
.main.Loop107.exit:

	jmp .main.Loop108
.main.Loop108.exit:

	jmp .main.Loop109
.main.Loop109.exit:

	addq $3, %rax
	jmp .main.Loop110
.main.Loop110.exit:

	addq $1, 7(%rax)
	addq $7, %rax

.main.Loop132:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop132.exit
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	addq $-17, %rax

.main.Loop115:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop115.exit
	addq $4, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	addq $4, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	movb 1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq -4(%rax), %r8
	movb %r8b, -4(%rax)
	addq $-2, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	movb 1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 2(%rax), %r8
	movb %r8b, 2(%rax)
	addq $-16, %rax
	jmp .main.Loop115
.main.Loop115.exit:

	addq $10, %rax

.main.Loop117:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop117.exit
	addq $8, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	movb 1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 1(%rax), %r8
	movb %r8b, 1(%rax)
	movb 1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq -2(%rax), %r8
	movb %r8b, -2(%rax)
	addq $2, %rax
	jmp .main.Loop117
.main.Loop117.exit:

	addq $-10, %rax

.main.Loop119:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop119.exit
	addq $3, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	movb 1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 6(%rax), %r8
	movb %r8b, 6(%rax)
	addq $-13, %rax
	jmp .main.Loop119
.main.Loop119.exit:

	addq $10, %rax

.main.Loop131:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop131.exit
	addq $9, %rax

.main.Loop130:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop130.exit
	addq $-1, 0(%rax)
	addq $1, -6(%rax)

.main.Loop129:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop129.exit
	addq $-1, 0(%rax)
	addq $1, -6(%rax)

.main.Loop128:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop128.exit
	addq $-1, 0(%rax)
	addq $1, -6(%rax)

.main.Loop127:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop127.exit
	addq $-1, 0(%rax)
	addq $1, -6(%rax)

.main.Loop126:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop126.exit
	addq $-1, 0(%rax)
	addq $1, -6(%rax)

.main.Loop125:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop125.exit
	addq $-1, 0(%rax)
	addq $1, -6(%rax)

.main.Loop124:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop124.exit
	addq $-1, 0(%rax)
	addq $1, -6(%rax)

.main.Loop123:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop123.exit
	addq $-1, 0(%rax)
	addq $1, -6(%rax)

.main.Loop122:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop122.exit
	addq $-1, 0(%rax)
	addq $1, -6(%rax)

.main.Loop121:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop121.exit
	addq $-1, 0(%rax)
	addq $-9, -6(%rax)
	addq $1, 10(%rax)
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	movb 1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq -6(%rax), %r8
	movb %r8b, -6(%rax)
	jmp .main.Loop121
.main.Loop121.exit:

	jmp .main.Loop122
.main.Loop122.exit:

	jmp .main.Loop123
.main.Loop123.exit:

	jmp .main.Loop124
.main.Loop124.exit:

	jmp .main.Loop125
.main.Loop125.exit:

	jmp .main.Loop126
.main.Loop126.exit:

	jmp .main.Loop127
.main.Loop127.exit:

	jmp .main.Loop128
.main.Loop128.exit:

	jmp .main.Loop129
.main.Loop129.exit:

	jmp .main.Loop130
.main.Loop130.exit:

	addq $1, %rax
	jmp .main.Loop131
.main.Loop131.exit:

	addq $7, %rax
	jmp .main.Loop132
.main.Loop132.exit:

	addq $-17, %rax

.main.Loop133:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop133.exit
	addq $-10, %rax
	jmp .main.Loop133
.main.Loop133.exit:

	addq $10, %rax

.main.Loop137:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop137.exit
	addq $8, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	addq $-2, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	movb 1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 1(%rax), %r8
	movb %r8b, 1(%rax)
	addq $-1, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	movb 1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 3(%rax), %r8
	movb %r8b, 3(%rax)
	addq $5, %rax
	jmp .main.Loop137
.main.Loop137.exit:

	addq $-10, %rax

.main.Loop148:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop148.exit
	addq $1, 0(%rax)
	addq $7, %rax

.main.Loop146:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop146.exit
	addq $-1, 0(%rax)
	addq $1, -7(%rax)

.main.Loop145:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop145.exit
	addq $-1, 0(%rax)
	addq $-1, -7(%rax)
	addq $1, -1(%rax)

.main.Loop144:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop144.exit
	addq $-1, 0(%rax)
	addq $1, -7(%rax)

.main.Loop143:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop143.exit
	addq $-1, 0(%rax)
	addq $-1, -7(%rax)
	addq $1, -1(%rax)

.main.Loop142:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop142.exit
	addq $-1, 0(%rax)
	addq $1, -7(%rax)

.main.Loop141:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop141.exit
	addq $-1, 0(%rax)
	addq $-1, -7(%rax)
	addq $1, -1(%rax)

.main.Loop140:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop140.exit
	addq $-1, 0(%rax)
	addq $1, -7(%rax)

.main.Loop139:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop139.exit
	addq $-1, 0(%rax)
	addq $-1, -7(%rax)
	addq $1, -1(%rax)
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	movb 1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq -7(%rax), %r8
	movb %r8b, -7(%rax)
	jmp .main.Loop139
.main.Loop139.exit:

	jmp .main.Loop140
.main.Loop140.exit:

	jmp .main.Loop141
.main.Loop141.exit:

	jmp .main.Loop142
.main.Loop142.exit:

	jmp .main.Loop143
.main.Loop143.exit:

	jmp .main.Loop144
.main.Loop144.exit:

	jmp .main.Loop145
.main.Loop145.exit:

	jmp .main.Loop146
.main.Loop146.exit:

	addq $-7, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	movb 1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 7(%rax), %r8
	movb %r8b, 7(%rax)
	addq $-1, 0(%rax)
	addq $-10, %rax
	jmp .main.Loop148
.main.Loop148.exit:

	addq $7, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	movb 1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq -11(%rax), %r8
	movb %r8b, -11(%rax)
	addq $3, %rax

.main.Loop151:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop151.exit
	addq $7, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	movb 5, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq -11(%rax), %r8
	movb %r8b, -11(%rax)
	addq $3, %rax
	jmp .main.Loop151
.main.Loop151.exit:

	addq $-10, %rax

.main.Loop162:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop162.exit
	addq $1, 0(%rax)
	addq $8, %rax

.main.Loop160:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop160.exit
	addq $-1, 0(%rax)
	addq $1, -8(%rax)

.main.Loop159:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop159.exit
	addq $-1, 0(%rax)
	addq $-1, -8(%rax)
	addq $1, -3(%rax)

.main.Loop158:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop158.exit
	addq $-1, 0(%rax)
	addq $1, -8(%rax)

.main.Loop157:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop157.exit
	addq $-1, 0(%rax)
	addq $-1, -8(%rax)
	addq $1, -3(%rax)

.main.Loop156:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop156.exit
	addq $-1, 0(%rax)
	addq $1, -8(%rax)

.main.Loop155:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop155.exit
	addq $-1, 0(%rax)
	addq $-1, -8(%rax)
	addq $1, -3(%rax)

.main.Loop154:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop154.exit
	addq $-1, 0(%rax)
	addq $1, -8(%rax)

.main.Loop153:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop153.exit
	addq $-1, 0(%rax)
	addq $-1, -8(%rax)
	addq $1, -3(%rax)
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	movb 1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq -8(%rax), %r8
	movb %r8b, -8(%rax)
	jmp .main.Loop153
.main.Loop153.exit:

	jmp .main.Loop154
.main.Loop154.exit:

	jmp .main.Loop155
.main.Loop155.exit:

	jmp .main.Loop156
.main.Loop156.exit:

	jmp .main.Loop157
.main.Loop157.exit:

	jmp .main.Loop158
.main.Loop158.exit:

	jmp .main.Loop159
.main.Loop159.exit:

	jmp .main.Loop160
.main.Loop160.exit:

	addq $-8, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	movb 1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 8(%rax), %r8
	movb %r8b, 8(%rax)
	addq $-1, 0(%rax)
	addq $-10, %rax
	jmp .main.Loop162
.main.Loop162.exit:

	addq $8, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	movb 1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq -13(%rax), %r8
	movb %r8b, -13(%rax)
	addq $2, %rax

.main.Loop165:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop165.exit
	addq $8, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	movb 5, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq -13(%rax), %r8
	movb %r8b, -13(%rax)
	addq $2, %rax
	jmp .main.Loop165
.main.Loop165.exit:

	addq $-10, %rax

.main.Loop166:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop166.exit
	addq $-10, %rax
	jmp .main.Loop166
.main.Loop166.exit:

	addq $16, %rax
	jmp .main.Loop167
.main.Loop167.exit:

	addq $-6, %rax

.main.Loop169:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop169.exit
	addq $3, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	movb 1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 4(%rax), %r8
	movb %r8b, 4(%rax)
	movb 1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 5(%rax), %r8
	movb %r8b, 5(%rax)
	addq $7, %rax
	jmp .main.Loop169
.main.Loop169.exit:

	addq $-10, %rax

.main.Loop172:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop172.exit
	addq $7, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	movb 1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq -4(%rax), %r8
	movb %r8b, -4(%rax)
	addq $-5, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	movb 1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 5(%rax), %r8
	movb %r8b, 5(%rax)
	movb 1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 7(%rax), %r8
	movb %r8b, 7(%rax)
	addq $-12, %rax
	jmp .main.Loop172
.main.Loop172.exit:

	addq $10, %rax

.main.Loop174:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop174.exit
	addq $7, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	movb 1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq -5(%rax), %r8
	movb %r8b, -5(%rax)
	addq $3, %rax
	jmp .main.Loop174
.main.Loop174.exit:

	addq $-10, %rax

.main.Loop180:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop180.exit
	addq $9, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq -1(%rax), %r8
	movb %r8b, -1(%rax)
	addq $-1, %rax

.main.Loop179:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop179.exit
	addq $-8, %rax

.main.Loop178:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop178.exit
	addq $-2, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	addq $10, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	movb 1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq -10(%rax), %r8
	movb %r8b, -10(%rax)
	addq $-18, %rax
	jmp .main.Loop178
.main.Loop178.exit:

	addq $18, %rax
	jmp .main.Loop179
.main.Loop179.exit:

	addq $-18, %rax
	jmp .main.Loop180
.main.Loop180.exit:

	addq $8, %rax

.main.Loop192:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop192.exit
	addq $-1, 1(%rax)

.main.Loop191:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop191.exit
	addq $1, 0(%rax)

.main.Loop190:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop190.exit
	addq $1, 0(%rax)

.main.Loop189:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop189.exit
	addq $1, 0(%rax)

.main.Loop188:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop188.exit
	addq $1, 0(%rax)

.main.Loop187:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop187.exit
	addq $1, 0(%rax)

.main.Loop186:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop186.exit
	addq $1, 0(%rax)

.main.Loop185:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop185.exit
	addq $1, 0(%rax)

.main.Loop184:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop184.exit
	addq $1, 0(%rax)

.main.Loop183:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop183.exit
	addq $1, 0(%rax)

.main.Loop182:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop182.exit
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	addq $1, 1(%rax)
	jmp .main.Loop182
.main.Loop182.exit:

	jmp .main.Loop183
.main.Loop183.exit:

	jmp .main.Loop184
.main.Loop184.exit:

	jmp .main.Loop185
.main.Loop185.exit:

	jmp .main.Loop186
.main.Loop186.exit:

	jmp .main.Loop187
.main.Loop187.exit:

	jmp .main.Loop188
.main.Loop188.exit:

	jmp .main.Loop189
.main.Loop189.exit:

	jmp .main.Loop190
.main.Loop190.exit:

	jmp .main.Loop191
.main.Loop191.exit:

	jmp .main.Loop192
.main.Loop192.exit:

	addq $1, 1(%rax)
	addq $1, %rax

.main.Loop224:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop224.exit
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	addq $-1, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	addq $1, 0(%rax)
	addq $1, 4(%rax)
	addq $12, %rax

.main.Loop195:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop195.exit
	addq $10, %rax
	jmp .main.Loop195
.main.Loop195.exit:

	addq $-10, %rax

.main.Loop198:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop198.exit
	addq $-6, %rax

.main.Loop197:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop197.exit
	addq $-4, %rax

.main.Loop196:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop196.exit
	addq $-10, %rax
	jmp .main.Loop196
.main.Loop196.exit:

	addq $1, 4(%rax)
	addq $-6, %rax
	jmp .main.Loop197
.main.Loop197.exit:

	addq $-4, %rax
	jmp .main.Loop198
.main.Loop198.exit:

	addq $20, %rax

.main.Loop199:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop199.exit
	addq $10, %rax
	jmp .main.Loop199
.main.Loop199.exit:

	addq $-10, %rax

.main.Loop200:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop200.exit
	addq $-10, %rax
	jmp .main.Loop200
.main.Loop200.exit:

	addq $-1, 4(%rax)
	addq $4, %rax

.main.Loop209:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop209.exit

.main.Loop201:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop201.exit
	addq $1, 0(%rax)
	jmp .main.Loop201
.main.Loop201.exit:

	addq $-1, 8(%rax)
	addq $6, %rax

.main.Loop204:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop204.exit
	addq $1, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	addq $2, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	movb 1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq -2(%rax), %r8
	movb %r8b, -2(%rax)
	addq $7, %rax
	jmp .main.Loop204
.main.Loop204.exit:

	addq $-10, %rax

.main.Loop206:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop206.exit
	addq $1, 0(%rax)
	addq $2, %rax

.main.Loop205:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop205.exit
	addq $1, 8(%rax)
	addq $10, %rax
	jmp .main.Loop205
.main.Loop205.exit:

	addq $-1, -2(%rax)
	addq $-12, %rax
	jmp .main.Loop206
.main.Loop206.exit:

	addq $-1, 0(%rax)

.main.Loop207:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop207.exit
	addq $48, 2(%rax)
	addq $2, %rax
	movb (%rax), %dil
	pushq %rax
	callq __bf_print
	popq %rax
	addq $-48, 0(%rax)
	addq $-12, %rax
	jmp .main.Loop207
.main.Loop207.exit:

	addq $32, 0(%rax)
	movb (%rax), %dil
	pushq %rax
	callq __bf_print
	popq %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	addq $4, %rax
	jmp .main.Loop209
.main.Loop209.exit:

	addq $6, %rax

.main.Loop221:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop221.exit
	addq $2, %rax

.main.Loop220:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop220.exit
	addq $-1, 0(%rax)
	addq $1, 5(%rax)

.main.Loop219:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop219.exit
	addq $-1, 0(%rax)
	addq $1, 5(%rax)

.main.Loop218:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop218.exit
	addq $-1, 0(%rax)
	addq $1, 5(%rax)

.main.Loop217:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop217.exit
	addq $-1, 0(%rax)
	addq $1, 5(%rax)

.main.Loop216:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop216.exit
	addq $-1, 0(%rax)
	addq $1, 5(%rax)

.main.Loop215:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop215.exit
	addq $-1, 0(%rax)
	addq $1, 5(%rax)

.main.Loop214:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop214.exit
	addq $-1, 0(%rax)
	addq $1, 5(%rax)

.main.Loop213:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop213.exit
	addq $-1, 0(%rax)
	addq $1, 5(%rax)

.main.Loop212:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop212.exit
	addq $-1, 0(%rax)
	addq $1, 5(%rax)

.main.Loop211:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop211.exit
	addq $-1, 0(%rax)
	addq $-9, 5(%rax)
	addq $1, 10(%rax)
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	movb 1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 5(%rax), %r8
	movb %r8b, 5(%rax)
	jmp .main.Loop211
.main.Loop211.exit:

	jmp .main.Loop212
.main.Loop212.exit:

	jmp .main.Loop213
.main.Loop213.exit:

	jmp .main.Loop214
.main.Loop214.exit:

	jmp .main.Loop215
.main.Loop215.exit:

	jmp .main.Loop216
.main.Loop216.exit:

	jmp .main.Loop217
.main.Loop217.exit:

	jmp .main.Loop218
.main.Loop218.exit:

	jmp .main.Loop219
.main.Loop219.exit:

	jmp .main.Loop220
.main.Loop220.exit:

	addq $8, %rax
	jmp .main.Loop221
.main.Loop221.exit:

	addq $-10, %rax

.main.Loop223:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop223.exit
	addq $7, %rax
	movb (%rax), %r11b
	movb -1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq 0(%rax), %r8
	movb %r8b, 0(%rax)
	movb 1, %r8b
	pushq %rax
	movb %r11b, %al
	imulq %r8
	movb %al, %r8b
	popq %rax
	addq -5(%rax), %r8
	movb %r8b, -5(%rax)
	addq $-17, %rax
	jmp .main.Loop223
.main.Loop223.exit:

	addq $9, %rax
	jmp .main.Loop224
.main.Loop224.exit:

	addq $-1, %rax
	jmp .main.Loop225
.main.Loop225.exit:

	addq $2, %rax

.main.Loop226:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop226.exit
	addq $10, %rax
	jmp .main.Loop226
.main.Loop226.exit:

	addq $-10, %rax

.main.Loop228:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop228.exit
	addq $1, 0(%rax)
	addq $1, %rax

.main.Loop227:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop227.exit
	addq $1, 9(%rax)
	addq $10, %rax
	jmp .main.Loop227
.main.Loop227.exit:

	addq $-1, -1(%rax)
	addq $-11, %rax
	jmp .main.Loop228
.main.Loop228.exit:

	addq $-1, 0(%rax)

.main.Loop229:
	pushq %rax
	cmpb $0, (%rax)
	jz .main.Loop229.exit
	addq $48, 1(%rax)
	addq $1, %rax
	movb (%rax), %dil
	pushq %rax
	callq __bf_print
	popq %rax
	addq $-11, %rax
	jmp .main.Loop229
.main.Loop229.exit:

	addq $10, 0(%rax)
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
