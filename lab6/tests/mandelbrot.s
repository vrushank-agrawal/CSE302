	.bss
buffer:
	.zero 30000

	.text
	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	leaq buffer(%rip), %rax
	addb $13, 0(%rax)

.main.Loop0:
	cmpb $0, (%rax)
	jz .main.Loop0.exit
	addb $-1, 0(%rax)
	addb $2, 1(%rax)
	addb $5, 4(%rax)
	addb $2, 5(%rax)
	addb $1, 6(%rax)
	jmp .main.Loop0
.main.Loop0.exit:

	addb $6, 5(%rax)
	addb $-3, 6(%rax)
	addb $15, 16(%rax)
	addq $16, %rax

.main.Loop3:
	cmpb $0, (%rax)
	jz .main.Loop3.exit

.main.Loop1:
	cmpb $0, (%rax)
	jz .main.Loop1.exit
	addq $9, %rax
	jmp .main.Loop1
.main.Loop1.exit:

	addb $1, 0(%rax)

.main.Loop2:
	cmpb $0, (%rax)
	jz .main.Loop2.exit
	addq $-9, %rax
	jmp .main.Loop2
.main.Loop2.exit:

	addb $-1, 9(%rax)
	addq $9, %rax
	jmp .main.Loop3
.main.Loop3.exit:

	addb $1, 0(%rax)

.main.Loop5:
	cmpb $0, (%rax)
	jz .main.Loop5.exit
	addq $8, %rax

.main.Loop4:
	cmpb $0, (%rax)
	jz .main.Loop4.exit
	addb $-1, 0(%rax)
	jmp .main.Loop4
.main.Loop4.exit:

	addq $1, %rax
	jmp .main.Loop5
.main.Loop5.exit:

	addq $-9, %rax

.main.Loop6:
	cmpb $0, (%rax)
	jz .main.Loop6.exit
	addq $-9, %rax
	jmp .main.Loop6
.main.Loop6.exit:

	addq $8, %rax

.main.Loop7:
	cmpb $0, (%rax)
	jz .main.Loop7.exit
	addb $-1, 0(%rax)
	jmp .main.Loop7
.main.Loop7.exit:

	addb $1, 0(%rax)
	addb $5, -7(%rax)
	addq $-7, %rax

.main.Loop9:
	cmpb $0, (%rax)
	jz .main.Loop9.exit
	addb $-1, 0(%rax)

.main.Loop8:
	cmpb $0, (%rax)
	jz .main.Loop8.exit
	addb $-1, 0(%rax)
	addb $1, 9(%rax)
	jmp .main.Loop8
.main.Loop8.exit:

	addq $9, %rax
	jmp .main.Loop9
.main.Loop9.exit:

	addb $1, 7(%rax)
	addb $1, 34(%rax)
	addq $17, %rax

.main.Loop10:
	cmpb $0, (%rax)
	jz .main.Loop10.exit
	addq $-9, %rax
	jmp .main.Loop10
.main.Loop10.exit:

	addq $3, %rax

.main.Loop11:
	cmpb $0, (%rax)
	jz .main.Loop11.exit
	addb $-1, 0(%rax)
	jmp .main.Loop11
.main.Loop11.exit:

	addb $1, 0(%rax)

.main.Loop685:
	cmpb $0, (%rax)
	jz .main.Loop685.exit
	addq $6, %rax

.main.Loop13:
	cmpb $0, (%rax)
	jz .main.Loop13.exit
	addq $7, %rax

.main.Loop12:
	cmpb $0, (%rax)
	jz .main.Loop12.exit
	addb $-1, 0(%rax)
	jmp .main.Loop12
.main.Loop12.exit:

	addq $2, %rax
	jmp .main.Loop13
.main.Loop13.exit:

	addq $-9, %rax

.main.Loop14:
	cmpb $0, (%rax)
	jz .main.Loop14.exit
	addq $-9, %rax
	jmp .main.Loop14
.main.Loop14.exit:

	addq $7, %rax

.main.Loop15:
	cmpb $0, (%rax)
	jz .main.Loop15.exit
	addb $-1, 0(%rax)
	jmp .main.Loop15
.main.Loop15.exit:

	addb $1, 0(%rax)
	addb $4, -6(%rax)
	addq $-6, %rax

.main.Loop17:
	cmpb $0, (%rax)
	jz .main.Loop17.exit
	addb $-1, 0(%rax)

.main.Loop16:
	cmpb $0, (%rax)
	jz .main.Loop16.exit
	addb $-1, 0(%rax)
	addb $1, 9(%rax)
	jmp .main.Loop16
.main.Loop16.exit:

	addq $9, %rax
	jmp .main.Loop17
.main.Loop17.exit:

	addb $1, 6(%rax)
	addb $7, 0(%rax)

.main.Loop19:
	cmpb $0, (%rax)
	jz .main.Loop19.exit
	addb $-1, 0(%rax)

.main.Loop18:
	cmpb $0, (%rax)
	jz .main.Loop18.exit
	addb $-1, 0(%rax)
	addb $1, 9(%rax)
	jmp .main.Loop18
.main.Loop18.exit:

	addq $9, %rax
	jmp .main.Loop19
.main.Loop19.exit:

	addb $1, 6(%rax)
	addq $-10, %rax

.main.Loop20:
	cmpb $0, (%rax)
	jz .main.Loop20.exit
	addq $-9, %rax
	jmp .main.Loop20
.main.Loop20.exit:

	addq $3, %rax

.main.Loop618:
	cmpb $0, (%rax)
	jz .main.Loop618.exit

.main.Loop21:
	cmpb $0, (%rax)
	jz .main.Loop21.exit
	addb $-1, 0(%rax)
	jmp .main.Loop21
.main.Loop21.exit:

	addq $6, %rax

.main.Loop24:
	cmpb $0, (%rax)
	jz .main.Loop24.exit
	addq $7, %rax

.main.Loop22:
	cmpb $0, (%rax)
	jz .main.Loop22.exit
	addb $-1, 0(%rax)
	addb $1, -6(%rax)
	jmp .main.Loop22
.main.Loop22.exit:

	addq $-6, %rax

.main.Loop23:
	cmpb $0, (%rax)
	jz .main.Loop23.exit
	addb $-1, 0(%rax)
	addb $1, 6(%rax)
	addb $1, 4(%rax)
	addb $1, 1(%rax)
	jmp .main.Loop23
.main.Loop23.exit:

	addq $8, %rax
	jmp .main.Loop24
.main.Loop24.exit:

	addq $-9, %rax

.main.Loop25:
	cmpb $0, (%rax)
	jz .main.Loop25.exit
	addq $-9, %rax
	jmp .main.Loop25
.main.Loop25.exit:

	addq $9, %rax

.main.Loop28:
	cmpb $0, (%rax)
	jz .main.Loop28.exit
	addq $8, %rax

.main.Loop26:
	cmpb $0, (%rax)
	jz .main.Loop26.exit
	addb $-1, 0(%rax)
	addb $1, -7(%rax)
	jmp .main.Loop26
.main.Loop26.exit:

	addq $-7, %rax

.main.Loop27:
	cmpb $0, (%rax)
	jz .main.Loop27.exit
	addb $-1, 0(%rax)
	addb $1, 7(%rax)
	addb $1, 5(%rax)
	addb $1, 2(%rax)
	jmp .main.Loop27
.main.Loop27.exit:

	addq $8, %rax
	jmp .main.Loop28
.main.Loop28.exit:

	addq $-9, %rax

.main.Loop29:
	cmpb $0, (%rax)
	jz .main.Loop29.exit
	addq $-9, %rax
	jmp .main.Loop29
.main.Loop29.exit:

	addq $7, %rax

.main.Loop30:
	cmpb $0, (%rax)
	jz .main.Loop30.exit
	addb $-1, 0(%rax)
	addb $1, -7(%rax)
	jmp .main.Loop30
.main.Loop30.exit:

	addq $-7, %rax

.main.Loop31:
	cmpb $0, (%rax)
	jz .main.Loop31.exit
	addb $-1, 0(%rax)
	addb $1, 7(%rax)
	addb $1, 5(%rax)
	jmp .main.Loop31
.main.Loop31.exit:

	addb $15, 9(%rax)
	addq $9, %rax

.main.Loop43:
	cmpb $0, (%rax)
	jz .main.Loop43.exit

.main.Loop32:
	cmpb $0, (%rax)
	jz .main.Loop32.exit
	addq $9, %rax
	jmp .main.Loop32
.main.Loop32.exit:

	addb $1, 0(%rax)
	addq $1, %rax

.main.Loop33:
	cmpb $0, (%rax)
	jz .main.Loop33.exit
	addb $-1, 0(%rax)
	jmp .main.Loop33
.main.Loop33.exit:

	addq $1, %rax

.main.Loop34:
	cmpb $0, (%rax)
	jz .main.Loop34.exit
	addb $-1, 0(%rax)
	jmp .main.Loop34
.main.Loop34.exit:

	addq $1, %rax

.main.Loop35:
	cmpb $0, (%rax)
	jz .main.Loop35.exit
	addb $-1, 0(%rax)
	jmp .main.Loop35
.main.Loop35.exit:

	addq $1, %rax

.main.Loop36:
	cmpb $0, (%rax)
	jz .main.Loop36.exit
	addb $-1, 0(%rax)
	jmp .main.Loop36
.main.Loop36.exit:

	addq $1, %rax

.main.Loop37:
	cmpb $0, (%rax)
	jz .main.Loop37.exit
	addb $-1, 0(%rax)
	jmp .main.Loop37
.main.Loop37.exit:

	addq $1, %rax

.main.Loop38:
	cmpb $0, (%rax)
	jz .main.Loop38.exit
	addb $-1, 0(%rax)
	jmp .main.Loop38
.main.Loop38.exit:

	addq $1, %rax

.main.Loop39:
	cmpb $0, (%rax)
	jz .main.Loop39.exit
	addb $-1, 0(%rax)
	jmp .main.Loop39
.main.Loop39.exit:

	addq $1, %rax

.main.Loop40:
	cmpb $0, (%rax)
	jz .main.Loop40.exit
	addb $-1, 0(%rax)
	jmp .main.Loop40
.main.Loop40.exit:

	addq $1, %rax

.main.Loop41:
	cmpb $0, (%rax)
	jz .main.Loop41.exit
	addb $-1, 0(%rax)
	jmp .main.Loop41
.main.Loop41.exit:

	addq $-9, %rax

.main.Loop42:
	cmpb $0, (%rax)
	jz .main.Loop42.exit
	addq $-9, %rax
	jmp .main.Loop42
.main.Loop42.exit:

	addb $-1, 9(%rax)
	addq $9, %rax
	jmp .main.Loop43
.main.Loop43.exit:

	addb $1, 0(%rax)

.main.Loop44:
	cmpb $0, (%rax)
	jz .main.Loop44.exit
	addb $1, 1(%rax)
	addq $9, %rax
	jmp .main.Loop44
.main.Loop44.exit:

	addq $-9, %rax

.main.Loop45:
	cmpb $0, (%rax)
	jz .main.Loop45.exit
	addq $-9, %rax
	jmp .main.Loop45
.main.Loop45.exit:

	addq $9, %rax

.main.Loop56:
	cmpb $0, (%rax)
	jz .main.Loop56.exit
	addb $-1, 1(%rax)
	addq $5, %rax

.main.Loop46:
	cmpb $0, (%rax)
	jz .main.Loop46.exit
	addb $-1, 0(%rax)
	addb $1, -4(%rax)
	jmp .main.Loop46
.main.Loop46.exit:

	addq $-4, %rax

.main.Loop51:
	cmpb $0, (%rax)
	jz .main.Loop51.exit
	addb $-1, 0(%rax)
	addb $1, 4(%rax)
	addq $-1, %rax

.main.Loop49:
	cmpb $0, (%rax)
	jz .main.Loop49.exit
	addb $-1, 0(%rax)
	addq $2, %rax

.main.Loop47:
	cmpb $0, (%rax)
	jz .main.Loop47.exit
	addb $-1, 0(%rax)
	addb $1, -2(%rax)
	jmp .main.Loop47
.main.Loop47.exit:

	addq $-2, %rax

.main.Loop48:
	cmpb $0, (%rax)
	jz .main.Loop48.exit
	addb $-1, 0(%rax)
	addb $1, 2(%rax)
	addb $1, 4(%rax)
	jmp .main.Loop48
.main.Loop48.exit:

	addb $1, 0(%rax)
	addq $9, %rax
	jmp .main.Loop49
.main.Loop49.exit:

	addq $-8, %rax

.main.Loop50:
	cmpb $0, (%rax)
	jz .main.Loop50.exit
	addq $-9, %rax
	jmp .main.Loop50
.main.Loop50.exit:

	jmp .main.Loop51
.main.Loop51.exit:

	addq $9, %rax

.main.Loop52:
	cmpb $0, (%rax)
	jz .main.Loop52.exit
	addq $9, %rax
	jmp .main.Loop52
.main.Loop52.exit:

	addq $-9, %rax

.main.Loop54:
	cmpb $0, (%rax)
	jz .main.Loop54.exit
	addq $1, %rax

.main.Loop53:
	cmpb $0, (%rax)
	jz .main.Loop53.exit
	addb $-1, 0(%rax)
	addb $1, 9(%rax)
	jmp .main.Loop53
.main.Loop53.exit:

	addq $-10, %rax
	jmp .main.Loop54
.main.Loop54.exit:

	addq $1, %rax

.main.Loop55:
	cmpb $0, (%rax)
	jz .main.Loop55.exit
	addb $-1, 0(%rax)
	addb $1, 9(%rax)
	jmp .main.Loop55
.main.Loop55.exit:

	addb $1, -1(%rax)
	addq $7, %rax
	jmp .main.Loop56
.main.Loop56.exit:

	addq $-9, %rax

.main.Loop62:
	cmpb $0, (%rax)
	jz .main.Loop62.exit
	addq $1, %rax

.main.Loop57:
	cmpb $0, (%rax)
	jz .main.Loop57.exit
	addb $-1, 0(%rax)
	jmp .main.Loop57
.main.Loop57.exit:

	addb $-1, -1(%rax)
	addq $3, %rax

.main.Loop60:
	cmpb $0, (%rax)
	jz .main.Loop60.exit
	addb $-1, 0(%rax)
	addb $1, -4(%rax)
	addq $-3, %rax

.main.Loop58:
	cmpb $0, (%rax)
	jz .main.Loop58.exit
	addb $-1, -1(%rax)
	addb $-1, 0(%rax)
	addb $1, -6(%rax)
	jmp .main.Loop58
.main.Loop58.exit:

	addq $-1, %rax

.main.Loop59:
	cmpb $0, (%rax)
	jz .main.Loop59.exit
	addb $-1, 0(%rax)
	addb $1, 1(%rax)
	jmp .main.Loop59
.main.Loop59.exit:

	addq $4, %rax
	jmp .main.Loop60
.main.Loop60.exit:

	addq $-3, %rax

.main.Loop61:
	cmpb $0, (%rax)
	jz .main.Loop61.exit
	addb $-1, 0(%rax)
	addb $1, 3(%rax)
	jmp .main.Loop61
.main.Loop61.exit:

	addb $1, -1(%rax)
	addq $-10, %rax
	jmp .main.Loop62
.main.Loop62.exit:

	addq $9, %rax

.main.Loop63:
	cmpb $0, (%rax)
	jz .main.Loop63.exit
	addb $1, 1(%rax)
	addq $9, %rax
	jmp .main.Loop63
.main.Loop63.exit:

	addq $-9, %rax

.main.Loop64:
	cmpb $0, (%rax)
	jz .main.Loop64.exit
	addq $-9, %rax
	jmp .main.Loop64
.main.Loop64.exit:

	addq $9, %rax

.main.Loop75:
	cmpb $0, (%rax)
	jz .main.Loop75.exit
	addb $-1, 1(%rax)
	addq $6, %rax

.main.Loop65:
	cmpb $0, (%rax)
	jz .main.Loop65.exit
	addb $-1, 0(%rax)
	addb $1, -5(%rax)
	jmp .main.Loop65
.main.Loop65.exit:

	addq $-5, %rax

.main.Loop70:
	cmpb $0, (%rax)
	jz .main.Loop70.exit
	addb $-1, 0(%rax)
	addb $1, 5(%rax)
	addq $-1, %rax

.main.Loop68:
	cmpb $0, (%rax)
	jz .main.Loop68.exit
	addb $-1, 0(%rax)
	addq $3, %rax

.main.Loop66:
	cmpb $0, (%rax)
	jz .main.Loop66.exit
	addb $-1, 0(%rax)
	addb $1, -3(%rax)
	jmp .main.Loop66
.main.Loop66.exit:

	addq $-3, %rax

.main.Loop67:
	cmpb $0, (%rax)
	jz .main.Loop67.exit
	addb $-1, 0(%rax)
	addb $1, 3(%rax)
	addb $1, 4(%rax)
	jmp .main.Loop67
.main.Loop67.exit:

	addb $1, 0(%rax)
	addq $9, %rax
	jmp .main.Loop68
.main.Loop68.exit:

	addq $-8, %rax

.main.Loop69:
	cmpb $0, (%rax)
	jz .main.Loop69.exit
	addq $-9, %rax
	jmp .main.Loop69
.main.Loop69.exit:

	jmp .main.Loop70
.main.Loop70.exit:

	addq $9, %rax

.main.Loop71:
	cmpb $0, (%rax)
	jz .main.Loop71.exit
	addq $9, %rax
	jmp .main.Loop71
.main.Loop71.exit:

	addq $-9, %rax

.main.Loop73:
	cmpb $0, (%rax)
	jz .main.Loop73.exit
	addq $2, %rax

.main.Loop72:
	cmpb $0, (%rax)
	jz .main.Loop72.exit
	addb $-1, 0(%rax)
	addb $1, 9(%rax)
	jmp .main.Loop72
.main.Loop72.exit:

	addq $-11, %rax
	jmp .main.Loop73
.main.Loop73.exit:

	addq $2, %rax

.main.Loop74:
	cmpb $0, (%rax)
	jz .main.Loop74.exit
	addb $-1, 0(%rax)
	addb $1, 9(%rax)
	jmp .main.Loop74
.main.Loop74.exit:

	addb $1, -2(%rax)
	addq $6, %rax
	jmp .main.Loop75
.main.Loop75.exit:

	addq $-9, %rax

.main.Loop81:
	cmpb $0, (%rax)
	jz .main.Loop81.exit
	addq $1, %rax

.main.Loop76:
	cmpb $0, (%rax)
	jz .main.Loop76.exit
	addb $-1, 0(%rax)
	jmp .main.Loop76
.main.Loop76.exit:

	addb $-1, -1(%rax)
	addq $3, %rax

.main.Loop79:
	cmpb $0, (%rax)
	jz .main.Loop79.exit
	addb $-1, 0(%rax)
	addb $1, -4(%rax)
	addq $-3, %rax

.main.Loop77:
	cmpb $0, (%rax)
	jz .main.Loop77.exit
	addb $-1, -1(%rax)
	addb $-1, 0(%rax)
	addb $1, -6(%rax)
	jmp .main.Loop77
.main.Loop77.exit:

	addq $-1, %rax

.main.Loop78:
	cmpb $0, (%rax)
	jz .main.Loop78.exit
	addb $-1, 0(%rax)
	addb $1, 1(%rax)
	jmp .main.Loop78
.main.Loop78.exit:

	addq $4, %rax
	jmp .main.Loop79
.main.Loop79.exit:

	addq $-3, %rax

.main.Loop80:
	cmpb $0, (%rax)
	jz .main.Loop80.exit
	addb $-1, 0(%rax)
	addb $1, 3(%rax)
	jmp .main.Loop80
.main.Loop80.exit:

	addb $1, -1(%rax)
	addq $-10, %rax
	jmp .main.Loop81
.main.Loop81.exit:

	addq $9, %rax

.main.Loop83:
	cmpb $0, (%rax)
	jz .main.Loop83.exit
	addq $4, %rax

.main.Loop82:
	cmpb $0, (%rax)
	jz .main.Loop82.exit
	addb $-1, 0(%rax)
	addb $1, -36(%rax)
	jmp .main.Loop82
.main.Loop82.exit:

	addq $5, %rax
	jmp .main.Loop83
.main.Loop83.exit:

	addq $-9, %rax

.main.Loop84:
	cmpb $0, (%rax)
	jz .main.Loop84.exit
	addq $-9, %rax
	jmp .main.Loop84
.main.Loop84.exit:

	addb $15, 9(%rax)
	addq $9, %rax

.main.Loop87:
	cmpb $0, (%rax)
	jz .main.Loop87.exit

