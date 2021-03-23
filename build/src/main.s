;;; gcc for m6809 : Mar 17 2019 13:25:32
;;; 4.3.6 (gcc6809)
;;; ABI version 1
;;; -mabi=bx -mint8 -fomit-frame-pointer -O0
	.module	main.c
	.area	.text
	.globl	_main
_main:
	leas	-1,s
L2:
	jsr	_game
	stb	,s
	tst	,s
	bne	L2
	ldb	,s
	leas	1,s
	rts