.main.Loop85:
	cmpb $0, (%rax)
	jz .main.Loop85.exit
	addq $9, %rax
	jmp .main.Loop85
.main.Loop85.exit:

	addb $-1, -9(%rax)
	addq $-18, %rax

.main.Loop86:
	cmpb $0, (%rax)
	jz .main.Loop86.exit
	addq $-9, %rax
	jmp .main.Loop86
.main.Loop86.exit:

	addb $-1, 9(%rax)
	addq $9, %rax
	jmp .main.Loop87
.main.Loop87.exit:

	addb $1, 0(%rax)
	addb $1, 21(%rax)
	addq $18, %rax

.main.Loop88:
	cmpb $0, (%rax)
	jz .main.Loop88.exit
	addq $-9, %rax
	jmp .main.Loop88
.main.Loop88.exit:

	addq $9, %rax

.main.Loop106:
	cmpb $0, (%rax)
	jz .main.Loop106.exit
	addq $3, %rax

.main.Loop89:
	cmpb $0, (%rax)
	jz .main.Loop89.exit
	addb $-1, 0(%rax)
	addb $-1, -3(%rax)
	jmp .main.Loop89
.main.Loop89.exit:

	addb $1, 0(%rax)
	addq $-3, %rax

.main.Loop95:
	cmpb $0, (%rax)
	jz .main.Loop95.exit
	addb $-1, 0(%rax)
	addb $-1, 3(%rax)
	addq $4, %rax

.main.Loop90:
	cmpb $0, (%rax)
	jz .main.Loop90.exit
	addb $-1, 0(%rax)
	addb $1, -4(%rax)
	jmp .main.Loop90
.main.Loop90.exit:

	addq $-4, %rax

.main.Loop94:
	cmpb $0, (%rax)
	jz .main.Loop94.exit
	addb $-1, 0(%rax)
	addb $1, 4(%rax)
	addq $-9, %rax

.main.Loop91:
	cmpb $0, (%rax)
	jz .main.Loop91.exit
	addq $-9, %rax
	jmp .main.Loop91
.main.Loop91.exit:

	addq $4, %rax

.main.Loop92:
	cmpb $0, (%rax)
	jz .main.Loop92.exit
	addb $-1, 0(%rax)
	jmp .main.Loop92
.main.Loop92.exit:

	addb $1, 0(%rax)
	addq $5, %rax

.main.Loop93:
	cmpb $0, (%rax)
	jz .main.Loop93.exit
	addq $9, %rax
	jmp .main.Loop93
.main.Loop93.exit:

	addb $1, 1(%rax)
	jmp .main.Loop94
.main.Loop94.exit:

	jmp .main.Loop95
.main.Loop95.exit:

	addb $1, 0(%rax)
	addq $4, %rax

.main.Loop96:
	cmpb $0, (%rax)
	jz .main.Loop96.exit
	addb $-1, 0(%rax)
	addb $-1, -4(%rax)
	jmp .main.Loop96
.main.Loop96.exit:

	addb $1, 0(%rax)
	addq $-4, %rax

.main.Loop103:
	cmpb $0, (%rax)
	jz .main.Loop103.exit
	addb $-1, 0(%rax)
	addb $-1, 4(%rax)
	addq $3, %rax

.main.Loop97:
	cmpb $0, (%rax)
	jz .main.Loop97.exit
	addb $-1, 0(%rax)
	addb $1, -3(%rax)
	jmp .main.Loop97
.main.Loop97.exit:

	addq $-3, %rax

.main.Loop102:
	cmpb $0, (%rax)
	jz .main.Loop102.exit
	addb $-1, 0(%rax)
	addb $1, 3(%rax)
	addq $-9, %rax

.main.Loop98:
	cmpb $0, (%rax)
	jz .main.Loop98.exit
	addq $-9, %rax
	jmp .main.Loop98
.main.Loop98.exit:

	addq $3, %rax

.main.Loop99:
	cmpb $0, (%rax)
	jz .main.Loop99.exit
	addb $-1, 0(%rax)
	jmp .main.Loop99
.main.Loop99.exit:

	addb $1, 0(%rax)
	addq $6, %rax

.main.Loop100:
	cmpb $0, (%rax)
	jz .main.Loop100.exit
	addq $9, %rax
	jmp .main.Loop100
.main.Loop100.exit:

	addq $1, %rax

.main.Loop101:
	cmpb $0, (%rax)
	jz .main.Loop101.exit
	addb $-1, 0(%rax)
	jmp .main.Loop101
.main.Loop101.exit:

	addb $1, 0(%rax)
	addq $-1, %rax
	jmp .main.Loop102
.main.Loop102.exit:

	jmp .main.Loop103
.main.Loop103.exit:

	addb $1, 0(%rax)
	addq $1, %rax

.main.Loop105:
	cmpb $0, (%rax)
	jz .main.Loop105.exit
	addb $-1, 0(%rax)
	addq $-1, %rax

.main.Loop104:
	cmpb $0, (%rax)
	jz .main.Loop104.exit
	addq $9, %rax
	jmp .main.Loop104
.main.Loop104.exit:

	addq $-8, %rax
	jmp .main.Loop105
.main.Loop105.exit:

	addq $8, %rax
	jmp .main.Loop106
.main.Loop106.exit:

	addq $-9, %rax

.main.Loop107:
	cmpb $0, (%rax)
	jz .main.Loop107.exit
	addq $-9, %rax
	jmp .main.Loop107
.main.Loop107.exit:

	addq $-7, %rax

.main.Loop108:
	cmpb $0, (%rax)
	jz .main.Loop108.exit
	addb $-1, 0(%rax)
	addb $1, 1(%rax)
	addb $-1, 4(%rax)
	jmp .main.Loop108
.main.Loop108.exit:

	addb $26, 9(%rax)
	addq $11, %rax

.main.Loop109:
	cmpb $0, (%rax)
	jz .main.Loop109.exit
	addb $-1, 0(%rax)
	addb $1, -4(%rax)
	jmp .main.Loop109
.main.Loop109.exit:

	addq $-4, %rax

.main.Loop111:
	cmpb $0, (%rax)
	jz .main.Loop111.exit
	addb $-1, 0(%rax)
	addb $1, 4(%rax)
	addq $2, %rax

.main.Loop110:
	cmpb $0, (%rax)
	jz .main.Loop110.exit
	addb $-1, 0(%rax)
	jmp .main.Loop110
.main.Loop110.exit:

	addq $-2, %rax
	jmp .main.Loop111
.main.Loop111.exit:

	addq $2, %rax

.main.Loop534:
	cmpb $0, (%rax)
	jz .main.Loop534.exit
	addb $1, -7(%rax)
	addq $-8, %rax

.main.Loop113:
	cmpb $0, (%rax)
	jz .main.Loop113.exit
	addb $-1, 0(%rax)
	addb $1, -1(%rax)
	addb $1, 3(%rax)
	addq $1, %rax

.main.Loop112:
	cmpb $0, (%rax)
	jz .main.Loop112.exit
	addb $-1, 0(%rax)
	jmp .main.Loop112
.main.Loop112.exit:

	jmp .main.Loop113
.main.Loop113.exit:

	addq $1, %rax

.main.Loop115:
	cmpb $0, (%rax)
	jz .main.Loop115.exit
	addb $-1, 0(%rax)
	addq $-2, %rax

.main.Loop114:
	cmpb $0, (%rax)
	jz .main.Loop114.exit
	addb $-1, 0(%rax)
	addb $1, 1(%rax)
	addb $-1, 4(%rax)
	jmp .main.Loop114
.main.Loop114.exit:

	addq $3, %rax
	jmp .main.Loop115
.main.Loop115.exit:

	addq $13, %rax

.main.Loop119:
	cmpb $0, (%rax)
	jz .main.Loop119.exit
	addq $2, %rax

.main.Loop116:
	cmpb $0, (%rax)
	jz .main.Loop116.exit
	addb $-1, 0(%rax)
	jmp .main.Loop116
.main.Loop116.exit:

	addq $1, %rax

.main.Loop117:
	cmpb $0, (%rax)
	jz .main.Loop117.exit
	addb $-1, 0(%rax)
	jmp .main.Loop117
.main.Loop117.exit:

	addq $1, %rax

.main.Loop118:
	cmpb $0, (%rax)
	jz .main.Loop118.exit
	addb $-1, 0(%rax)
	jmp .main.Loop118
.main.Loop118.exit:

	addq $5, %rax
	jmp .main.Loop119
.main.Loop119.exit:

	addq $-9, %rax

.main.Loop120:
	cmpb $0, (%rax)
	jz .main.Loop120.exit
	addq $-9, %rax
	jmp .main.Loop120
.main.Loop120.exit:

	addq $3, %rax

.main.Loop121:
	cmpb $0, (%rax)
	jz .main.Loop121.exit
	addb $-1, 0(%rax)
	jmp .main.Loop121
.main.Loop121.exit:

	addq $6, %rax

.main.Loop124:
	cmpb $0, (%rax)
	jz .main.Loop124.exit
	addq $5, %rax

.main.Loop122:
	cmpb $0, (%rax)
	jz .main.Loop122.exit
	addb $-1, 0(%rax)
	addb $1, -4(%rax)
	jmp .main.Loop122
.main.Loop122.exit:

	addq $-4, %rax

.main.Loop123:
	cmpb $0, (%rax)
	jz .main.Loop123.exit
	addb $-1, 0(%rax)
	addb $1, 4(%rax)
	addb $1, 1(%rax)
	jmp .main.Loop123
.main.Loop123.exit:

	addq $8, %rax
	jmp .main.Loop124
.main.Loop124.exit:

	addq $-9, %rax

.main.Loop125:
	cmpb $0, (%rax)
	jz .main.Loop125.exit
	addq $-9, %rax
	jmp .main.Loop125
.main.Loop125.exit:

	addq $9, %rax

.main.Loop127:
	cmpb $0, (%rax)
	jz .main.Loop127.exit
	addq $2, %rax

.main.Loop126:
	cmpb $0, (%rax)
	jz .main.Loop126.exit
	addb $-1, 0(%rax)
	addb $1, -9(%rax)
	jmp .main.Loop126
.main.Loop126.exit:

	addq $7, %rax
	jmp .main.Loop127
.main.Loop127.exit:

	addq $-9, %rax

.main.Loop128:
	cmpb $0, (%rax)
	jz .main.Loop128.exit
	addq $-9, %rax
	jmp .main.Loop128
.main.Loop128.exit:

	addb $15, 9(%rax)
	addq $9, %rax

.main.Loop140:
	cmpb $0, (%rax)
	jz .main.Loop140.exit

.main.Loop129:
	cmpb $0, (%rax)
	jz .main.Loop129.exit
	addq $9, %rax
	jmp .main.Loop129
.main.Loop129.exit:

	addb $1, 0(%rax)
	addq $1, %rax

.main.Loop130:
	cmpb $0, (%rax)
	jz .main.Loop130.exit
	addb $-1, 0(%rax)
	jmp .main.Loop130
.main.Loop130.exit:

	addq $1, %rax

.main.Loop131:
	cmpb $0, (%rax)
	jz .main.Loop131.exit
	addb $-1, 0(%rax)
	jmp .main.Loop131
.main.Loop131.exit:

	addq $1, %rax

.main.Loop132:
	cmpb $0, (%rax)
	jz .main.Loop132.exit
	addb $-1, 0(%rax)
	jmp .main.Loop132
.main.Loop132.exit:

	addq $1, %rax

.main.Loop133:
	cmpb $0, (%rax)
	jz .main.Loop133.exit
	addb $-1, 0(%rax)
	jmp .main.Loop133
.main.Loop133.exit:

	addq $1, %rax

.main.Loop134:
	cmpb $0, (%rax)
	jz .main.Loop134.exit
	addb $-1, 0(%rax)
	jmp .main.Loop134
.main.Loop134.exit:

	addq $1, %rax

.main.Loop135:
	cmpb $0, (%rax)
	jz .main.Loop135.exit
	addb $-1, 0(%rax)
	jmp .main.Loop135
.main.Loop135.exit:

	addq $1, %rax

.main.Loop136:
	cmpb $0, (%rax)
	jz .main.Loop136.exit
	addb $-1, 0(%rax)
	jmp .main.Loop136
.main.Loop136.exit:

	addq $1, %rax

.main.Loop137:
	cmpb $0, (%rax)
	jz .main.Loop137.exit
	addb $-1, 0(%rax)
	jmp .main.Loop137
.main.Loop137.exit:

	addq $1, %rax

.main.Loop138:
	cmpb $0, (%rax)
	jz .main.Loop138.exit
	addb $-1, 0(%rax)
	jmp .main.Loop138
.main.Loop138.exit:

	addq $-9, %rax

.main.Loop139:
	cmpb $0, (%rax)
	jz .main.Loop139.exit
	addq $-9, %rax
	jmp .main.Loop139
.main.Loop139.exit:

	addb $-1, 9(%rax)
	addq $9, %rax
	jmp .main.Loop140
.main.Loop140.exit:

	addb $1, 0(%rax)

.main.Loop141:
	cmpb $0, (%rax)
	jz .main.Loop141.exit
	addb $1, 1(%rax)
	addq $9, %rax
	jmp .main.Loop141
.main.Loop141.exit:

	addq $-9, %rax

.main.Loop142:
	cmpb $0, (%rax)
	jz .main.Loop142.exit
	addq $-9, %rax
	jmp .main.Loop142
.main.Loop142.exit:

	addq $9, %rax

.main.Loop153:
	cmpb $0, (%rax)
	jz .main.Loop153.exit
	addb $-1, 1(%rax)
	addq $6, %rax

.main.Loop143:
	cmpb $0, (%rax)
	jz .main.Loop143.exit
	addb $-1, 0(%rax)
	addb $1, -5(%rax)
	jmp .main.Loop143
.main.Loop143.exit:

	addq $-5, %rax

.main.Loop148:
	cmpb $0, (%rax)
	jz .main.Loop148.exit
	addb $-1, 0(%rax)
	addb $1, 5(%rax)
	addq $-1, %rax

.main.Loop146:
	cmpb $0, (%rax)
	jz .main.Loop146.exit
	addb $-1, 0(%rax)
	addq $2, %rax

.main.Loop144:
	cmpb $0, (%rax)
	jz .main.Loop144.exit
	addb $-1, 0(%rax)
	addb $1, -2(%rax)
	jmp .main.Loop144
.main.Loop144.exit:

	addq $-2, %rax

.main.Loop145:
	cmpb $0, (%rax)
	jz .main.Loop145.exit
	addb $-1, 0(%rax)
	addb $1, 2(%rax)
	addb $1, 3(%rax)
	jmp .main.Loop145
.main.Loop145.exit:

	addb $1, 0(%rax)
	addq $9, %rax
	jmp .main.Loop146
.main.Loop146.exit:

	addq $-8, %rax

.main.Loop147:
	cmpb $0, (%rax)
	jz .main.Loop147.exit
	addq $-9, %rax
	jmp .main.Loop147
.main.Loop147.exit:

	jmp .main.Loop148
.main.Loop148.exit:

	addq $9, %rax

.main.Loop149:
	cmpb $0, (%rax)
	jz .main.Loop149.exit
	addq $9, %rax
	jmp .main.Loop149
.main.Loop149.exit:

	addq $-9, %rax

.main.Loop151:
	cmpb $0, (%rax)
	jz .main.Loop151.exit
	addq $1, %rax

.main.Loop150:
	cmpb $0, (%rax)
	jz .main.Loop150.exit
	addb $-1, 0(%rax)
	addb $1, 9(%rax)
	jmp .main.Loop150
.main.Loop150.exit:

	addq $-10, %rax
	jmp .main.Loop151
.main.Loop151.exit:

	addq $1, %rax

.main.Loop152:
	cmpb $0, (%rax)
	jz .main.Loop152.exit
	addb $-1, 0(%rax)
	addb $1, 9(%rax)
	jmp .main.Loop152
.main.Loop152.exit:

	addb $1, -1(%rax)
	addq $7, %rax
	jmp .main.Loop153
.main.Loop153.exit:

	addq $-9, %rax

.main.Loop159:
	cmpb $0, (%rax)
	jz .main.Loop159.exit
	addq $1, %rax

.main.Loop154:
	cmpb $0, (%rax)
	jz .main.Loop154.exit
	addb $-1, 0(%rax)
	jmp .main.Loop154
.main.Loop154.exit:

	addb $-1, -1(%rax)
	addq $2, %rax

.main.Loop157:
	cmpb $0, (%rax)
	jz .main.Loop157.exit
	addb $-1, 0(%rax)
	addb $1, -3(%rax)
	addq $-2, %rax

.main.Loop155:
	cmpb $0, (%rax)
	jz .main.Loop155.exit
	addb $-1, -1(%rax)
	addb $-1, 0(%rax)
	addb $1, -7(%rax)
	jmp .main.Loop155
.main.Loop155.exit:

	addq $-1, %rax

.main.Loop156:
	cmpb $0, (%rax)
	jz .main.Loop156.exit
	addb $-1, 0(%rax)
	addb $1, 1(%rax)
	jmp .main.Loop156
.main.Loop156.exit:

	addq $3, %rax
	jmp .main.Loop157
.main.Loop157.exit:

	addq $-2, %rax

.main.Loop158:
	cmpb $0, (%rax)
	jz .main.Loop158.exit
	addb $-1, 0(%rax)
	addb $1, 2(%rax)
	jmp .main.Loop158
.main.Loop158.exit:

	addb $1, -1(%rax)
	addq $-10, %rax
	jmp .main.Loop159
.main.Loop159.exit:

	addq $9, %rax

.main.Loop162:
	cmpb $0, (%rax)
	jz .main.Loop162.exit
	addq $6, %rax

.main.Loop160:
	cmpb $0, (%rax)
	jz .main.Loop160.exit
	addb $-1, 0(%rax)
	addb $1, -5(%rax)
	jmp .main.Loop160
.main.Loop160.exit:

	addq $-5, %rax

.main.Loop161:
	cmpb $0, (%rax)
	jz .main.Loop161.exit
	addb $-1, 0(%rax)
	addb $1, 5(%rax)
	addb $1, 1(%rax)
	jmp .main.Loop161
.main.Loop161.exit:

	addq $8, %rax
	jmp .main.Loop162
.main.Loop162.exit:

	addq $-9, %rax

.main.Loop163:
	cmpb $0, (%rax)
	jz .main.Loop163.exit
	addq $-9, %rax
	jmp .main.Loop163
.main.Loop163.exit:

	addq $9, %rax

.main.Loop164:
	cmpb $0, (%rax)
	jz .main.Loop164.exit
	addb $1, 1(%rax)
	addq $9, %rax
	jmp .main.Loop164
.main.Loop164.exit:

	addq $-9, %rax

.main.Loop165:
	cmpb $0, (%rax)
	jz .main.Loop165.exit
	addq $-9, %rax
	jmp .main.Loop165
.main.Loop165.exit:

	addq $9, %rax

.main.Loop176:
	cmpb $0, (%rax)
	jz .main.Loop176.exit
	addb $-1, 1(%rax)
	addq $6, %rax

.main.Loop166:
	cmpb $0, (%rax)
	jz .main.Loop166.exit
	addb $-1, 0(%rax)
	addb $1, -5(%rax)
	jmp .main.Loop166
.main.Loop166.exit:

	addq $-5, %rax

.main.Loop171:
	cmpb $0, (%rax)
	jz .main.Loop171.exit
	addb $-1, 0(%rax)
	addb $1, 5(%rax)
	addq $-1, %rax

.main.Loop169:
	cmpb $0, (%rax)
	jz .main.Loop169.exit
	addb $-1, 0(%rax)
	addq $2, %rax

.main.Loop167:
	cmpb $0, (%rax)
	jz .main.Loop167.exit
	addb $-1, 0(%rax)
	addb $1, -2(%rax)
	jmp .main.Loop167
.main.Loop167.exit:

	addq $-2, %rax

.main.Loop168:
	cmpb $0, (%rax)
	jz .main.Loop168.exit
	addb $-1, 0(%rax)
	addb $1, 2(%rax)
	addb $1, 4(%rax)
	jmp .main.Loop168
.main.Loop168.exit:

	addb $1, 0(%rax)
	addq $9, %rax
	jmp .main.Loop169
.main.Loop169.exit:

	addq $-8, %rax

.main.Loop170:
	cmpb $0, (%rax)
	jz .main.Loop170.exit
	addq $-9, %rax
	jmp .main.Loop170
.main.Loop170.exit:

	jmp .main.Loop171
.main.Loop171.exit:

	addq $9, %rax

.main.Loop172:
	cmpb $0, (%rax)
	jz .main.Loop172.exit
	addq $9, %rax
	jmp .main.Loop172
.main.Loop172.exit:

	addq $-9, %rax

.main.Loop174:
	cmpb $0, (%rax)
	jz .main.Loop174.exit
	addq $1, %rax

.main.Loop173:
	cmpb $0, (%rax)
	jz .main.Loop173.exit
	addb $-1, 0(%rax)
	addb $1, 9(%rax)
	jmp .main.Loop173
.main.Loop173.exit:

	addq $-10, %rax
	jmp .main.Loop174
.main.Loop174.exit:

	addq $1, %rax

.main.Loop175:
	cmpb $0, (%rax)
	jz .main.Loop175.exit
	addb $-1, 0(%rax)
	addb $1, 9(%rax)
	jmp .main.Loop175
.main.Loop175.exit:

	addb $1, -1(%rax)
	addq $7, %rax
	jmp .main.Loop176
.main.Loop176.exit:

	addq $-9, %rax

.main.Loop182:
	cmpb $0, (%rax)
	jz .main.Loop182.exit
	addq $1, %rax

.main.Loop177:
	cmpb $0, (%rax)
	jz .main.Loop177.exit
	addb $-1, 0(%rax)
	jmp .main.Loop177
.main.Loop177.exit:

	addb $-1, -1(%rax)
	addq $3, %rax

.main.Loop180:
	cmpb $0, (%rax)
	jz .main.Loop180.exit
	addb $-1, 0(%rax)
	addb $1, -4(%rax)
	addq $-3, %rax

.main.Loop178:
	cmpb $0, (%rax)
	jz .main.Loop178.exit
	addb $-1, -1(%rax)
	addb $-1, 0(%rax)
	addb $1, -6(%rax)
	jmp .main.Loop178
.main.Loop178.exit:

	addq $-1, %rax

.main.Loop179:
	cmpb $0, (%rax)
	jz .main.Loop179.exit
	addb $-1, 0(%rax)
	addb $1, 1(%rax)
	jmp .main.Loop179
.main.Loop179.exit:

	addq $4, %rax
	jmp .main.Loop180
.main.Loop180.exit:

	addq $-3, %rax

.main.Loop181:
	cmpb $0, (%rax)
	jz .main.Loop181.exit
	addb $-1, 0(%rax)
	addb $1, 3(%rax)
	jmp .main.Loop181
.main.Loop181.exit:

	addb $1, -1(%rax)
	addq $-10, %rax
	jmp .main.Loop182
.main.Loop182.exit:

	addq $9, %rax

.main.Loop184:
	cmpb $0, (%rax)
	jz .main.Loop184.exit
	addq $4, %rax

.main.Loop183:
	cmpb $0, (%rax)
	jz .main.Loop183.exit
	addb $-1, 0(%rax)
	addb $1, -36(%rax)
	jmp .main.Loop183
.main.Loop183.exit:

	addq $5, %rax
	jmp .main.Loop184
.main.Loop184.exit:

	addq $-9, %rax

.main.Loop185:
	cmpb $0, (%rax)
	jz .main.Loop185.exit
	addq $-9, %rax
	jmp .main.Loop185
.main.Loop185.exit:

	addq $9, %rax

.main.Loop187:
	cmpb $0, (%rax)
	jz .main.Loop187.exit
	addq $3, %rax

.main.Loop186:
	cmpb $0, (%rax)
	jz .main.Loop186.exit
	addb $-1, 0(%rax)
	addb $1, -36(%rax)
	jmp .main.Loop186
.main.Loop186.exit:

	addq $6, %rax
	jmp .main.Loop187
.main.Loop187.exit:

	addq $-9, %rax

.main.Loop188:
	cmpb $0, (%rax)
	jz .main.Loop188.exit
	addq $-9, %rax
	jmp .main.Loop188
.main.Loop188.exit:

	addb $15, 9(%rax)
	addq $9, %rax

.main.Loop191:
	cmpb $0, (%rax)
	jz .main.Loop191.exit

.main.Loop189:
	cmpb $0, (%rax)
	jz .main.Loop189.exit
	addq $9, %rax
	jmp .main.Loop189
.main.Loop189.exit:

	addb $-1, -9(%rax)
	addq $-18, %rax

.main.Loop190:
	cmpb $0, (%rax)
	jz .main.Loop190.exit
	addq $-9, %rax
	jmp .main.Loop190
.main.Loop190.exit:

	addb $-1, 9(%rax)
	addq $9, %rax
	jmp .main.Loop191
.main.Loop191.exit:

	addb $1, 0(%rax)

.main.Loop194:
	cmpb $0, (%rax)
	jz .main.Loop194.exit
	addq $8, %rax

.main.Loop192:
	cmpb $0, (%rax)
	jz .main.Loop192.exit
	addb $-1, 0(%rax)
	addb $1, -7(%rax)
	jmp .main.Loop192
.main.Loop192.exit:

	addq $-7, %rax

.main.Loop193:
	cmpb $0, (%rax)
	jz .main.Loop193.exit
	addb $-1, 0(%rax)
	addb $1, 7(%rax)
	addb $1, 1(%rax)
	jmp .main.Loop193
.main.Loop193.exit:

	addq $8, %rax
	jmp .main.Loop194
.main.Loop194.exit:

	addq $-9, %rax

.main.Loop195:
	cmpb $0, (%rax)
	jz .main.Loop195.exit
	addq $-9, %rax
	jmp .main.Loop195
.main.Loop195.exit:

	addq $9, %rax

.main.Loop197:
	cmpb $0, (%rax)
	jz .main.Loop197.exit
	addq $6, %rax

.main.Loop196:
	cmpb $0, (%rax)
	jz .main.Loop196.exit
	addb $-1, 0(%rax)
	jmp .main.Loop196
.main.Loop196.exit:

	addq $3, %rax
	jmp .main.Loop197
.main.Loop197.exit:

	addq $-9, %rax

.main.Loop198:
	cmpb $0, (%rax)
	jz .main.Loop198.exit
	addq $-9, %rax
	jmp .main.Loop198
.main.Loop198.exit:

	addb $1, 4(%rax)
	addq $5, %rax

.main.Loop199:
	cmpb $0, (%rax)
	jz .main.Loop199.exit
	addb $-1, 0(%rax)
	addb $-1, -1(%rax)
	addb $1, -5(%rax)
	jmp .main.Loop199
.main.Loop199.exit:

	addq $1, %rax

.main.Loop202:
	cmpb $0, (%rax)
	jz .main.Loop202.exit
	addb $-1, 0(%rax)
	addq $-6, %rax

.main.Loop200:
	cmpb $0, (%rax)
	jz .main.Loop200.exit
	addb $-1, 0(%rax)
	addb $1, 5(%rax)
	addb $2, 4(%rax)
	jmp .main.Loop200
.main.Loop200.exit:

	addq $5, %rax

.main.Loop201:
	cmpb $0, (%rax)
	jz .main.Loop201.exit
	addb $-1, 0(%rax)
	addb $1, -5(%rax)
	jmp .main.Loop201
.main.Loop201.exit:

	addb $-1, -1(%rax)
	addb $1, 0(%rax)
	addq $1, %rax
	jmp .main.Loop202
.main.Loop202.exit:

	addq $-1, %rax

.main.Loop203:
	cmpb $0, (%rax)
	jz .main.Loop203.exit
	addb $-1, 0(%rax)
	addb $1, 1(%rax)
	jmp .main.Loop203
.main.Loop203.exit:

	addq $-5, %rax

.main.Loop204:
	cmpb $0, (%rax)
	jz .main.Loop204.exit
	addb $-1, 0(%rax)
	addb $1, 5(%rax)
	jmp .main.Loop204
.main.Loop204.exit:

	addq $6, %rax

.main.Loop205:
	cmpb $0, (%rax)
	jz .main.Loop205.exit
	addb $-1, 0(%rax)
	jmp .main.Loop205
.main.Loop205.exit:

	addb $1, -6(%rax)
	addq $-2, %rax

.main.Loop206:
	cmpb $0, (%rax)
	jz .main.Loop206.exit
	addb $-1, 0(%rax)
	addb $-1, -4(%rax)
	jmp .main.Loop206
.main.Loop206.exit:

	addb $1, 0(%rax)
	addq $-4, %rax

.main.Loop253:
	cmpb $0, (%rax)
	jz .main.Loop253.exit
	addb $-1, 0(%rax)
	addb $-1, 4(%rax)
	addq $9, %rax

.main.Loop224:
	cmpb $0, (%rax)
	jz .main.Loop224.exit
	addq $2, %rax

.main.Loop207:
	cmpb $0, (%rax)
	jz .main.Loop207.exit
	addb $-1, 0(%rax)
	addb $-1, -2(%rax)
	jmp .main.Loop207
.main.Loop207.exit:

	addb $1, 0(%rax)
	addq $-2, %rax

.main.Loop213:
	cmpb $0, (%rax)
	jz .main.Loop213.exit
	addb $-1, 0(%rax)
	addb $-1, 2(%rax)
	addq $3, %rax

.main.Loop208:
	cmpb $0, (%rax)
	jz .main.Loop208.exit
	addb $-1, 0(%rax)
	addb $1, -3(%rax)
	jmp .main.Loop208
.main.Loop208.exit:

	addq $-3, %rax

.main.Loop212:
	cmpb $0, (%rax)
	jz .main.Loop212.exit
	addb $-1, 0(%rax)
	addb $1, 3(%rax)
	addq $-9, %rax

.main.Loop209:
	cmpb $0, (%rax)
	jz .main.Loop209.exit
	addq $-9, %rax
	jmp .main.Loop209
.main.Loop209.exit:

	addq $3, %rax

.main.Loop210:
	cmpb $0, (%rax)
	jz .main.Loop210.exit
	addb $-1, 0(%rax)
	jmp .main.Loop210
.main.Loop210.exit:

	addb $1, 0(%rax)
	addq $6, %rax

.main.Loop211:
	cmpb $0, (%rax)
	jz .main.Loop211.exit
	addq $9, %rax
	jmp .main.Loop211
.main.Loop211.exit:

	addb $1, 1(%rax)
	jmp .main.Loop212
.main.Loop212.exit:

	jmp .main.Loop213
.main.Loop213.exit:

	addb $1, 0(%rax)
	addq $3, %rax

.main.Loop214:
	cmpb $0, (%rax)
	jz .main.Loop214.exit
	addb $-1, 0(%rax)
	addb $-1, -3(%rax)
	jmp .main.Loop214
.main.Loop214.exit:

	addb $1, 0(%rax)
	addq $-3, %rax

.main.Loop221:
	cmpb $0, (%rax)
	jz .main.Loop221.exit
	addb $-1, 0(%rax)
	addb $-1, 3(%rax)
	addq $2, %rax

.main.Loop215:
	cmpb $0, (%rax)
	jz .main.Loop215.exit
	addb $-1, 0(%rax)
	addb $1, -2(%rax)
	jmp .main.Loop215
.main.Loop215.exit:

	addq $-2, %rax

.main.Loop220:
	cmpb $0, (%rax)
	jz .main.Loop220.exit
	addb $-1, 0(%rax)
	addb $1, 2(%rax)
	addq $-9, %rax

.main.Loop216:
	cmpb $0, (%rax)
	jz .main.Loop216.exit
	addq $-9, %rax
	jmp .main.Loop216
.main.Loop216.exit:

	addq $4, %rax

.main.Loop217:
	cmpb $0, (%rax)
	jz .main.Loop217.exit
	addb $-1, 0(%rax)
	jmp .main.Loop217
.main.Loop217.exit:

	addb $1, 0(%rax)
	addq $5, %rax

.main.Loop218:
	cmpb $0, (%rax)
	jz .main.Loop218.exit
	addq $9, %rax
	jmp .main.Loop218
.main.Loop218.exit:

	addq $1, %rax

.main.Loop219:
	cmpb $0, (%rax)
	jz .main.Loop219.exit
	addb $-1, 0(%rax)
	jmp .main.Loop219
.main.Loop219.exit:

	addb $1, 0(%rax)
	addq $-1, %rax
	jmp .main.Loop220
.main.Loop220.exit:

	jmp .main.Loop221
.main.Loop221.exit:

	addb $1, 0(%rax)
	addq $1, %rax

.main.Loop223:
	cmpb $0, (%rax)
	jz .main.Loop223.exit
	addb $-1, 0(%rax)
	addq $-1, %rax

.main.Loop222:
	cmpb $0, (%rax)
	jz .main.Loop222.exit
	addq $9, %rax
	jmp .main.Loop222
.main.Loop222.exit:

	addq $-8, %rax
	jmp .main.Loop223
.main.Loop223.exit:

	addq $8, %rax
	jmp .main.Loop224
.main.Loop224.exit:

	addq $-9, %rax

.main.Loop225:
	cmpb $0, (%rax)
	jz .main.Loop225.exit
	addq $-9, %rax
	jmp .main.Loop225
.main.Loop225.exit:

	addq $4, %rax

.main.Loop226:
	cmpb $0, (%rax)
	jz .main.Loop226.exit
	addb $-1, 0(%rax)
	addb $1, -4(%rax)
	jmp .main.Loop226
.main.Loop226.exit:

	addq $-4, %rax

.main.Loop239:
	cmpb $0, (%rax)
	jz .main.Loop239.exit
	addb $-1, 0(%rax)
	addb $1, 4(%rax)
	addq $9, %rax

.main.Loop229:
	cmpb $0, (%rax)
	jz .main.Loop229.exit
	addb $1, 1(%rax)
	addq $3, %rax

.main.Loop227:
	cmpb $0, (%rax)
	jz .main.Loop227.exit
	addb $-1, 0(%rax)
	addb $-1, -2(%rax)
	jmp .main.Loop227
.main.Loop227.exit:

	addq $-2, %rax

.main.Loop228:
	cmpb $0, (%rax)
	jz .main.Loop228.exit
	addb $-1, 0(%rax)
	addb $1, 2(%rax)
	jmp .main.Loop228
.main.Loop228.exit:

	addq $8, %rax
	jmp .main.Loop229
.main.Loop229.exit:

	addb $1, -8(%rax)
	addq $-9, %rax

.main.Loop237:
	cmpb $0, (%rax)
	jz .main.Loop237.exit
	addq $1, %rax

.main.Loop233:
	cmpb $0, (%rax)
	jz .main.Loop233.exit
	addb $-1, 0(%rax)
	addb $1, 5(%rax)
	addq $1, %rax

.main.Loop231:
	cmpb $0, (%rax)
	jz .main.Loop231.exit
	addb $-1, 0(%rax)
	addb $-1, 4(%rax)
	addb $1, -10(%rax)
	addq $1, %rax

.main.Loop230:
	cmpb $0, (%rax)
	jz .main.Loop230.exit
	addb $-1, 0(%rax)
	addb $1, 3(%rax)
	jmp .main.Loop230
.main.Loop230.exit:

	addq $-1, %rax
	jmp .main.Loop231
.main.Loop231.exit:

	addq $1, %rax

.main.Loop232:
	cmpb $0, (%rax)
	jz .main.Loop232.exit
	addb $-1, 0(%rax)
	addb $-1, 3(%rax)
	addb $1, -11(%rax)
	jmp .main.Loop232
.main.Loop232.exit:

	addq $-2, %rax
	jmp .main.Loop233
.main.Loop233.exit:

	addq $1, %rax

.main.Loop235:
	cmpb $0, (%rax)
	jz .main.Loop235.exit
	addb $-1, 0(%rax)
	addb $1, 4(%rax)
	addq $1, %rax

.main.Loop234:
	cmpb $0, (%rax)
	jz .main.Loop234.exit
	addb $-1, 0(%rax)
	addb $-1, 3(%rax)
	addb $1, -11(%rax)
	jmp .main.Loop234
.main.Loop234.exit:

	addq $-1, %rax
	jmp .main.Loop235
.main.Loop235.exit:

	addq $1, %rax

.main.Loop236:
	cmpb $0, (%rax)
	jz .main.Loop236.exit
	addb $-1, 0(%rax)
	addb $1, 3(%rax)
	jmp .main.Loop236
.main.Loop236.exit:

	addq $-12, %rax
	jmp .main.Loop237
.main.Loop237.exit:

	addq $4, %rax

.main.Loop238:
	cmpb $0, (%rax)
	jz .main.Loop238.exit
	addb $-1, 0(%rax)
	jmp .main.Loop238
.main.Loop238.exit:

	addq $-4, %rax
	jmp .main.Loop239
.main.Loop239.exit:

	addq $3, %rax

.main.Loop240:
	cmpb $0, (%rax)
	jz .main.Loop240.exit
	addb $-1, 0(%rax)
	addb $1, -3(%rax)
	jmp .main.Loop240
.main.Loop240.exit:

	addq $-3, %rax

.main.Loop252:
	cmpb $0, (%rax)
	jz .main.Loop252.exit
	addb $-1, 0(%rax)
	addb $1, 3(%rax)
	addq $9, %rax

.main.Loop243:
	cmpb $0, (%rax)
	jz .main.Loop243.exit
	addb $1, 1(%rax)
	addq $2, %rax

.main.Loop241:
	cmpb $0, (%rax)
	jz .main.Loop241.exit
	addb $-1, 0(%rax)
	addb $-1, -1(%rax)
	jmp .main.Loop241
.main.Loop241.exit:

	addq $-1, %rax

.main.Loop242:
	cmpb $0, (%rax)
	jz .main.Loop242.exit
	addb $-1, 0(%rax)
	addb $1, 1(%rax)
	jmp .main.Loop242
.main.Loop242.exit:

	addq $8, %rax
	jmp .main.Loop243
.main.Loop243.exit:

	addb $1, -8(%rax)
	addq $-9, %rax

.main.Loop251:
	cmpb $0, (%rax)
	jz .main.Loop251.exit
	addq $1, %rax

.main.Loop247:
	cmpb $0, (%rax)
	jz .main.Loop247.exit
	addb $-1, 0(%rax)
	addb $1, 5(%rax)
	addq $2, %rax

.main.Loop245:
	cmpb $0, (%rax)
	jz .main.Loop245.exit
	addb $-1, 0(%rax)
	addb $-1, 3(%rax)
	addb $1, -11(%rax)
	addq $-1, %rax

.main.Loop244:
	cmpb $0, (%rax)
	jz .main.Loop244.exit
	addb $-1, 0(%rax)
	addb $1, 4(%rax)
	jmp .main.Loop244
.main.Loop244.exit:

	addq $1, %rax
	jmp .main.Loop245
.main.Loop245.exit:

	addq $-1, %rax

.main.Loop246:
	cmpb $0, (%rax)
	jz .main.Loop246.exit
	addb $-1, 0(%rax)
	addb $-1, 4(%rax)
	addb $1, -10(%rax)
	jmp .main.Loop246
.main.Loop246.exit:

	addq $-1, %rax
	jmp .main.Loop247
.main.Loop247.exit:

	addq $2, %rax

.main.Loop249:
	cmpb $0, (%rax)
	jz .main.Loop249.exit
	addb $-1, 0(%rax)
	addb $1, 3(%rax)
	addq $-1, %rax

.main.Loop248:
	cmpb $0, (%rax)
	jz .main.Loop248.exit
	addb $-1, 0(%rax)
	addb $-1, 4(%rax)
	addb $1, -10(%rax)
	jmp .main.Loop248
.main.Loop248.exit:

	addq $1, %rax
	jmp .main.Loop249
.main.Loop249.exit:

	addq $-1, %rax

.main.Loop250:
	cmpb $0, (%rax)
	jz .main.Loop250.exit
	addb $-1, 0(%rax)
	addb $1, 4(%rax)
	jmp .main.Loop250
.main.Loop250.exit:

	addq $-11, %rax
	jmp .main.Loop251
.main.Loop251.exit:

	addb $1, 6(%rax)
	jmp .main.Loop252
.main.Loop252.exit:

	jmp .main.Loop253
.main.Loop253.exit:

	addq $4, %rax

.main.Loop254:
	cmpb $0, (%rax)
	jz .main.Loop254.exit
	addb $-1, 0(%rax)
	addb $1, -4(%rax)
	jmp .main.Loop254
.main.Loop254.exit:

	addq $-4, %rax

.main.Loop264:
	cmpb $0, (%rax)
	jz .main.Loop264.exit
	addb $-1, 0(%rax)
	addb $1, 4(%rax)
	addq $9, %rax

.main.Loop255:
	cmpb $0, (%rax)
	jz .main.Loop255.exit
	addq $9, %rax
	jmp .main.Loop255
.main.Loop255.exit:

	addq $-9, %rax

.main.Loop263:
	cmpb $0, (%rax)
	jz .main.Loop263.exit
	addq $1, %rax

.main.Loop259:
	cmpb $0, (%rax)
	jz .main.Loop259.exit
	addb $-1, 0(%rax)
	addb $1, 5(%rax)
	addq $1, %rax

.main.Loop257:
	cmpb $0, (%rax)
	jz .main.Loop257.exit
	addb $-1, 0(%rax)
	addb $-1, 4(%rax)
	addb $1, -10(%rax)
	addq $1, %rax

.main.Loop256:
	cmpb $0, (%rax)
	jz .main.Loop256.exit
	addb $-1, 0(%rax)
	addb $1, 3(%rax)
	jmp .main.Loop256
.main.Loop256.exit:

	addq $-1, %rax
	jmp .main.Loop257
.main.Loop257.exit:

	addq $1, %rax

.main.Loop258:
	cmpb $0, (%rax)
	jz .main.Loop258.exit
	addb $-1, 0(%rax)
	addb $-1, 3(%rax)
	addb $1, -11(%rax)
	jmp .main.Loop258
.main.Loop258.exit:

	addq $-2, %rax
	jmp .main.Loop259
.main.Loop259.exit:

	addq $1, %rax

.main.Loop261:
	cmpb $0, (%rax)
	jz .main.Loop261.exit
	addb $-1, 0(%rax)
	addb $1, 4(%rax)
	addq $1, %rax

.main.Loop260:
	cmpb $0, (%rax)
	jz .main.Loop260.exit
	addb $-1, 0(%rax)
	addb $-1, 3(%rax)
	addb $1, -11(%rax)
	jmp .main.Loop260
.main.Loop260.exit:

	addq $-1, %rax
	jmp .main.Loop261
.main.Loop261.exit:

	addq $1, %rax

.main.Loop262:
	cmpb $0, (%rax)
	jz .main.Loop262.exit
	addb $-1, 0(%rax)
	addb $1, 3(%rax)
	jmp .main.Loop262
.main.Loop262.exit:

	addq $-12, %rax
	jmp .main.Loop263
.main.Loop263.exit:

	jmp .main.Loop264
.main.Loop264.exit:

	addq $1, %rax

.main.Loop265:
	cmpb $0, (%rax)
	jz .main.Loop265.exit
	addb $-1, 0(%rax)
	jmp .main.Loop265
.main.Loop265.exit:

	addq $2, %rax

.main.Loop266:
	cmpb $0, (%rax)
	jz .main.Loop266.exit
	addb $-1, 0(%rax)
	jmp .main.Loop266
.main.Loop266.exit:

	addq $1, %rax

.main.Loop267:
	cmpb $0, (%rax)
	jz .main.Loop267.exit
	addb $-1, 0(%rax)
	jmp .main.Loop267
.main.Loop267.exit:

	addq $5, %rax

.main.Loop270:
	cmpb $0, (%rax)
	jz .main.Loop270.exit
	addq $2, %rax

.main.Loop268:
	cmpb $0, (%rax)
	jz .main.Loop268.exit
	addb $-1, 0(%rax)
	jmp .main.Loop268
.main.Loop268.exit:

	addq $1, %rax

.main.Loop269:
	cmpb $0, (%rax)
	jz .main.Loop269.exit
	addb $-1, 0(%rax)
	jmp .main.Loop269
.main.Loop269.exit:

	addq $6, %rax
	jmp .main.Loop270
.main.Loop270.exit:

	addq $-9, %rax

.main.Loop271:
	cmpb $0, (%rax)
	jz .main.Loop271.exit
	addq $-9, %rax
	jmp .main.Loop271
.main.Loop271.exit:

	addq $9, %rax

.main.Loop274:
	cmpb $0, (%rax)
	jz .main.Loop274.exit
	addq $5, %rax

.main.Loop272:
	cmpb $0, (%rax)
	jz .main.Loop272.exit
	addb $-1, 0(%rax)
	addb $1, -4(%rax)
	jmp .main.Loop272
.main.Loop272.exit:

	addq $-4, %rax

.main.Loop273:
	cmpb $0, (%rax)
	jz .main.Loop273.exit
	addb $-1, 0(%rax)
	addb $1, 4(%rax)
	addb $1, 1(%rax)
	jmp .main.Loop273
.main.Loop273.exit:

	addq $8, %rax
	jmp .main.Loop274
.main.Loop274.exit:

	addq $-9, %rax

.main.Loop275:
	cmpb $0, (%rax)
	jz .main.Loop275.exit
	addq $-9, %rax
	jmp .main.Loop275
.main.Loop275.exit:

	addb $15, 9(%rax)
	addq $9, %rax

.main.Loop287:
	cmpb $0, (%rax)
	jz .main.Loop287.exit

.main.Loop276:
	cmpb $0, (%rax)
	jz .main.Loop276.exit
	addq $9, %rax
	jmp .main.Loop276
.main.Loop276.exit:

	addb $1, 0(%rax)
	addq $1, %rax

.main.Loop277:
	cmpb $0, (%rax)
	jz .main.Loop277.exit
	addb $-1, 0(%rax)
	jmp .main.Loop277
.main.Loop277.exit:

	addq $1, %rax

.main.Loop278:
	cmpb $0, (%rax)
	jz .main.Loop278.exit
	addb $-1, 0(%rax)
	jmp .main.Loop278
.main.Loop278.exit:

	addq $1, %rax

.main.Loop279:
	cmpb $0, (%rax)
	jz .main.Loop279.exit
	addb $-1, 0(%rax)
	jmp .main.Loop279
.main.Loop279.exit:

	addq $1, %rax

.main.Loop280:
	cmpb $0, (%rax)
	jz .main.Loop280.exit
	addb $-1, 0(%rax)
	jmp .main.Loop280
.main.Loop280.exit:

	addq $1, %rax

.main.Loop281:
	cmpb $0, (%rax)
	jz .main.Loop281.exit
	addb $-1, 0(%rax)
	jmp .main.Loop281
.main.Loop281.exit:

	addq $1, %rax

.main.Loop282:
	cmpb $0, (%rax)
	jz .main.Loop282.exit
	addb $-1, 0(%rax)
	jmp .main.Loop282
.main.Loop282.exit:

	addq $1, %rax

.main.Loop283:
	cmpb $0, (%rax)
	jz .main.Loop283.exit
	addb $-1, 0(%rax)
	jmp .main.Loop283
.main.Loop283.exit:

	addq $1, %rax

.main.Loop284:
	cmpb $0, (%rax)
	jz .main.Loop284.exit
	addb $-1, 0(%rax)
	jmp .main.Loop284
.main.Loop284.exit:

	addq $1, %rax

.main.Loop285:
	cmpb $0, (%rax)
	jz .main.Loop285.exit
	addb $-1, 0(%rax)
	jmp .main.Loop285
.main.Loop285.exit:

	addq $-9, %rax

.main.Loop286:
	cmpb $0, (%rax)
	jz .main.Loop286.exit
	addq $-9, %rax
	jmp .main.Loop286
.main.Loop286.exit:

	addb $-1, 9(%rax)
	addq $9, %rax
	jmp .main.Loop287
.main.Loop287.exit:

	addb $1, 0(%rax)

.main.Loop288:
	cmpb $0, (%rax)
	jz .main.Loop288.exit
	addb $1, 1(%rax)
	addq $9, %rax
	jmp .main.Loop288
.main.Loop288.exit:

	addq $-9, %rax

.main.Loop289:
	cmpb $0, (%rax)
	jz .main.Loop289.exit
	addq $-9, %rax
	jmp .main.Loop289
.main.Loop289.exit:

	addq $9, %rax

.main.Loop300:
	cmpb $0, (%rax)
	jz .main.Loop300.exit
	addb $-1, 1(%rax)
	addq $5, %rax

.main.Loop290:
	cmpb $0, (%rax)
	jz .main.Loop290.exit
	addb $-1, 0(%rax)
	addb $1, -4(%rax)
	jmp .main.Loop290
.main.Loop290.exit:

	addq $-4, %rax

.main.Loop295:
	cmpb $0, (%rax)
	jz .main.Loop295.exit
	addb $-1, 0(%rax)
	addb $1, 4(%rax)
	addq $-1, %rax

.main.Loop293:
	cmpb $0, (%rax)
	jz .main.Loop293.exit
	addb $-1, 0(%rax)
	addq $2, %rax

.main.Loop291:
	cmpb $0, (%rax)
	jz .main.Loop291.exit
	addb $-1, 0(%rax)
	addb $1, -2(%rax)
	jmp .main.Loop291
.main.Loop291.exit:

	addq $-2, %rax

.main.Loop292:
	cmpb $0, (%rax)
	jz .main.Loop292.exit
	addb $-1, 0(%rax)
	addb $1, 2(%rax)
	addb $1, 3(%rax)
	jmp .main.Loop292
.main.Loop292.exit:

	addb $1, 0(%rax)
	addq $9, %rax
	jmp .main.Loop293
.main.Loop293.exit:

	addq $-8, %rax

.main.Loop294:
	cmpb $0, (%rax)
	jz .main.Loop294.exit
	addq $-9, %rax
	jmp .main.Loop294
.main.Loop294.exit:

	jmp .main.Loop295
.main.Loop295.exit:

	addq $9, %rax

.main.Loop296:
	cmpb $0, (%rax)
	jz .main.Loop296.exit
	addq $9, %rax
	jmp .main.Loop296
.main.Loop296.exit:

	addq $-9, %rax

.main.Loop298:
	cmpb $0, (%rax)
	jz .main.Loop298.exit
	addq $1, %rax

.main.Loop297:
	cmpb $0, (%rax)
	jz .main.Loop297.exit
	addb $-1, 0(%rax)
	addb $1, 9(%rax)
	jmp .main.Loop297
.main.Loop297.exit:

	addq $-10, %rax
	jmp .main.Loop298
.main.Loop298.exit:

	addq $1, %rax

.main.Loop299:
	cmpb $0, (%rax)
	jz .main.Loop299.exit
	addb $-1, 0(%rax)
	addb $1, 9(%rax)
	jmp .main.Loop299
.main.Loop299.exit:

	addb $1, -1(%rax)
	addq $7, %rax
	jmp .main.Loop300
.main.Loop300.exit:

	addq $-9, %rax

.main.Loop306:
	cmpb $0, (%rax)
	jz .main.Loop306.exit
	addq $1, %rax

.main.Loop301:
	cmpb $0, (%rax)
	jz .main.Loop301.exit
	addb $-1, 0(%rax)
	jmp .main.Loop301
.main.Loop301.exit:

	addb $-1, -1(%rax)
	addq $2, %rax

.main.Loop304:
	cmpb $0, (%rax)
	jz .main.Loop304.exit
	addb $-1, 0(%rax)
	addb $1, -3(%rax)
	addq $-2, %rax

.main.Loop302:
	cmpb $0, (%rax)
	jz .main.Loop302.exit
	addb $-1, -1(%rax)
	addb $-1, 0(%rax)
	addb $1, -7(%rax)
	jmp .main.Loop302
.main.Loop302.exit:

	addq $-1, %rax

.main.Loop303:
	cmpb $0, (%rax)
	jz .main.Loop303.exit
	addb $-1, 0(%rax)
	addb $1, 1(%rax)
	jmp .main.Loop303
.main.Loop303.exit:

	addq $3, %rax
	jmp .main.Loop304
.main.Loop304.exit:

	addq $-2, %rax

.main.Loop305:
	cmpb $0, (%rax)
	jz .main.Loop305.exit
	addb $-1, 0(%rax)
	addb $1, 2(%rax)
	jmp .main.Loop305
.main.Loop305.exit:

	addb $1, -1(%rax)
	addq $-10, %rax
	jmp .main.Loop306
.main.Loop306.exit:

	addq $9, %rax

.main.Loop308:
	cmpb $0, (%rax)
	jz .main.Loop308.exit
	addq $3, %rax

.main.Loop307:
	cmpb $0, (%rax)
	jz .main.Loop307.exit
	addb $-1, 0(%rax)
	addb $1, -36(%rax)
	jmp .main.Loop307
.main.Loop307.exit:

	addq $6, %rax
	jmp .main.Loop308
.main.Loop308.exit:

	addq $-9, %rax

.main.Loop309:
	cmpb $0, (%rax)
	jz .main.Loop309.exit
	addq $-9, %rax
	jmp .main.Loop309
.main.Loop309.exit:

	addq $5, %rax

.main.Loop310:
	cmpb $0, (%rax)
	jz .main.Loop310.exit
	addb $-1, 0(%rax)
	jmp .main.Loop310
.main.Loop310.exit:

	addb $15, 4(%rax)
	addq $4, %rax

.main.Loop313:
	cmpb $0, (%rax)
	jz .main.Loop313.exit

.main.Loop311:
	cmpb $0, (%rax)
	jz .main.Loop311.exit
	addq $9, %rax
	jmp .main.Loop311
.main.Loop311.exit:

	addb $-1, -9(%rax)
	addq $-18, %rax

.main.Loop312:
	cmpb $0, (%rax)
	jz .main.Loop312.exit
	addq $-9, %rax
	jmp .main.Loop312
.main.Loop312.exit:

	addb $-1, 9(%rax)
	addq $9, %rax
	jmp .main.Loop313
.main.Loop313.exit:

	addb $1, 0(%rax)

.main.Loop331:
	cmpb $0, (%rax)
	jz .main.Loop331.exit
	addq $3, %rax

.main.Loop314:
	cmpb $0, (%rax)
	jz .main.Loop314.exit
	addb $-1, 0(%rax)
	addb $-1, -3(%rax)
	jmp .main.Loop314
.main.Loop314.exit:

	addb $1, 0(%rax)
	addq $-3, %rax

.main.Loop320:
	cmpb $0, (%rax)
	jz .main.Loop320.exit
	addb $-1, 0(%rax)
	addb $-1, 3(%rax)
	addq $4, %rax

.main.Loop315:
	cmpb $0, (%rax)
	jz .main.Loop315.exit
	addb $-1, 0(%rax)
	addb $1, -4(%rax)
	jmp .main.Loop315
.main.Loop315.exit:

	addq $-4, %rax

.main.Loop319:
	cmpb $0, (%rax)
	jz .main.Loop319.exit
	addb $-1, 0(%rax)
	addb $1, 4(%rax)
	addq $-9, %rax

.main.Loop316:
	cmpb $0, (%rax)
	jz .main.Loop316.exit
	addq $-9, %rax
	jmp .main.Loop316
.main.Loop316.exit:

	addq $4, %rax

.main.Loop317:
	cmpb $0, (%rax)
	jz .main.Loop317.exit
	addb $-1, 0(%rax)
	jmp .main.Loop317
.main.Loop317.exit:

	addb $1, 0(%rax)
	addq $5, %rax

.main.Loop318:
	cmpb $0, (%rax)
	jz .main.Loop318.exit
	addq $9, %rax
	jmp .main.Loop318
.main.Loop318.exit:

	addb $1, 1(%rax)
	jmp .main.Loop319
.main.Loop319.exit:

	jmp .main.Loop320
.main.Loop320.exit:

	addb $1, 0(%rax)
	addq $4, %rax

.main.Loop321:
	cmpb $0, (%rax)
	jz .main.Loop321.exit
	addb $-1, 0(%rax)
	addb $-1, -4(%rax)
	jmp .main.Loop321
.main.Loop321.exit:

	addb $1, 0(%rax)
	addq $-4, %rax

.main.Loop328:
	cmpb $0, (%rax)
	jz .main.Loop328.exit
	addb $-1, 0(%rax)
	addb $-1, 4(%rax)
	addq $3, %rax

.main.Loop322:
	cmpb $0, (%rax)
	jz .main.Loop322.exit
	addb $-1, 0(%rax)
	addb $1, -3(%rax)
	jmp .main.Loop322
.main.Loop322.exit:

	addq $-3, %rax

.main.Loop327:
	cmpb $0, (%rax)
	jz .main.Loop327.exit
	addb $-1, 0(%rax)
	addb $1, 3(%rax)
	addq $-9, %rax

.main.Loop323:
	cmpb $0, (%rax)
	jz .main.Loop323.exit
	addq $-9, %rax
	jmp .main.Loop323
.main.Loop323.exit:

	addq $3, %rax

.main.Loop324:
	cmpb $0, (%rax)
	jz .main.Loop324.exit
	addb $-1, 0(%rax)
	jmp .main.Loop324
.main.Loop324.exit:

	addb $1, 0(%rax)
	addq $6, %rax

.main.Loop325:
	cmpb $0, (%rax)
	jz .main.Loop325.exit
	addq $9, %rax
	jmp .main.Loop325
.main.Loop325.exit:

	addq $1, %rax

.main.Loop326:
	cmpb $0, (%rax)
	jz .main.Loop326.exit
	addb $-1, 0(%rax)
	jmp .main.Loop326
.main.Loop326.exit:

	addb $1, 0(%rax)
	addq $-1, %rax
	jmp .main.Loop327
.main.Loop327.exit:

	jmp .main.Loop328
.main.Loop328.exit:

	addb $1, 0(%rax)
	addq $1, %rax

.main.Loop330:
	cmpb $0, (%rax)
	jz .main.Loop330.exit
	addb $-1, 0(%rax)
	addq $-1, %rax

.main.Loop329:
	cmpb $0, (%rax)
	jz .main.Loop329.exit
	addq $9, %rax
	jmp .main.Loop329
.main.Loop329.exit:

	addq $-8, %rax
	jmp .main.Loop330
.main.Loop330.exit:

	addq $8, %rax
	jmp .main.Loop331
.main.Loop331.exit:

	addq $-9, %rax

.main.Loop332:
	cmpb $0, (%rax)
	jz .main.Loop332.exit
	addq $-9, %rax
	jmp .main.Loop332
.main.Loop332.exit:

	addq $3, %rax

.main.Loop333:
	cmpb $0, (%rax)
	jz .main.Loop333.exit
	addb $-1, 0(%rax)
	addb $1, -3(%rax)
	jmp .main.Loop333
.main.Loop333.exit:

	addq $-3, %rax

.main.Loop345:
	cmpb $0, (%rax)
	jz .main.Loop345.exit
	addb $-1, 0(%rax)
	addb $1, 3(%rax)
	addq $9, %rax

.main.Loop336:
	cmpb $0, (%rax)
	jz .main.Loop336.exit
	addb $1, 1(%rax)
	addq $4, %rax

.main.Loop334:
	cmpb $0, (%rax)
	jz .main.Loop334.exit
	addb $-1, 0(%rax)
	addb $-1, -3(%rax)
	jmp .main.Loop334
.main.Loop334.exit:

	addq $-3, %rax

.main.Loop335:
	cmpb $0, (%rax)
	jz .main.Loop335.exit
	addb $-1, 0(%rax)
	addb $1, 3(%rax)
	jmp .main.Loop335
.main.Loop335.exit:

	addq $8, %rax
	jmp .main.Loop336
.main.Loop336.exit:

	addb $1, -8(%rax)
	addq $-9, %rax

.main.Loop344:
	cmpb $0, (%rax)
	jz .main.Loop344.exit
	addq $1, %rax

.main.Loop340:
	cmpb $0, (%rax)
	jz .main.Loop340.exit
	addb $-1, 0(%rax)
	addb $1, 1(%rax)
	addq $2, %rax

.main.Loop338:
	cmpb $0, (%rax)
	jz .main.Loop338.exit
	addb $-1, 0(%rax)
	addb $-1, -1(%rax)
	addb $1, -11(%rax)
	addq $1, %rax

.main.Loop337:
	cmpb $0, (%rax)
	jz .main.Loop337.exit
	addb $-1, 0(%rax)
	addb $1, -2(%rax)
	jmp .main.Loop337
.main.Loop337.exit:

	addq $-1, %rax
	jmp .main.Loop338
.main.Loop338.exit:

	addq $1, %rax

.main.Loop339:
	cmpb $0, (%rax)
	jz .main.Loop339.exit
	addb $-1, 0(%rax)
	addb $-1, -2(%rax)
	addb $1, -12(%rax)
	jmp .main.Loop339
.main.Loop339.exit:

	addq $-3, %rax
	jmp .main.Loop340
.main.Loop340.exit:

	addq $2, %rax

.main.Loop342:
	cmpb $0, (%rax)
	jz .main.Loop342.exit
	addb $-1, 0(%rax)
	addb $1, -1(%rax)
	addq $1, %rax

.main.Loop341:
	cmpb $0, (%rax)
	jz .main.Loop341.exit
	addb $-1, 0(%rax)
	addb $-1, -2(%rax)
	addb $1, -12(%rax)
	jmp .main.Loop341
.main.Loop341.exit:

	addq $-1, %rax
	jmp .main.Loop342
.main.Loop342.exit:

	addq $1, %rax

.main.Loop343:
	cmpb $0, (%rax)
	jz .main.Loop343.exit
	addb $-1, 0(%rax)
	addb $1, -2(%rax)
	jmp .main.Loop343
.main.Loop343.exit:

	addq $-13, %rax
	jmp .main.Loop344
.main.Loop344.exit:

	jmp .main.Loop345
.main.Loop345.exit:

	addq $4, %rax

.main.Loop346:
	cmpb $0, (%rax)
	jz .main.Loop346.exit
	addb $-1, 0(%rax)
	addb $1, -4(%rax)
	jmp .main.Loop346
.main.Loop346.exit:

	addq $-4, %rax

.main.Loop358:
	cmpb $0, (%rax)
	jz .main.Loop358.exit
	addb $-1, 0(%rax)
	addb $1, 4(%rax)
	addq $9, %rax

.main.Loop349:
	cmpb $0, (%rax)
	jz .main.Loop349.exit
	addb $1, 1(%rax)
	addq $3, %rax

.main.Loop347:
	cmpb $0, (%rax)
	jz .main.Loop347.exit
	addb $-1, 0(%rax)
	addb $-1, -2(%rax)
	jmp .main.Loop347
.main.Loop347.exit:

	addq $-2, %rax

.main.Loop348:
	cmpb $0, (%rax)
	jz .main.Loop348.exit
	addb $-1, 0(%rax)
	addb $1, 2(%rax)
	jmp .main.Loop348
.main.Loop348.exit:

	addq $8, %rax
	jmp .main.Loop349
.main.Loop349.exit:

	addb $1, -8(%rax)
	addq $-9, %rax

.main.Loop357:
	cmpb $0, (%rax)
	jz .main.Loop357.exit
	addq $1, %rax

.main.Loop353:
	cmpb $0, (%rax)
	jz .main.Loop353.exit
	addb $-1, 0(%rax)
	addb $1, 1(%rax)
	addq $3, %rax

.main.Loop351:
	cmpb $0, (%rax)
	jz .main.Loop351.exit
	addb $-1, 0(%rax)
	addb $-1, -2(%rax)
	addb $1, -12(%rax)
	addq $-1, %rax

.main.Loop350:
	cmpb $0, (%rax)
	jz .main.Loop350.exit
	addb $-1, 0(%rax)
	addb $1, -1(%rax)
	jmp .main.Loop350
.main.Loop350.exit:

	addq $1, %rax
	jmp .main.Loop351
.main.Loop351.exit:

	addq $-1, %rax

.main.Loop352:
	cmpb $0, (%rax)
	jz .main.Loop352.exit
	addb $-1, 0(%rax)
	addb $-1, -1(%rax)
	addb $1, -11(%rax)
	jmp .main.Loop352
.main.Loop352.exit:

	addq $-2, %rax
	jmp .main.Loop353
.main.Loop353.exit:

	addq $3, %rax

.main.Loop355:
	cmpb $0, (%rax)
	jz .main.Loop355.exit
	addb $-1, 0(%rax)
	addb $1, -2(%rax)
	addq $-1, %rax

.main.Loop354:
	cmpb $0, (%rax)
	jz .main.Loop354.exit
	addb $-1, 0(%rax)
	addb $-1, -1(%rax)
	addb $1, -11(%rax)
	jmp .main.Loop354
.main.Loop354.exit:

	addq $1, %rax
	jmp .main.Loop355
.main.Loop355.exit:

	addq $-1, %rax

.main.Loop356:
	cmpb $0, (%rax)
	jz .main.Loop356.exit
	addb $-1, 0(%rax)
	addb $1, -1(%rax)
	jmp .main.Loop356
.main.Loop356.exit:

	addq $-12, %rax
	jmp .main.Loop357
.main.Loop357.exit:

	addb $1, 5(%rax)
	jmp .main.Loop358
.main.Loop358.exit:

	addq $9, %rax

.main.Loop362:
	cmpb $0, (%rax)
	jz .main.Loop362.exit
	addq $3, %rax

.main.Loop359:
	cmpb $0, (%rax)
	jz .main.Loop359.exit
	addb $-1, 0(%rax)
	jmp .main.Loop359
.main.Loop359.exit:

	addq $1, %rax

.main.Loop360:
	cmpb $0, (%rax)
	jz .main.Loop360.exit
	addb $-1, 0(%rax)
	jmp .main.Loop360
.main.Loop360.exit:

	addq $1, %rax

.main.Loop361:
	cmpb $0, (%rax)
	jz .main.Loop361.exit
	addb $-1, 0(%rax)
	jmp .main.Loop361
.main.Loop361.exit:

	addq $4, %rax
	jmp .main.Loop362
.main.Loop362.exit:

	addq $-9, %rax

.main.Loop363:
	cmpb $0, (%rax)
	jz .main.Loop363.exit
	addq $-9, %rax
	jmp .main.Loop363
.main.Loop363.exit:

	addq $3, %rax

.main.Loop364:
	cmpb $0, (%rax)
	jz .main.Loop364.exit
	addb $-1, 0(%rax)
	jmp .main.Loop364
.main.Loop364.exit:

	addq $1, %rax

.main.Loop365:
	cmpb $0, (%rax)
	jz .main.Loop365.exit
	addb $-1, 0(%rax)
	jmp .main.Loop365
.main.Loop365.exit:

	addq $5, %rax

.main.Loop368:
	cmpb $0, (%rax)
	jz .main.Loop368.exit
	addq $7, %rax

.main.Loop366:
	cmpb $0, (%rax)
	jz .main.Loop366.exit
	addb $-1, 0(%rax)
	addb $1, -6(%rax)
	jmp .main.Loop366
.main.Loop366.exit:

	addq $-6, %rax

.main.Loop367:
	cmpb $0, (%rax)
	jz .main.Loop367.exit
	addb $-1, 0(%rax)
	addb $1, 6(%rax)
	addb $1, 2(%rax)
	jmp .main.Loop367
.main.Loop367.exit:

	addq $8, %rax
	jmp .main.Loop368
.main.Loop368.exit:

	addq $-9, %rax

.main.Loop369:
	cmpb $0, (%rax)
	jz .main.Loop369.exit
	addq $-9, %rax
	jmp .main.Loop369
.main.Loop369.exit:

	addb $1, 4(%rax)
	addq $5, %rax

.main.Loop370:
	cmpb $0, (%rax)
	jz .main.Loop370.exit
	addb $-1, 0(%rax)
	addb $-1, -1(%rax)
	addb $1, -5(%rax)
	jmp .main.Loop370
.main.Loop370.exit:

	addq $2, %rax

.main.Loop373:
	cmpb $0, (%rax)
	jz .main.Loop373.exit
	addb $-1, 0(%rax)
	addq $-7, %rax

.main.Loop371:
	cmpb $0, (%rax)
	jz .main.Loop371.exit
	addb $-1, 0(%rax)
	addb $1, 5(%rax)
	addb $2, 4(%rax)
	jmp .main.Loop371
.main.Loop371.exit:

	addq $5, %rax

.main.Loop372:
	cmpb $0, (%rax)
	jz .main.Loop372.exit
	addb $-1, 0(%rax)
	addb $1, -5(%rax)
	jmp .main.Loop372
.main.Loop372.exit:

	addb $-1, -1(%rax)
	addb $1, 0(%rax)
	addq $2, %rax
	jmp .main.Loop373
.main.Loop373.exit:

	addq $-2, %rax

.main.Loop374:
	cmpb $0, (%rax)
	jz .main.Loop374.exit
	addb $-1, 0(%rax)
	addb $1, 2(%rax)
	jmp .main.Loop374
.main.Loop374.exit:

	addq $-5, %rax

.main.Loop375:
	cmpb $0, (%rax)
	jz .main.Loop375.exit
	addb $-1, 0(%rax)
	addb $1, 5(%rax)
	jmp .main.Loop375
.main.Loop375.exit:

	addb $1, 0(%rax)
	addq $4, %rax

.main.Loop376:
	cmpb $0, (%rax)
	jz .main.Loop376.exit
	addb $-1, 0(%rax)
	addb $-1, -4(%rax)
	jmp .main.Loop376
.main.Loop376.exit:

	addb $1, 0(%rax)
	addq $-4, %rax

.main.Loop426:
	cmpb $0, (%rax)
	jz .main.Loop426.exit
	addb $-1, 0(%rax)
	addb $-1, 4(%rax)
	addq $9, %rax

.main.Loop394:
	cmpb $0, (%rax)
	jz .main.Loop394.exit
	addq $3, %rax

.main.Loop377:
	cmpb $0, (%rax)
	jz .main.Loop377.exit
	addb $-1, 0(%rax)
	addb $-1, -3(%rax)
	jmp .main.Loop377
.main.Loop377.exit:

	addb $1, 0(%rax)
	addq $-3, %rax

.main.Loop383:
	cmpb $0, (%rax)
	jz .main.Loop383.exit
	addb $-1, 0(%rax)
	addb $-1, 3(%rax)
	addq $2, %rax

.main.Loop378:
	cmpb $0, (%rax)
	jz .main.Loop378.exit
	addb $-1, 0(%rax)
	addb $1, -2(%rax)
	jmp .main.Loop378
.main.Loop378.exit:

	addq $-2, %rax

.main.Loop382:
	cmpb $0, (%rax)
	jz .main.Loop382.exit
	addb $-1, 0(%rax)
	addb $1, 2(%rax)
	addq $-9, %rax

.main.Loop379:
	cmpb $0, (%rax)
	jz .main.Loop379.exit
	addq $-9, %rax
	jmp .main.Loop379
.main.Loop379.exit:

	addq $4, %rax

.main.Loop380:
	cmpb $0, (%rax)
	jz .main.Loop380.exit
	addb $-1, 0(%rax)
	jmp .main.Loop380
.main.Loop380.exit:

	addb $1, 0(%rax)
	addq $5, %rax

.main.Loop381:
	cmpb $0, (%rax)
	jz .main.Loop381.exit
	addq $9, %rax
	jmp .main.Loop381
.main.Loop381.exit:

	addb $1, 1(%rax)
	jmp .main.Loop382
.main.Loop382.exit:

	jmp .main.Loop383
.main.Loop383.exit:

	addb $1, 0(%rax)
	addq $2, %rax

.main.Loop384:
	cmpb $0, (%rax)
	jz .main.Loop384.exit
	addb $-1, 0(%rax)
	addb $-1, -2(%rax)
	jmp .main.Loop384
.main.Loop384.exit:

	addb $1, 0(%rax)
	addq $-2, %rax

.main.Loop391:
	cmpb $0, (%rax)
	jz .main.Loop391.exit
	addb $-1, 0(%rax)
	addb $-1, 2(%rax)
	addq $3, %rax

.main.Loop385:
	cmpb $0, (%rax)
	jz .main.Loop385.exit
	addb $-1, 0(%rax)
	addb $1, -3(%rax)
	jmp .main.Loop385
.main.Loop385.exit:

	addq $-3, %rax

.main.Loop390:
	cmpb $0, (%rax)
	jz .main.Loop390.exit
	addb $-1, 0(%rax)
	addb $1, 3(%rax)
	addq $-9, %rax

.main.Loop386:
	cmpb $0, (%rax)
	jz .main.Loop386.exit
	addq $-9, %rax
	jmp .main.Loop386
.main.Loop386.exit:

	addq $3, %rax

.main.Loop387:
	cmpb $0, (%rax)
	jz .main.Loop387.exit
	addb $-1, 0(%rax)
	jmp .main.Loop387
.main.Loop387.exit:

	addb $1, 0(%rax)
	addq $6, %rax

.main.Loop388:
	cmpb $0, (%rax)
	jz .main.Loop388.exit
	addq $9, %rax
	jmp .main.Loop388
.main.Loop388.exit:

	addq $1, %rax

.main.Loop389:
	cmpb $0, (%rax)
	jz .main.Loop389.exit
	addb $-1, 0(%rax)
	jmp .main.Loop389
.main.Loop389.exit:

	addb $1, 0(%rax)
	addq $-1, %rax
	jmp .main.Loop390
.main.Loop390.exit:

	jmp .main.Loop391
.main.Loop391.exit:

	addb $1, 0(%rax)
	addq $1, %rax

.main.Loop393:
	cmpb $0, (%rax)
	jz .main.Loop393.exit
	addb $-1, 0(%rax)
	addq $-1, %rax

.main.Loop392:
	cmpb $0, (%rax)
	jz .main.Loop392.exit
	addq $9, %rax
	jmp .main.Loop392
.main.Loop392.exit:

	addq $-8, %rax
	jmp .main.Loop393
.main.Loop393.exit:

	addq $8, %rax
	jmp .main.Loop394
.main.Loop394.exit:

	addq $-9, %rax

.main.Loop395:
	cmpb $0, (%rax)
	jz .main.Loop395.exit
	addq $-9, %rax
	jmp .main.Loop395
.main.Loop395.exit:

	addq $3, %rax

.main.Loop396:
	cmpb $0, (%rax)
	jz .main.Loop396.exit
	addb $-1, 0(%rax)
	addb $1, -3(%rax)
	jmp .main.Loop396
.main.Loop396.exit:

	addq $-3, %rax

.main.Loop411:
	cmpb $0, (%rax)
	jz .main.Loop411.exit
	addb $-1, 0(%rax)
	addb $1, 3(%rax)
	addq $9, %rax

.main.Loop399:
	cmpb $0, (%rax)
	jz .main.Loop399.exit
	addb $1, 1(%rax)
	addq $2, %rax

.main.Loop397:
	cmpb $0, (%rax)
	jz .main.Loop397.exit
	addb $-1, 0(%rax)
	addb $-1, -1(%rax)
	jmp .main.Loop397
.main.Loop397.exit:

	addq $-1, %rax

.main.Loop398:
	cmpb $0, (%rax)
	jz .main.Loop398.exit
	addb $-1, 0(%rax)
	addb $1, 1(%rax)
	jmp .main.Loop398
.main.Loop398.exit:

	addq $8, %rax
	jmp .main.Loop399
.main.Loop399.exit:

	addb $1, -8(%rax)
	addq $-9, %rax

.main.Loop407:
	cmpb $0, (%rax)
	jz .main.Loop407.exit
	addq $1, %rax

.main.Loop403:
	cmpb $0, (%rax)
	jz .main.Loop403.exit
	addb $-1, 0(%rax)
	addb $1, 4(%rax)
	addq $2, %rax

.main.Loop401:
	cmpb $0, (%rax)
	jz .main.Loop401.exit
	addb $-1, 0(%rax)
	addb $-1, 2(%rax)
	addb $1, -11(%rax)
	addq $-1, %rax

.main.Loop400:
	cmpb $0, (%rax)
	jz .main.Loop400.exit
	addb $-1, 0(%rax)
	addb $1, 3(%rax)
	jmp .main.Loop400
.main.Loop400.exit:

	addq $1, %rax
	jmp .main.Loop401
.main.Loop401.exit:

	addq $-1, %rax

.main.Loop402:
	cmpb $0, (%rax)
	jz .main.Loop402.exit
	addb $-1, 0(%rax)
	addb $-1, 3(%rax)
	addb $1, -10(%rax)
	jmp .main.Loop402
.main.Loop402.exit:

	addq $-1, %rax
	jmp .main.Loop403
.main.Loop403.exit:

	addq $2, %rax

.main.Loop405:
	cmpb $0, (%rax)
	jz .main.Loop405.exit
	addb $-1, 0(%rax)
	addb $1, 2(%rax)
	addq $-1, %rax

.main.Loop404:
	cmpb $0, (%rax)
	jz .main.Loop404.exit
	addb $-1, 0(%rax)
	addb $-1, 3(%rax)
	addb $1, -10(%rax)
	jmp .main.Loop404
.main.Loop404.exit:

	addq $1, %rax
	jmp .main.Loop405
.main.Loop405.exit:

	addq $-1, %rax

.main.Loop406:
	cmpb $0, (%rax)
	jz .main.Loop406.exit
	addb $-1, 0(%rax)
	addb $1, 3(%rax)
	jmp .main.Loop406
.main.Loop406.exit:

	addq $-11, %rax
	jmp .main.Loop407
.main.Loop407.exit:

	addq $5, %rax

.main.Loop408:
	cmpb $0, (%rax)
	jz .main.Loop408.exit
	addb $-1, 0(%rax)
	jmp .main.Loop408
.main.Loop408.exit:

	addq $2, %rax

.main.Loop409:
	cmpb $0, (%rax)
	jz .main.Loop409.exit
	addb $-1, 0(%rax)
	addb $1, -7(%rax)
	jmp .main.Loop409
.main.Loop409.exit:

	addq $-7, %rax

.main.Loop410:
	cmpb $0, (%rax)
	jz .main.Loop410.exit
	addb $-1, 0(%rax)
	addb $1, 7(%rax)
	addb $1, 5(%rax)
	jmp .main.Loop410
.main.Loop410.exit:

	jmp .main.Loop411
.main.Loop411.exit:

	addq $4, %rax

.main.Loop412:
	cmpb $0, (%rax)
	jz .main.Loop412.exit
	addb $-1, 0(%rax)
	addb $1, -4(%rax)
	jmp .main.Loop412
.main.Loop412.exit:

	addq $-4, %rax

.main.Loop424:
	cmpb $0, (%rax)
	jz .main.Loop424.exit
	addb $-1, 0(%rax)
	addb $1, 4(%rax)
	addq $9, %rax

.main.Loop415:
	cmpb $0, (%rax)
	jz .main.Loop415.exit
	addb $1, 1(%rax)
	addq $3, %rax

.main.Loop413:
	cmpb $0, (%rax)
	jz .main.Loop413.exit
	addb $-1, 0(%rax)
	addb $-1, -2(%rax)
	jmp .main.Loop413
.main.Loop413.exit:

	addq $-2, %rax

.main.Loop414:
	cmpb $0, (%rax)
	jz .main.Loop414.exit
	addb $-1, 0(%rax)
	addb $1, 2(%rax)
	jmp .main.Loop414
.main.Loop414.exit:

	addq $8, %rax
	jmp .main.Loop415
.main.Loop415.exit:

	addb $1, -8(%rax)
	addq $-9, %rax

.main.Loop423:
	cmpb $0, (%rax)
	jz .main.Loop423.exit
	addq $1, %rax

.main.Loop419:
	cmpb $0, (%rax)
	jz .main.Loop419.exit
	addb $-1, 0(%rax)
	addb $1, 4(%rax)
	addq $1, %rax

.main.Loop417:
	cmpb $0, (%rax)
	jz .main.Loop417.exit
	addb $-1, 0(%rax)
	addb $-1, 3(%rax)
	addb $1, -10(%rax)
	addq $1, %rax

.main.Loop416:
	cmpb $0, (%rax)
	jz .main.Loop416.exit
	addb $-1, 0(%rax)
	addb $1, 2(%rax)
	jmp .main.Loop416
.main.Loop416.exit:

	addq $-1, %rax
	jmp .main.Loop417
.main.Loop417.exit:

	addq $1, %rax

.main.Loop418:
	cmpb $0, (%rax)
	jz .main.Loop418.exit
	addb $-1, 0(%rax)
	addb $-1, 2(%rax)
	addb $1, -11(%rax)
	jmp .main.Loop418
.main.Loop418.exit:

	addq $-2, %rax
	jmp .main.Loop419
.main.Loop419.exit:

	addq $1, %rax

.main.Loop421:
	cmpb $0, (%rax)
	jz .main.Loop421.exit
	addb $-1, 0(%rax)
	addb $1, 3(%rax)
	addq $1, %rax

.main.Loop420:
	cmpb $0, (%rax)
	jz .main.Loop420.exit
	addb $-1, 0(%rax)
	addb $-1, 2(%rax)
	addb $1, -11(%rax)
	jmp .main.Loop420
.main.Loop420.exit:

	addq $-1, %rax
	jmp .main.Loop421
.main.Loop421.exit:

	addq $1, %rax

.main.Loop422:
	cmpb $0, (%rax)
	jz .main.Loop422.exit
	addb $-1, 0(%rax)
	addb $1, 2(%rax)
	jmp .main.Loop422
.main.Loop422.exit:

	addq $-12, %rax
	jmp .main.Loop423
.main.Loop423.exit:

	jmp .main.Loop424
.main.Loop424.exit:

	addq $4, %rax

.main.Loop425:
	cmpb $0, (%rax)
	jz .main.Loop425.exit
	addb $-1, 0(%rax)
	jmp .main.Loop425
.main.Loop425.exit:

	addq $-4, %rax
	jmp .main.Loop426
.main.Loop426.exit:

	addq $4, %rax

.main.Loop427:
	cmpb $0, (%rax)
	jz .main.Loop427.exit
	addb $-1, 0(%rax)
	addb $1, -4(%rax)
	jmp .main.Loop427
.main.Loop427.exit:

	addq $-4, %rax

.main.Loop440:
	cmpb $0, (%rax)
	jz .main.Loop440.exit
	addb $-1, 0(%rax)
	addb $1, 4(%rax)
	addq $5, %rax

.main.Loop428:
	cmpb $0, (%rax)
	jz .main.Loop428.exit
	addb $-1, 0(%rax)
	jmp .main.Loop428
.main.Loop428.exit:

	addq $2, %rax

.main.Loop429:
	cmpb $0, (%rax)
	jz .main.Loop429.exit
	addb $-1, 0(%rax)
	addb $1, -7(%rax)
	jmp .main.Loop429
.main.Loop429.exit:

	addq $-7, %rax

.main.Loop430:
	cmpb $0, (%rax)
	jz .main.Loop430.exit
	addb $-1, 0(%rax)
	addb $1, 7(%rax)
	addb $1, 5(%rax)
	jmp .main.Loop430
.main.Loop430.exit:

	addq $9, %rax

.main.Loop431:
	cmpb $0, (%rax)
	jz .main.Loop431.exit
	addq $9, %rax
	jmp .main.Loop431
.main.Loop431.exit:

	addq $-9, %rax

.main.Loop439:
	cmpb $0, (%rax)
	jz .main.Loop439.exit
	addq $1, %rax

.main.Loop435:
	cmpb $0, (%rax)
	jz .main.Loop435.exit
	addb $-1, 0(%rax)
	addb $1, 4(%rax)
	addq $1, %rax

.main.Loop433:
	cmpb $0, (%rax)
	jz .main.Loop433.exit
	addb $-1, 0(%rax)
	addb $-1, 3(%rax)
	addb $1, -10(%rax)
	addq $1, %rax

.main.Loop432:
	cmpb $0, (%rax)
	jz .main.Loop432.exit
	addb $-1, 0(%rax)
	addb $1, 2(%rax)
	jmp .main.Loop432
.main.Loop432.exit:

	addq $-1, %rax
	jmp .main.Loop433
.main.Loop433.exit:

	addq $1, %rax

.main.Loop434:
	cmpb $0, (%rax)
	jz .main.Loop434.exit
	addb $-1, 0(%rax)
	addb $-1, 2(%rax)
	addb $1, -11(%rax)
	jmp .main.Loop434
.main.Loop434.exit:

	addq $-2, %rax
	jmp .main.Loop435
.main.Loop435.exit:

	addq $1, %rax

.main.Loop437:
	cmpb $0, (%rax)
	jz .main.Loop437.exit
	addb $-1, 0(%rax)
	addb $1, 3(%rax)
	addq $1, %rax

.main.Loop436:
	cmpb $0, (%rax)
	jz .main.Loop436.exit
	addb $-1, 0(%rax)
	addb $-1, 2(%rax)
	addb $1, -11(%rax)
	jmp .main.Loop436
.main.Loop436.exit:

	addq $-1, %rax
	jmp .main.Loop437
.main.Loop437.exit:

	addq $1, %rax

.main.Loop438:
	cmpb $0, (%rax)
	jz .main.Loop438.exit
	addb $-1, 0(%rax)
	addb $1, 2(%rax)
	jmp .main.Loop438
.main.Loop438.exit:

	addq $-12, %rax
	jmp .main.Loop439
.main.Loop439.exit:

	jmp .main.Loop440
.main.Loop440.exit:

	addq $9, %rax

.main.Loop443:
	cmpb $0, (%rax)
	jz .main.Loop443.exit
	addq $2, %rax

.main.Loop441:
	cmpb $0, (%rax)
	jz .main.Loop441.exit
	addb $-1, 0(%rax)
	jmp .main.Loop441
.main.Loop441.exit:

	addq $1, %rax

.main.Loop442:
	cmpb $0, (%rax)
	jz .main.Loop442.exit
	addb $-1, 0(%rax)
	jmp .main.Loop442
.main.Loop442.exit:

	addq $6, %rax
	jmp .main.Loop443
.main.Loop443.exit:

	addq $-9, %rax

.main.Loop444:
	cmpb $0, (%rax)
	jz .main.Loop444.exit
	addq $-9, %rax
	jmp .main.Loop444
.main.Loop444.exit:

	addq $3, %rax

.main.Loop445:
	cmpb $0, (%rax)
	jz .main.Loop445.exit
	addb $-1, 0(%rax)
	jmp .main.Loop445
.main.Loop445.exit:

	addq $1, %rax

.main.Loop446:
	cmpb $0, (%rax)
	jz .main.Loop446.exit
	addb $-1, 0(%rax)
	jmp .main.Loop446
.main.Loop446.exit:

	addq $5, %rax

.main.Loop449:
	cmpb $0, (%rax)
	jz .main.Loop449.exit
	addq $5, %rax

.main.Loop447:
	cmpb $0, (%rax)
	jz .main.Loop447.exit
	addb $-1, 0(%rax)
	addb $1, -4(%rax)
	jmp .main.Loop447
.main.Loop447.exit:

	addq $-4, %rax

.main.Loop448:
	cmpb $0, (%rax)
	jz .main.Loop448.exit
	addb $-1, 0(%rax)
	addb $1, 4(%rax)
	addb $1, 1(%rax)
	jmp .main.Loop448
.main.Loop448.exit:

	addq $8, %rax
	jmp .main.Loop449
.main.Loop449.exit:

	addq $-9, %rax

.main.Loop450:
	cmpb $0, (%rax)
	jz .main.Loop450.exit
	addq $-9, %rax
	jmp .main.Loop450
.main.Loop450.exit:

	addq $9, %rax

.main.Loop453:
	cmpb $0, (%rax)
	jz .main.Loop453.exit
	addq $6, %rax

.main.Loop451:
	cmpb $0, (%rax)
	jz .main.Loop451.exit
	addb $-1, 0(%rax)
	addb $1, -5(%rax)
	jmp .main.Loop451
.main.Loop451.exit:

	addq $-5, %rax

.main.Loop452:
	cmpb $0, (%rax)
	jz .main.Loop452.exit
	addb $-1, 0(%rax)
	addb $1, 5(%rax)
	addb $1, 2(%rax)
	jmp .main.Loop452
.main.Loop452.exit:

	addq $8, %rax
	jmp .main.Loop453
.main.Loop453.exit:

	addq $-9, %rax

.main.Loop454:
	cmpb $0, (%rax)
	jz .main.Loop454.exit
	addq $-9, %rax
	jmp .main.Loop454
.main.Loop454.exit:

	addb $15, 9(%rax)
	addq $9, %rax

.main.Loop466:
	cmpb $0, (%rax)
	jz .main.Loop466.exit

.main.Loop455:
	cmpb $0, (%rax)
	jz .main.Loop455.exit
	addq $9, %rax
	jmp .main.Loop455
.main.Loop455.exit:

	addb $1, 0(%rax)
	addq $1, %rax

.main.Loop456:
	cmpb $0, (%rax)
	jz .main.Loop456.exit
	addb $-1, 0(%rax)
	jmp .main.Loop456
.main.Loop456.exit:

	addq $1, %rax

.main.Loop457:
	cmpb $0, (%rax)
	jz .main.Loop457.exit
	addb $-1, 0(%rax)
	jmp .main.Loop457
.main.Loop457.exit:

	addq $1, %rax

.main.Loop458:
	cmpb $0, (%rax)
	jz .main.Loop458.exit
	addb $-1, 0(%rax)
	jmp .main.Loop458
.main.Loop458.exit:

	addq $1, %rax

.main.Loop459:
	cmpb $0, (%rax)
	jz .main.Loop459.exit
	addb $-1, 0(%rax)
	jmp .main.Loop459
.main.Loop459.exit:

	addq $1, %rax

.main.Loop460:
	cmpb $0, (%rax)
	jz .main.Loop460.exit
	addb $-1, 0(%rax)
	jmp .main.Loop460
.main.Loop460.exit:

	addq $1, %rax

.main.Loop461:
	cmpb $0, (%rax)
	jz .main.Loop461.exit
	addb $-1, 0(%rax)
	jmp .main.Loop461
.main.Loop461.exit:

	addq $1, %rax

.main.Loop462:
	cmpb $0, (%rax)
	jz .main.Loop462.exit
	addb $-1, 0(%rax)
	jmp .main.Loop462
.main.Loop462.exit:

	addq $1, %rax

.main.Loop463:
	cmpb $0, (%rax)
	jz .main.Loop463.exit
	addb $-1, 0(%rax)
	jmp .main.Loop463
.main.Loop463.exit:

	addq $1, %rax

.main.Loop464:
	cmpb $0, (%rax)
	jz .main.Loop464.exit
	addb $-1, 0(%rax)
	jmp .main.Loop464
.main.Loop464.exit:

	addq $-9, %rax

.main.Loop465:
	cmpb $0, (%rax)
	jz .main.Loop465.exit
	addq $-9, %rax
	jmp .main.Loop465
.main.Loop465.exit:

	addb $-1, 9(%rax)
	addq $9, %rax
	jmp .main.Loop466
.main.Loop466.exit:

	addb $1, 0(%rax)

.main.Loop467:
	cmpb $0, (%rax)
	jz .main.Loop467.exit
	addb $1, 1(%rax)
	addq $9, %rax
	jmp .main.Loop467
.main.Loop467.exit:

	addq $-9, %rax

.main.Loop468:
	cmpb $0, (%rax)
	jz .main.Loop468.exit
	addq $-9, %rax
	jmp .main.Loop468
.main.Loop468.exit:

	addq $9, %rax

.main.Loop479:
	cmpb $0, (%rax)
	jz .main.Loop479.exit
	addb $-1, 1(%rax)
	addq $5, %rax

.main.Loop469:
	cmpb $0, (%rax)
	jz .main.Loop469.exit
	addb $-1, 0(%rax)
	addb $1, -4(%rax)
	jmp .main.Loop469
.main.Loop469.exit:

	addq $-4, %rax

.main.Loop474:
	cmpb $0, (%rax)
	jz .main.Loop474.exit
	addb $-1, 0(%rax)
	addb $1, 4(%rax)
	addq $-1, %rax

.main.Loop472:
	cmpb $0, (%rax)
	jz .main.Loop472.exit
	addb $-1, 0(%rax)
	addq $2, %rax

.main.Loop470:
	cmpb $0, (%rax)
	jz .main.Loop470.exit
	addb $-1, 0(%rax)
	addb $1, -2(%rax)
	jmp .main.Loop470
.main.Loop470.exit:

	addq $-2, %rax

.main.Loop471:
	cmpb $0, (%rax)
	jz .main.Loop471.exit
	addb $-1, 0(%rax)
	addb $1, 2(%rax)
	addb $1, 4(%rax)
	jmp .main.Loop471
.main.Loop471.exit:

	addb $1, 0(%rax)
	addq $9, %rax
	jmp .main.Loop472
.main.Loop472.exit:

	addq $-8, %rax

.main.Loop473:
	cmpb $0, (%rax)
	jz .main.Loop473.exit
	addq $-9, %rax
	jmp .main.Loop473
.main.Loop473.exit:

	jmp .main.Loop474
.main.Loop474.exit:

	addq $9, %rax

.main.Loop475:
	cmpb $0, (%rax)
	jz .main.Loop475.exit
	addq $9, %rax
	jmp .main.Loop475
.main.Loop475.exit:

	addq $-9, %rax

.main.Loop477:
	cmpb $0, (%rax)
	jz .main.Loop477.exit
	addq $1, %rax

.main.Loop476:
	cmpb $0, (%rax)
	jz .main.Loop476.exit
	addb $-1, 0(%rax)
	addb $1, 9(%rax)
	jmp .main.Loop476
.main.Loop476.exit:

	addq $-10, %rax
	jmp .main.Loop477
.main.Loop477.exit:

	addq $1, %rax

.main.Loop478:
	cmpb $0, (%rax)
	jz .main.Loop478.exit
	addb $-1, 0(%rax)
	addb $1, 9(%rax)
	jmp .main.Loop478
.main.Loop478.exit:

	addb $1, -1(%rax)
	addq $7, %rax
	jmp .main.Loop479
.main.Loop479.exit:

	addq $-9, %rax

.main.Loop485:
	cmpb $0, (%rax)
	jz .main.Loop485.exit
	addq $1, %rax

.main.Loop480:
	cmpb $0, (%rax)
	jz .main.Loop480.exit
	addb $-1, 0(%rax)
	jmp .main.Loop480
.main.Loop480.exit:

	addb $-1, -1(%rax)
	addq $3, %rax

.main.Loop483:
	cmpb $0, (%rax)
	jz .main.Loop483.exit
	addb $-1, 0(%rax)
	addb $1, -4(%rax)
	addq $-3, %rax

.main.Loop481:
	cmpb $0, (%rax)
	jz .main.Loop481.exit
	addb $-1, -1(%rax)
	addb $-1, 0(%rax)
	addb $1, -6(%rax)
	jmp .main.Loop481
.main.Loop481.exit:

	addq $-1, %rax

.main.Loop482:
	cmpb $0, (%rax)
	jz .main.Loop482.exit
	addb $-1, 0(%rax)
	addb $1, 1(%rax)
	jmp .main.Loop482
.main.Loop482.exit:

	addq $4, %rax
	jmp .main.Loop483
.main.Loop483.exit:

	addq $-3, %rax

.main.Loop484:
	cmpb $0, (%rax)
	jz .main.Loop484.exit
	addb $-1, 0(%rax)
	addb $1, 3(%rax)
	jmp .main.Loop484
.main.Loop484.exit:

	addb $1, -1(%rax)
	addq $-10, %rax
	jmp .main.Loop485
.main.Loop485.exit:

	addq $9, %rax

.main.Loop486:
	cmpb $0, (%rax)
	jz .main.Loop486.exit
	addb $1, 1(%rax)
	addq $9, %rax
	jmp .main.Loop486
.main.Loop486.exit:

	addq $-9, %rax

.main.Loop487:
	cmpb $0, (%rax)
	jz .main.Loop487.exit
	addq $-9, %rax
	jmp .main.Loop487
.main.Loop487.exit:

	addq $9, %rax

.main.Loop498:
	cmpb $0, (%rax)
	jz .main.Loop498.exit
	addb $-1, 1(%rax)
	addq $6, %rax

.main.Loop488:
	cmpb $0, (%rax)
	jz .main.Loop488.exit
	addb $-1, 0(%rax)
	addb $1, -5(%rax)
	jmp .main.Loop488
.main.Loop488.exit:

	addq $-5, %rax

.main.Loop493:
	cmpb $0, (%rax)
	jz .main.Loop493.exit
	addb $-1, 0(%rax)
	addb $1, 5(%rax)
	addq $-1, %rax

.main.Loop491:
	cmpb $0, (%rax)
	jz .main.Loop491.exit
	addb $-1, 0(%rax)
	addq $3, %rax

.main.Loop489:
	cmpb $0, (%rax)
	jz .main.Loop489.exit
	addb $-1, 0(%rax)
	addb $1, -3(%rax)
	jmp .main.Loop489
.main.Loop489.exit:

	addq $-3, %rax

.main.Loop490:
	cmpb $0, (%rax)
	jz .main.Loop490.exit
	addb $-1, 0(%rax)
	addb $1, 3(%rax)
	addb $1, 4(%rax)
	jmp .main.Loop490
.main.Loop490.exit:

	addb $1, 0(%rax)
	addq $9, %rax
	jmp .main.Loop491
.main.Loop491.exit:

	addq $-8, %rax

.main.Loop492:
	cmpb $0, (%rax)
	jz .main.Loop492.exit
	addq $-9, %rax
	jmp .main.Loop492
.main.Loop492.exit:

	jmp .main.Loop493
.main.Loop493.exit:

	addq $9, %rax

.main.Loop494:
	cmpb $0, (%rax)
	jz .main.Loop494.exit
	addq $9, %rax
	jmp .main.Loop494
.main.Loop494.exit:

	addq $-9, %rax

.main.Loop496:
	cmpb $0, (%rax)
	jz .main.Loop496.exit
	addq $2, %rax

.main.Loop495:
	cmpb $0, (%rax)
	jz .main.Loop495.exit
	addb $-1, 0(%rax)
	addb $1, 9(%rax)
	jmp .main.Loop495
.main.Loop495.exit:

	addq $-11, %rax
	jmp .main.Loop496
.main.Loop496.exit:

	addq $2, %rax

.main.Loop497:
	cmpb $0, (%rax)
	jz .main.Loop497.exit
	addb $-1, 0(%rax)
	addb $1, 9(%rax)
	jmp .main.Loop497
.main.Loop497.exit:

	addb $1, -2(%rax)
	addq $6, %rax
	jmp .main.Loop498
.main.Loop498.exit:

	addq $-9, %rax

.main.Loop504:
	cmpb $0, (%rax)
	jz .main.Loop504.exit
	addq $1, %rax

.main.Loop499:
	cmpb $0, (%rax)
	jz .main.Loop499.exit
	addb $-1, 0(%rax)
	jmp .main.Loop499
.main.Loop499.exit:

	addb $-1, -1(%rax)
	addq $3, %rax

.main.Loop502:
	cmpb $0, (%rax)
	jz .main.Loop502.exit
	addb $-1, 0(%rax)
	addb $1, -4(%rax)
	addq $-3, %rax

.main.Loop500:
	cmpb $0, (%rax)
	jz .main.Loop500.exit
	addb $-1, -1(%rax)
	addb $-1, 0(%rax)
	addb $1, -6(%rax)
	jmp .main.Loop500
.main.Loop500.exit:

	addq $-1, %rax

.main.Loop501:
	cmpb $0, (%rax)
	jz .main.Loop501.exit
	addb $-1, 0(%rax)
	addb $1, 1(%rax)
	jmp .main.Loop501
.main.Loop501.exit:

	addq $4, %rax
	jmp .main.Loop502
.main.Loop502.exit:

	addq $-3, %rax

.main.Loop503:
	cmpb $0, (%rax)
	jz .main.Loop503.exit
	addb $-1, 0(%rax)
	addb $1, 3(%rax)
	jmp .main.Loop503
.main.Loop503.exit:

	addb $1, -1(%rax)
	addq $-10, %rax
	jmp .main.Loop504
.main.Loop504.exit:

	addq $9, %rax

.main.Loop506:
	cmpb $0, (%rax)
	jz .main.Loop506.exit
	addq $4, %rax

.main.Loop505:
	cmpb $0, (%rax)
	jz .main.Loop505.exit
	addb $-1, 0(%rax)
	addb $1, -36(%rax)
	jmp .main.Loop505
.main.Loop505.exit:

	addq $5, %rax
	jmp .main.Loop506
.main.Loop506.exit:

	addq $-9, %rax

.main.Loop507:
	cmpb $0, (%rax)
	jz .main.Loop507.exit
	addq $-9, %rax
	jmp .main.Loop507
.main.Loop507.exit:

	addb $15, 9(%rax)
	addq $9, %rax

.main.Loop510:
	cmpb $0, (%rax)
	jz .main.Loop510.exit

.main.Loop508:
	cmpb $0, (%rax)
	jz .main.Loop508.exit
	addq $9, %rax
	jmp .main.Loop508
.main.Loop508.exit:

	addb $-1, -9(%rax)
	addq $-18, %rax

.main.Loop509:
	cmpb $0, (%rax)
	jz .main.Loop509.exit
	addq $-9, %rax
	jmp .main.Loop509
.main.Loop509.exit:

	addb $-1, 9(%rax)
	addq $9, %rax
	jmp .main.Loop510
.main.Loop510.exit:

	addb $1, 0(%rax)
	addb $1, 21(%rax)
	addq $18, %rax

.main.Loop511:
	cmpb $0, (%rax)
	jz .main.Loop511.exit
	addq $-9, %rax
	jmp .main.Loop511
.main.Loop511.exit:

	addq $9, %rax

.main.Loop529:
	cmpb $0, (%rax)
	jz .main.Loop529.exit
	addq $3, %rax

.main.Loop512:
	cmpb $0, (%rax)
	jz .main.Loop512.exit
	addb $-1, 0(%rax)
	addb $-1, -3(%rax)
	jmp .main.Loop512
.main.Loop512.exit:

	addb $1, 0(%rax)
	addq $-3, %rax

.main.Loop518:
	cmpb $0, (%rax)
	jz .main.Loop518.exit
	addb $-1, 0(%rax)
	addb $-1, 3(%rax)
	addq $4, %rax

.main.Loop513:
	cmpb $0, (%rax)
	jz .main.Loop513.exit
	addb $-1, 0(%rax)
	addb $1, -4(%rax)
	jmp .main.Loop513
.main.Loop513.exit:

	addq $-4, %rax

.main.Loop517:
	cmpb $0, (%rax)
	jz .main.Loop517.exit
	addb $-1, 0(%rax)
	addb $1, 4(%rax)
	addq $-9, %rax

.main.Loop514:
	cmpb $0, (%rax)
	jz .main.Loop514.exit
	addq $-9, %rax
	jmp .main.Loop514
.main.Loop514.exit:

	addq $4, %rax

.main.Loop515:
	cmpb $0, (%rax)
	jz .main.Loop515.exit
	addb $-1, 0(%rax)
	jmp .main.Loop515
.main.Loop515.exit:

	addb $1, 0(%rax)
	addq $5, %rax

.main.Loop516:
	cmpb $0, (%rax)
	jz .main.Loop516.exit
	addq $9, %rax
	jmp .main.Loop516
.main.Loop516.exit:

	addb $1, 1(%rax)
	jmp .main.Loop517
.main.Loop517.exit:

	jmp .main.Loop518
.main.Loop518.exit:

	addb $1, 0(%rax)
	addq $4, %rax

.main.Loop519:
	cmpb $0, (%rax)
	jz .main.Loop519.exit
	addb $-1, 0(%rax)
	addb $-1, -4(%rax)
	jmp .main.Loop519
.main.Loop519.exit:

	addb $1, 0(%rax)
	addq $-4, %rax

.main.Loop526:
	cmpb $0, (%rax)
	jz .main.Loop526.exit
	addb $-1, 0(%rax)
	addb $-1, 4(%rax)
	addq $3, %rax

.main.Loop520:
	cmpb $0, (%rax)
	jz .main.Loop520.exit
	addb $-1, 0(%rax)
	addb $1, -3(%rax)
	jmp .main.Loop520
.main.Loop520.exit:

	addq $-3, %rax

.main.Loop525:
	cmpb $0, (%rax)
	jz .main.Loop525.exit
	addb $-1, 0(%rax)
	addb $1, 3(%rax)
	addq $-9, %rax

.main.Loop521:
	cmpb $0, (%rax)
	jz .main.Loop521.exit
	addq $-9, %rax
	jmp .main.Loop521
.main.Loop521.exit:

	addq $3, %rax

.main.Loop522:
	cmpb $0, (%rax)
	jz .main.Loop522.exit
	addb $-1, 0(%rax)
	jmp .main.Loop522
.main.Loop522.exit:

	addb $1, 0(%rax)
	addq $6, %rax

.main.Loop523:
	cmpb $0, (%rax)
	jz .main.Loop523.exit
	addq $9, %rax
	jmp .main.Loop523
.main.Loop523.exit:

	addq $1, %rax

.main.Loop524:
	cmpb $0, (%rax)
	jz .main.Loop524.exit
	addb $-1, 0(%rax)
	jmp .main.Loop524
.main.Loop524.exit:

	addb $1, 0(%rax)
	addq $-1, %rax
	jmp .main.Loop525
.main.Loop525.exit:

	jmp .main.Loop526
.main.Loop526.exit:

	addb $1, 0(%rax)
	addq $1, %rax

.main.Loop528:
	cmpb $0, (%rax)
	jz .main.Loop528.exit
	addb $-1, 0(%rax)
	addq $-1, %rax

.main.Loop527:
	cmpb $0, (%rax)
	jz .main.Loop527.exit
	addq $9, %rax
	jmp .main.Loop527
.main.Loop527.exit:

	addq $-8, %rax
	jmp .main.Loop528
.main.Loop528.exit:

	addq $8, %rax
	jmp .main.Loop529
.main.Loop529.exit:

	addq $-9, %rax

.main.Loop530:
	cmpb $0, (%rax)
	jz .main.Loop530.exit
	addq $-9, %rax
	jmp .main.Loop530
.main.Loop530.exit:

	addb $-1, 2(%rax)
	addq $4, %rax

.main.Loop531:
	cmpb $0, (%rax)
	jz .main.Loop531.exit
	addb $-1, 0(%rax)
	addb $1, -4(%rax)
	jmp .main.Loop531
.main.Loop531.exit:

	addq $-4, %rax

.main.Loop533:
	cmpb $0, (%rax)
	jz .main.Loop533.exit
	addb $-1, 0(%rax)
	addb $1, 4(%rax)
	addq $2, %rax

.main.Loop532:
	cmpb $0, (%rax)
	jz .main.Loop532.exit
	addb $-1, 0(%rax)
	jmp .main.Loop532
.main.Loop532.exit:

	addq $-2, %rax
	jmp .main.Loop533
.main.Loop533.exit:

	addq $2, %rax
	jmp .main.Loop534
.main.Loop534.exit:

	addb $1, -2(%rax)
	addq $2, %rax

.main.Loop535:
	cmpb $0, (%rax)
	jz .main.Loop535.exit
	addb $-1, 0(%rax)
	addb $-1, -4(%rax)
	jmp .main.Loop535
.main.Loop535.exit:

	addb $1, 0(%rax)
	addq $-4, %rax

.main.Loop536:
	cmpb $0, (%rax)
	jz .main.Loop536.exit
	addb $-1, 0(%rax)
	addb $-1, 4(%rax)
	addq $-2, %rax
	movzbq (%rax), %rdi
	pushq %rax
	callq __bf_print
	popq %rax
	addq $2, %rax
	jmp .main.Loop536
.main.Loop536.exit:

	addq $4, %rax

.main.Loop537:
	cmpb $0, (%rax)
	jz .main.Loop537.exit
	addb $-1, 0(%rax)
	addq $-7, %rax
	movzbq (%rax), %rdi
	pushq %rax
	callq __bf_print
	popq %rax
	addq $7, %rax
	jmp .main.Loop537
.main.Loop537.exit:

	addq $-3, %rax

.main.Loop538:
	cmpb $0, (%rax)
	jz .main.Loop538.exit
	addb $-1, 0(%rax)
	jmp .main.Loop538
.main.Loop538.exit:

	addq $1, %rax

.main.Loop539:
	cmpb $0, (%rax)
	jz .main.Loop539.exit
	addb $-1, 0(%rax)
	jmp .main.Loop539
.main.Loop539.exit:

	addq $1, %rax

.main.Loop540:
	cmpb $0, (%rax)
	jz .main.Loop540.exit
	addb $-1, 0(%rax)
	jmp .main.Loop540
.main.Loop540.exit:

	addq $1, %rax

.main.Loop541:
	cmpb $0, (%rax)
	jz .main.Loop541.exit
	addb $-1, 0(%rax)
	jmp .main.Loop541
.main.Loop541.exit:

	addq $1, %rax

.main.Loop542:
	cmpb $0, (%rax)
	jz .main.Loop542.exit
	addb $-1, 0(%rax)
	jmp .main.Loop542
.main.Loop542.exit:

	addq $1, %rax

.main.Loop543:
	cmpb $0, (%rax)
	jz .main.Loop543.exit
	addb $-1, 0(%rax)
	jmp .main.Loop543
.main.Loop543.exit:

	addq $3, %rax

.main.Loop550:
	cmpb $0, (%rax)
	jz .main.Loop550.exit
	addq $1, %rax

.main.Loop544:
	cmpb $0, (%rax)
	jz .main.Loop544.exit
	addb $-1, 0(%rax)
	jmp .main.Loop544
.main.Loop544.exit:

	addq $1, %rax

.main.Loop545:
	cmpb $0, (%rax)
	jz .main.Loop545.exit
	addb $-1, 0(%rax)
	jmp .main.Loop545
.main.Loop545.exit:

	addq $1, %rax

.main.Loop546:
	cmpb $0, (%rax)
	jz .main.Loop546.exit
	addb $-1, 0(%rax)
	jmp .main.Loop546
.main.Loop546.exit:

	addq $1, %rax

.main.Loop547:
	cmpb $0, (%rax)
	jz .main.Loop547.exit
	addb $-1, 0(%rax)
	jmp .main.Loop547
.main.Loop547.exit:

	addq $1, %rax

.main.Loop548:
	cmpb $0, (%rax)
	jz .main.Loop548.exit
	addb $-1, 0(%rax)
	jmp .main.Loop548
.main.Loop548.exit:

	addq $1, %rax

.main.Loop549:
	cmpb $0, (%rax)
	jz .main.Loop549.exit
	addb $-1, 0(%rax)
	jmp .main.Loop549
.main.Loop549.exit:

	addq $3, %rax
	jmp .main.Loop550
.main.Loop550.exit:

	addq $-9, %rax

.main.Loop551:
	cmpb $0, (%rax)
	jz .main.Loop551.exit
	addq $-9, %rax
	jmp .main.Loop551
.main.Loop551.exit:

	addq $9, %rax

.main.Loop553:
	cmpb $0, (%rax)
	jz .main.Loop553.exit
	addq $5, %rax

.main.Loop552:
	cmpb $0, (%rax)
	jz .main.Loop552.exit
	addb $-1, 0(%rax)
	jmp .main.Loop552
.main.Loop552.exit:

	addq $4, %rax
	jmp .main.Loop553
.main.Loop553.exit:

	addq $-9, %rax

.main.Loop554:
	cmpb $0, (%rax)
	jz .main.Loop554.exit
	addq $-9, %rax
	jmp .main.Loop554
.main.Loop554.exit:

	addb $11, 1(%rax)
	addq $1, %rax

.main.Loop556:
	cmpb $0, (%rax)
	jz .main.Loop556.exit
	addb $-1, 0(%rax)

.main.Loop555:
	cmpb $0, (%rax)
	jz .main.Loop555.exit
	addb $-1, 0(%rax)
	addb $1, 9(%rax)
	jmp .main.Loop555
.main.Loop555.exit:

	addq $9, %rax
	jmp .main.Loop556
.main.Loop556.exit:

	addb $1, 4(%rax)
	addb $1, 13(%rax)
	addq $-1, %rax

.main.Loop557:
	cmpb $0, (%rax)
	jz .main.Loop557.exit
	addq $-9, %rax
	jmp .main.Loop557
.main.Loop557.exit:

	addq $7, %rax

.main.Loop558:
	cmpb $0, (%rax)
	jz .main.Loop558.exit
	addb $-1, 0(%rax)
	addb $1, -7(%rax)
	jmp .main.Loop558
.main.Loop558.exit:

	addq $-7, %rax

.main.Loop566:
	cmpb $0, (%rax)
	jz .main.Loop566.exit
	addb $-1, 0(%rax)
	addb $1, 7(%rax)
	addq $7, %rax

.main.Loop559:
	cmpb $0, (%rax)
	jz .main.Loop559.exit
	addb $-1, 0(%rax)
	jmp .main.Loop559
.main.Loop559.exit:

	addq $2, %rax

.main.Loop560:
	cmpb $0, (%rax)
	jz .main.Loop560.exit
	addq $9, %rax
	jmp .main.Loop560
.main.Loop560.exit:

	addq $-9, %rax

.main.Loop565:
	cmpb $0, (%rax)
	jz .main.Loop565.exit
	addq $7, %rax

.main.Loop561:
	cmpb $0, (%rax)
	jz .main.Loop561.exit
	addb $-1, 0(%rax)
	addb $1, -6(%rax)
	jmp .main.Loop561
.main.Loop561.exit:

	addq $-6, %rax

.main.Loop564:
	cmpb $0, (%rax)
	jz .main.Loop564.exit
	addb $-1, 0(%rax)
	addb $1, 6(%rax)
	addq $-1, %rax

.main.Loop562:
	cmpb $0, (%rax)
	jz .main.Loop562.exit
	addq $-9, %rax
	jmp .main.Loop562
.main.Loop562.exit:

	addq $7, %rax

.main.Loop563:
	cmpb $0, (%rax)
	jz .main.Loop563.exit
	addb $-1, 0(%rax)
	jmp .main.Loop563
.main.Loop563.exit:

	addb $1, 0(%rax)
	addq $3, %rax
	jmp .main.Loop564
.main.Loop564.exit:

	addq $-10, %rax
	jmp .main.Loop565
.main.Loop565.exit:

	jmp .main.Loop566
.main.Loop566.exit:

	addq $7, %rax

.main.Loop567:
	cmpb $0, (%rax)
	jz .main.Loop567.exit
	addb $-1, 0(%rax)
	addb $1, -7(%rax)
	jmp .main.Loop567
.main.Loop567.exit:

	addq $-7, %rax

.main.Loop581:
	cmpb $0, (%rax)
	jz .main.Loop581.exit
	addb $-1, 0(%rax)
	addb $1, 7(%rax)
	addq $9, %rax

.main.Loop570:
	cmpb $0, (%rax)
	jz .main.Loop570.exit
	addb $1, 1(%rax)
	addq $5, %rax

.main.Loop568:
	cmpb $0, (%rax)
	jz .main.Loop568.exit
	addb $-1, 0(%rax)
	addb $-1, -4(%rax)
	jmp .main.Loop568
.main.Loop568.exit:

	addq $-4, %rax

.main.Loop569:
	cmpb $0, (%rax)
	jz .main.Loop569.exit
	addb $-1, 0(%rax)
	addb $1, 4(%rax)
	jmp .main.Loop569
.main.Loop569.exit:

	addq $8, %rax
	jmp .main.Loop570
.main.Loop570.exit:

	addb $1, -2(%rax)
	addq $-9, %rax

.main.Loop572:
	cmpb $0, (%rax)
	jz .main.Loop572.exit
	addq $5, %rax

.main.Loop571:
	cmpb $0, (%rax)
	jz .main.Loop571.exit
	addb $-1, 0(%rax)
	addb $1, 2(%rax)
	jmp .main.Loop571
.main.Loop571.exit:

	addq $-14, %rax
	jmp .main.Loop572
.main.Loop572.exit:

	addq $9, %rax

.main.Loop573:
	cmpb $0, (%rax)
	jz .main.Loop573.exit
	addq $9, %rax
	jmp .main.Loop573
.main.Loop573.exit:

	addq $-9, %rax

.main.Loop579:
	cmpb $0, (%rax)
	jz .main.Loop579.exit
	addq $1, %rax

.main.Loop574:
	cmpb $0, (%rax)
	jz .main.Loop574.exit
	addb $-1, 0(%rax)
	jmp .main.Loop574
.main.Loop574.exit:

	addb $-1, -1(%rax)
	addq $6, %rax

.main.Loop577:
	cmpb $0, (%rax)
	jz .main.Loop577.exit
	addb $-1, 0(%rax)
	addb $1, -7(%rax)
	addq $-6, %rax

.main.Loop575:
	cmpb $0, (%rax)
	jz .main.Loop575.exit
	addb $-1, -1(%rax)
	addb $-1, 0(%rax)
	addb $1, -3(%rax)
	jmp .main.Loop575
.main.Loop575.exit:

	addq $-1, %rax

.main.Loop576:
	cmpb $0, (%rax)
	jz .main.Loop576.exit
	addb $-1, 0(%rax)
	addb $1, 1(%rax)
	jmp .main.Loop576
.main.Loop576.exit:

	addq $7, %rax
	jmp .main.Loop577
.main.Loop577.exit:

	addq $-6, %rax

.main.Loop578:
	cmpb $0, (%rax)
	jz .main.Loop578.exit
	addb $-1, 0(%rax)
	addb $1, 6(%rax)
	jmp .main.Loop578
.main.Loop578.exit:

	addb $1, -1(%rax)
	addq $-10, %rax
	jmp .main.Loop579
.main.Loop579.exit:

	addb $-1, 7(%rax)
	addq $3, %rax

.main.Loop580:
	cmpb $0, (%rax)
	jz .main.Loop580.exit
	addb $-1, 0(%rax)
	jmp .main.Loop580
.main.Loop580.exit:

	addb $1, 0(%rax)
	addq $-3, %rax
	jmp .main.Loop581
.main.Loop581.exit:

	addb $1, 0(%rax)
	addq $7, %rax

.main.Loop582:
	cmpb $0, (%rax)
	jz .main.Loop582.exit
	addb $-1, 0(%rax)
	addb $-1, -7(%rax)
	jmp .main.Loop582
.main.Loop582.exit:

	addb $1, 0(%rax)
	addq $-7, %rax

.main.Loop617:
	cmpb $0, (%rax)
	jz .main.Loop617.exit
	addb $-1, 0(%rax)
	addb $-1, 7(%rax)
	addq $9, %rax

.main.Loop584:
	cmpb $0, (%rax)
	jz .main.Loop584.exit
	addq $5, %rax

.main.Loop583:
	cmpb $0, (%rax)
	jz .main.Loop583.exit
	addb $-1, 0(%rax)
	addb $1, 2(%rax)
	jmp .main.Loop583
.main.Loop583.exit:

	addq $4, %rax
	jmp .main.Loop584
.main.Loop584.exit:

	addq $-9, %rax

.main.Loop590:
	cmpb $0, (%rax)
	jz .main.Loop590.exit
	addq $1, %rax

.main.Loop585:
	cmpb $0, (%rax)
	jz .main.Loop585.exit
	addb $-1, 0(%rax)
	jmp .main.Loop585
.main.Loop585.exit:

	addb $-1, -1(%rax)
	addq $6, %rax

.main.Loop588:
	cmpb $0, (%rax)
	jz .main.Loop588.exit
	addb $-1, 0(%rax)
	addb $1, -7(%rax)
	addq $-6, %rax

.main.Loop586:
	cmpb $0, (%rax)
	jz .main.Loop586.exit
	addb $-1, -1(%rax)
	addb $-1, 0(%rax)
	addb $1, -3(%rax)
	jmp .main.Loop586
.main.Loop586.exit:

	addq $-1, %rax

.main.Loop587:
	cmpb $0, (%rax)
	jz .main.Loop587.exit
	addb $-1, 0(%rax)
	addb $1, 1(%rax)
	jmp .main.Loop587
.main.Loop587.exit:

	addq $7, %rax
	jmp .main.Loop588
.main.Loop588.exit:

	addq $-6, %rax

.main.Loop589:
	cmpb $0, (%rax)
	jz .main.Loop589.exit
	addb $-1, 0(%rax)
	addb $1, 6(%rax)
	jmp .main.Loop589
.main.Loop589.exit:

	addb $1, -1(%rax)
	addq $-10, %rax
	jmp .main.Loop590
.main.Loop590.exit:

	addb $5, 1(%rax)
	addq $1, %rax

.main.Loop592:
	cmpb $0, (%rax)
	jz .main.Loop592.exit
	addb $-1, 0(%rax)

.main.Loop591:
	cmpb $0, (%rax)
	jz .main.Loop591.exit
	addb $-1, 0(%rax)
	addb $1, 9(%rax)
	jmp .main.Loop591
.main.Loop591.exit:

	addq $9, %rax
	jmp .main.Loop592
.main.Loop592.exit:

	addb $1, 4(%rax)
	addq $-1, %rax

.main.Loop593:
	cmpb $0, (%rax)
	jz .main.Loop593.exit
	addq $-9, %rax
	jmp .main.Loop593
.main.Loop593.exit:

	addq $9, %rax

.main.Loop611:
	cmpb $0, (%rax)
	jz .main.Loop611.exit
	addq $5, %rax

.main.Loop594:
	cmpb $0, (%rax)
	jz .main.Loop594.exit
	addb $-1, 0(%rax)
	addb $-1, -5(%rax)
	jmp .main.Loop594
.main.Loop594.exit:

	addb $1, 0(%rax)
	addq $-5, %rax

.main.Loop600:
	cmpb $0, (%rax)
	jz .main.Loop600.exit
	addb $-1, 0(%rax)
	addb $-1, 5(%rax)
	addq $7, %rax

.main.Loop595:
	cmpb $0, (%rax)
	jz .main.Loop595.exit
	addb $-1, 0(%rax)
	addb $1, -7(%rax)
	jmp .main.Loop595
.main.Loop595.exit:

	addq $-7, %rax

.main.Loop599:
	cmpb $0, (%rax)
	jz .main.Loop599.exit
	addb $-1, 0(%rax)
	addb $1, 7(%rax)
	addq $-9, %rax

.main.Loop596:
	cmpb $0, (%rax)
	jz .main.Loop596.exit
	addq $-9, %rax
	jmp .main.Loop596
.main.Loop596.exit:

	addq $4, %rax

.main.Loop597:
	cmpb $0, (%rax)
	jz .main.Loop597.exit
	addb $-1, 0(%rax)
	jmp .main.Loop597
.main.Loop597.exit:

	addb $1, 0(%rax)
	addq $5, %rax

.main.Loop598:
	cmpb $0, (%rax)
	jz .main.Loop598.exit
	addq $9, %rax
	jmp .main.Loop598
.main.Loop598.exit:

	addb $1, 1(%rax)
	jmp .main.Loop599
.main.Loop599.exit:

	jmp .main.Loop600
.main.Loop600.exit:

	addb $1, 0(%rax)
	addq $7, %rax

.main.Loop601:
	cmpb $0, (%rax)
	jz .main.Loop601.exit
	addb $-1, 0(%rax)
	addb $-1, -7(%rax)
	jmp .main.Loop601
.main.Loop601.exit:

	addb $1, 0(%rax)
	addq $-7, %rax

.main.Loop608:
	cmpb $0, (%rax)
	jz .main.Loop608.exit
	addb $-1, 0(%rax)
	addb $-1, 7(%rax)
	addq $5, %rax

.main.Loop602:
	cmpb $0, (%rax)
	jz .main.Loop602.exit
	addb $-1, 0(%rax)
	addb $1, -5(%rax)
	jmp .main.Loop602
.main.Loop602.exit:

	addq $-5, %rax

.main.Loop607:
	cmpb $0, (%rax)
	jz .main.Loop607.exit
	addb $-1, 0(%rax)
	addb $1, 5(%rax)
	addq $-9, %rax

.main.Loop603:
	cmpb $0, (%rax)
	jz .main.Loop603.exit
	addq $-9, %rax
	jmp .main.Loop603
.main.Loop603.exit:

	addq $3, %rax

.main.Loop604:
	cmpb $0, (%rax)
	jz .main.Loop604.exit
	addb $-1, 0(%rax)
	jmp .main.Loop604
.main.Loop604.exit:

	addb $1, 0(%rax)
	addq $6, %rax

.main.Loop605:
	cmpb $0, (%rax)
	jz .main.Loop605.exit
	addq $9, %rax
	jmp .main.Loop605
.main.Loop605.exit:

	addq $1, %rax

.main.Loop606:
	cmpb $0, (%rax)
	jz .main.Loop606.exit
	addb $-1, 0(%rax)
	jmp .main.Loop606
.main.Loop606.exit:

	addb $1, 0(%rax)
	addq $-1, %rax
	jmp .main.Loop607
.main.Loop607.exit:

	jmp .main.Loop608
.main.Loop608.exit:

	addb $1, 0(%rax)
	addq $1, %rax

.main.Loop610:
	cmpb $0, (%rax)
	jz .main.Loop610.exit
	addb $-1, 0(%rax)
	addq $-1, %rax

.main.Loop609:
	cmpb $0, (%rax)
	jz .main.Loop609.exit
	addq $9, %rax
	jmp .main.Loop609
.main.Loop609.exit:

	addq $-8, %rax
	jmp .main.Loop610
.main.Loop610.exit:

	addq $8, %rax
	jmp .main.Loop611
.main.Loop611.exit:

	addq $-9, %rax

.main.Loop612:
	cmpb $0, (%rax)
	jz .main.Loop612.exit
	addq $-9, %rax
	jmp .main.Loop612
.main.Loop612.exit:

	addq $4, %rax

.main.Loop613:
	cmpb $0, (%rax)
	jz .main.Loop613.exit
	addb $-1, 0(%rax)
	jmp .main.Loop613
.main.Loop613.exit:

	addb $5, -3(%rax)
	addq $-3, %rax

.main.Loop615:
	cmpb $0, (%rax)
	jz .main.Loop615.exit
	addb $-1, 0(%rax)

.main.Loop614:
	cmpb $0, (%rax)
	jz .main.Loop614.exit
	addb $-1, 0(%rax)
	addb $1, 9(%rax)
	jmp .main.Loop614
.main.Loop614.exit:

	addq $9, %rax
	jmp .main.Loop615
.main.Loop615.exit:

	addb $-1, 4(%rax)
	addq $-1, %rax

.main.Loop616:
	cmpb $0, (%rax)
	jz .main.Loop616.exit
	addq $-9, %rax
	jmp .main.Loop616
.main.Loop616.exit:

	jmp .main.Loop617
.main.Loop617.exit:

	addq $3, %rax
	jmp .main.Loop618
.main.Loop618.exit:

	addq $-4, %rax
	movzbq (%rax), %rdi
	pushq %rax
	callq __bf_print
	popq %rax
	addq $10, %rax

.main.Loop620:
	cmpb $0, (%rax)
	jz .main.Loop620.exit
	addq $6, %rax

.main.Loop619:
	cmpb $0, (%rax)
	jz .main.Loop619.exit
	addb $-1, 0(%rax)
	jmp .main.Loop619
.main.Loop619.exit:

	addq $3, %rax
	jmp .main.Loop620
.main.Loop620.exit:

	addq $-9, %rax

.main.Loop621:
	cmpb $0, (%rax)
	jz .main.Loop621.exit
	addq $-9, %rax
	jmp .main.Loop621
.main.Loop621.exit:

	addb $10, 1(%rax)
	addq $1, %rax

.main.Loop623:
	cmpb $0, (%rax)
	jz .main.Loop623.exit
	addb $-1, 0(%rax)

.main.Loop622:
	cmpb $0, (%rax)
	jz .main.Loop622.exit
	addb $-1, 0(%rax)
	addb $1, 9(%rax)
	jmp .main.Loop622
.main.Loop622.exit:

	addq $9, %rax
	jmp .main.Loop623
.main.Loop623.exit:

	addb $1, 5(%rax)
	addb $1, 14(%rax)
	addq $-1, %rax

.main.Loop624:
	cmpb $0, (%rax)
	jz .main.Loop624.exit
	addq $-9, %rax
	jmp .main.Loop624
.main.Loop624.exit:

	addq $8, %rax

.main.Loop625:
	cmpb $0, (%rax)
	jz .main.Loop625.exit
	addb $-1, 0(%rax)
	addb $1, -8(%rax)
	jmp .main.Loop625
.main.Loop625.exit:

	addq $-8, %rax

.main.Loop633:
	cmpb $0, (%rax)
	jz .main.Loop633.exit
	addb $-1, 0(%rax)
	addb $1, 8(%rax)
	addq $8, %rax

.main.Loop626:
	cmpb $0, (%rax)
	jz .main.Loop626.exit
	addb $-1, 0(%rax)
	jmp .main.Loop626
.main.Loop626.exit:

	addq $1, %rax

.main.Loop627:
	cmpb $0, (%rax)
	jz .main.Loop627.exit
	addq $9, %rax
	jmp .main.Loop627
.main.Loop627.exit:

	addq $-9, %rax

.main.Loop632:
	cmpb $0, (%rax)
	jz .main.Loop632.exit
	addq $8, %rax

.main.Loop628:
	cmpb $0, (%rax)
	jz .main.Loop628.exit
	addb $-1, 0(%rax)
	addb $1, -7(%rax)
	jmp .main.Loop628
.main.Loop628.exit:

	addq $-7, %rax

.main.Loop631:
	cmpb $0, (%rax)
	jz .main.Loop631.exit
	addb $-1, 0(%rax)
	addb $1, 7(%rax)
	addq $-1, %rax

.main.Loop629:
	cmpb $0, (%rax)
	jz .main.Loop629.exit
	addq $-9, %rax
	jmp .main.Loop629
.main.Loop629.exit:

	addq $8, %rax

.main.Loop630:
	cmpb $0, (%rax)
	jz .main.Loop630.exit
	addb $-1, 0(%rax)
	jmp .main.Loop630
.main.Loop630.exit:

	addb $1, 0(%rax)
	addq $2, %rax
	jmp .main.Loop631
.main.Loop631.exit:

	addq $-10, %rax
	jmp .main.Loop632
.main.Loop632.exit:

	jmp .main.Loop633
.main.Loop633.exit:

	addq $8, %rax

.main.Loop634:
	cmpb $0, (%rax)
	jz .main.Loop634.exit
	addb $-1, 0(%rax)
	addb $1, -8(%rax)
	jmp .main.Loop634
.main.Loop634.exit:

	addq $-8, %rax

.main.Loop648:
	cmpb $0, (%rax)
	jz .main.Loop648.exit
	addb $-1, 0(%rax)
	addb $1, 8(%rax)
	addq $9, %rax

.main.Loop637:
	cmpb $0, (%rax)
	jz .main.Loop637.exit
	addb $1, 1(%rax)
	addq $6, %rax

.main.Loop635:
	cmpb $0, (%rax)
	jz .main.Loop635.exit
	addb $-1, 0(%rax)
	addb $-1, -5(%rax)
	jmp .main.Loop635
.main.Loop635.exit:

	addq $-5, %rax

.main.Loop636:
	cmpb $0, (%rax)
	jz .main.Loop636.exit
	addb $-1, 0(%rax)
	addb $1, 5(%rax)
	jmp .main.Loop636
.main.Loop636.exit:

	addq $8, %rax
	jmp .main.Loop637
.main.Loop637.exit:

	addb $1, -1(%rax)
	addq $-9, %rax

.main.Loop639:
	cmpb $0, (%rax)
	jz .main.Loop639.exit
	addq $6, %rax

.main.Loop638:
	cmpb $0, (%rax)
	jz .main.Loop638.exit
	addb $-1, 0(%rax)
	addb $1, 2(%rax)
	jmp .main.Loop638
.main.Loop638.exit:

	addq $-15, %rax
	jmp .main.Loop639
.main.Loop639.exit:

	addq $9, %rax

.main.Loop640:
	cmpb $0, (%rax)
	jz .main.Loop640.exit
	addq $9, %rax
	jmp .main.Loop640
.main.Loop640.exit:

	addq $-9, %rax

.main.Loop646:
	cmpb $0, (%rax)
	jz .main.Loop646.exit
	addq $1, %rax

.main.Loop641:
	cmpb $0, (%rax)
	jz .main.Loop641.exit
	addb $-1, 0(%rax)
	jmp .main.Loop641
.main.Loop641.exit:

	addb $-1, -1(%rax)
	addq $7, %rax

.main.Loop644:
	cmpb $0, (%rax)
	jz .main.Loop644.exit
	addb $-1, 0(%rax)
	addb $1, -8(%rax)
	addq $-7, %rax

.main.Loop642:
	cmpb $0, (%rax)
	jz .main.Loop642.exit
	addb $-1, -1(%rax)
	addb $-1, 0(%rax)
	addb $1, -2(%rax)
	jmp .main.Loop642
.main.Loop642.exit:

	addq $-1, %rax

.main.Loop643:
	cmpb $0, (%rax)
	jz .main.Loop643.exit
	addb $-1, 0(%rax)
	addb $1, 1(%rax)
	jmp .main.Loop643
.main.Loop643.exit:

	addq $8, %rax
	jmp .main.Loop644
.main.Loop644.exit:

	addq $-7, %rax

.main.Loop645:
	cmpb $0, (%rax)
	jz .main.Loop645.exit
	addb $-1, 0(%rax)
	addb $1, 7(%rax)
	jmp .main.Loop645
.main.Loop645.exit:

	addb $1, -1(%rax)
	addq $-10, %rax
	jmp .main.Loop646
.main.Loop646.exit:

	addb $-1, 8(%rax)
	addq $3, %rax

.main.Loop647:
	cmpb $0, (%rax)
	jz .main.Loop647.exit
	addb $-1, 0(%rax)
	jmp .main.Loop647
.main.Loop647.exit:

	addb $1, 0(%rax)
	addq $-3, %rax
	jmp .main.Loop648
.main.Loop648.exit:

	addb $1, 0(%rax)
	addq $8, %rax

.main.Loop649:
	cmpb $0, (%rax)
	jz .main.Loop649.exit
	addb $-1, 0(%rax)
	addb $-1, -8(%rax)
	jmp .main.Loop649
.main.Loop649.exit:

	addb $1, 0(%rax)
	addq $-8, %rax

.main.Loop684:
	cmpb $0, (%rax)
	jz .main.Loop684.exit
	addb $-1, 0(%rax)
	addb $-1, 8(%rax)
	addq $9, %rax

.main.Loop651:
	cmpb $0, (%rax)
	jz .main.Loop651.exit
	addq $6, %rax

.main.Loop650:
	cmpb $0, (%rax)
	jz .main.Loop650.exit
	addb $-1, 0(%rax)
	addb $1, 2(%rax)
	jmp .main.Loop650
.main.Loop650.exit:

	addq $3, %rax
	jmp .main.Loop651
.main.Loop651.exit:

	addq $-9, %rax

.main.Loop657:
	cmpb $0, (%rax)
	jz .main.Loop657.exit
	addq $1, %rax

.main.Loop652:
	cmpb $0, (%rax)
	jz .main.Loop652.exit
	addb $-1, 0(%rax)
	jmp .main.Loop652
.main.Loop652.exit:

	addb $-1, -1(%rax)
	addq $7, %rax

.main.Loop655:
	cmpb $0, (%rax)
	jz .main.Loop655.exit
	addb $-1, 0(%rax)
	addb $1, -8(%rax)
	addq $-7, %rax

.main.Loop653:
	cmpb $0, (%rax)
	jz .main.Loop653.exit
	addb $-1, -1(%rax)
	addb $-1, 0(%rax)
	addb $1, -2(%rax)
	jmp .main.Loop653
.main.Loop653.exit:

	addq $-1, %rax

.main.Loop654:
	cmpb $0, (%rax)
	jz .main.Loop654.exit
	addb $-1, 0(%rax)
	addb $1, 1(%rax)
	jmp .main.Loop654
.main.Loop654.exit:

	addq $8, %rax
	jmp .main.Loop655
.main.Loop655.exit:

	addq $-7, %rax

.main.Loop656:
	cmpb $0, (%rax)
	jz .main.Loop656.exit
	addb $-1, 0(%rax)
	addb $1, 7(%rax)
	jmp .main.Loop656
.main.Loop656.exit:

	addb $1, -1(%rax)
	addq $-10, %rax
	jmp .main.Loop657
.main.Loop657.exit:

	addb $5, 1(%rax)
	addq $1, %rax

.main.Loop659:
	cmpb $0, (%rax)
	jz .main.Loop659.exit
	addb $-1, 0(%rax)

.main.Loop658:
	cmpb $0, (%rax)
	jz .main.Loop658.exit
	addb $-1, 0(%rax)
	addb $1, 9(%rax)
	jmp .main.Loop658
.main.Loop658.exit:

	addq $9, %rax
	jmp .main.Loop659
.main.Loop659.exit:

	addb $1, 5(%rax)
	addb $1, 32(%rax)
	addq $26, %rax

.main.Loop660:
	cmpb $0, (%rax)
	jz .main.Loop660.exit
	addq $-9, %rax
	jmp .main.Loop660
.main.Loop660.exit:

	addq $9, %rax

.main.Loop678:
	cmpb $0, (%rax)
	jz .main.Loop678.exit
	addq $6, %rax

.main.Loop661:
	cmpb $0, (%rax)
	jz .main.Loop661.exit
	addb $-1, 0(%rax)
	addb $-1, -6(%rax)
	jmp .main.Loop661
.main.Loop661.exit:

	addb $1, 0(%rax)
	addq $-6, %rax

.main.Loop667:
	cmpb $0, (%rax)
	jz .main.Loop667.exit
	addb $-1, 0(%rax)
	addb $-1, 6(%rax)
	addq $8, %rax

.main.Loop662:
	cmpb $0, (%rax)
	jz .main.Loop662.exit
	addb $-1, 0(%rax)
	addb $1, -8(%rax)
	jmp .main.Loop662
.main.Loop662.exit:

	addq $-8, %rax

.main.Loop666:
	cmpb $0, (%rax)
	jz .main.Loop666.exit
	addb $-1, 0(%rax)
	addb $1, 8(%rax)
	addq $-9, %rax

.main.Loop663:
	cmpb $0, (%rax)
	jz .main.Loop663.exit
	addq $-9, %rax
	jmp .main.Loop663
.main.Loop663.exit:

	addq $4, %rax

.main.Loop664:
	cmpb $0, (%rax)
	jz .main.Loop664.exit
	addb $-1, 0(%rax)
	jmp .main.Loop664
.main.Loop664.exit:

	addb $1, 0(%rax)
	addq $5, %rax

.main.Loop665:
	cmpb $0, (%rax)
	jz .main.Loop665.exit
	addq $9, %rax
	jmp .main.Loop665
.main.Loop665.exit:

	addb $1, 1(%rax)
	jmp .main.Loop666
.main.Loop666.exit:

	jmp .main.Loop667
.main.Loop667.exit:

	addb $1, 0(%rax)
	addq $8, %rax

.main.Loop668:
	cmpb $0, (%rax)
	jz .main.Loop668.exit
	addb $-1, 0(%rax)
	addb $-1, -8(%rax)
	jmp .main.Loop668
.main.Loop668.exit:

	addb $1, 0(%rax)
	addq $-8, %rax

.main.Loop675:
	cmpb $0, (%rax)
	jz .main.Loop675.exit
	addb $-1, 0(%rax)
	addb $-1, 8(%rax)
	addq $6, %rax

.main.Loop669:
	cmpb $0, (%rax)
	jz .main.Loop669.exit
	addb $-1, 0(%rax)
	addb $1, -6(%rax)
	jmp .main.Loop669
.main.Loop669.exit:

	addq $-6, %rax

.main.Loop674:
	cmpb $0, (%rax)
	jz .main.Loop674.exit
	addb $-1, 0(%rax)
	addb $1, 6(%rax)
	addq $-9, %rax

.main.Loop670:
	cmpb $0, (%rax)
	jz .main.Loop670.exit
	addq $-9, %rax
	jmp .main.Loop670
.main.Loop670.exit:

	addq $3, %rax

.main.Loop671:
	cmpb $0, (%rax)
	jz .main.Loop671.exit
	addb $-1, 0(%rax)
	jmp .main.Loop671
.main.Loop671.exit:

	addb $1, 0(%rax)
	addq $6, %rax

.main.Loop672:
	cmpb $0, (%rax)
	jz .main.Loop672.exit
	addq $9, %rax
	jmp .main.Loop672
.main.Loop672.exit:

	addq $1, %rax

.main.Loop673:
	cmpb $0, (%rax)
	jz .main.Loop673.exit
	addb $-1, 0(%rax)
	jmp .main.Loop673
.main.Loop673.exit:

	addb $1, 0(%rax)
	addq $-1, %rax
	jmp .main.Loop674
.main.Loop674.exit:

	jmp .main.Loop675
.main.Loop675.exit:

	addb $1, 0(%rax)
	addq $1, %rax

.main.Loop677:
	cmpb $0, (%rax)
	jz .main.Loop677.exit
	addb $-1, 0(%rax)
	addq $-1, %rax

.main.Loop676:
	cmpb $0, (%rax)
	jz .main.Loop676.exit
	addq $9, %rax
	jmp .main.Loop676
.main.Loop676.exit:

	addq $-8, %rax
	jmp .main.Loop677
.main.Loop677.exit:

	addq $8, %rax
	jmp .main.Loop678
.main.Loop678.exit:

	addq $-9, %rax

.main.Loop679:
	cmpb $0, (%rax)
	jz .main.Loop679.exit
	addq $-9, %rax
	jmp .main.Loop679
.main.Loop679.exit:

	addq $4, %rax

.main.Loop680:
	cmpb $0, (%rax)
	jz .main.Loop680.exit
	addb $-1, 0(%rax)
	jmp .main.Loop680
.main.Loop680.exit:

	addb $5, -3(%rax)
	addq $-3, %rax

.main.Loop682:
	cmpb $0, (%rax)
	jz .main.Loop682.exit
	addb $-1, 0(%rax)

.main.Loop681:
	cmpb $0, (%rax)
	jz .main.Loop681.exit
	addb $-1, 0(%rax)
	addb $1, 9(%rax)
	jmp .main.Loop681
.main.Loop681.exit:

	addq $9, %rax
	jmp .main.Loop682
.main.Loop682.exit:

	addb $-1, 5(%rax)
	addb $-1, 32(%rax)
	addq $26, %rax

.main.Loop683:
	cmpb $0, (%rax)
	jz .main.Loop683.exit
	addq $-9, %rax
	jmp .main.Loop683
.main.Loop683.exit:

	jmp .main.Loop684
.main.Loop684.exit:

	addq $3, %rax
	jmp .main.Loop685
.main.Loop685.exit:

.main.Lexit:
	xorq %rax, %rax
	movq %rbp, %rsp
	popq %rbp
	retq
