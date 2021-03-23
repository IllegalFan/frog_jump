;;; gcc for m6809 : Mar 17 2019 13:25:32
;;; 4.3.6 (gcc6809)
;;; ABI version 1
;;; -mabi=bx -mint8 -fomit-frame-pointer -O0
	.module	main.c
	.area	.text
LC0:
	.byte	72,69,76,76,79,32,87,79
	.byte	82,76,68,-128,0
	.globl	_main
_main:
	leas	-1,s
	ldb	#-1
	stb	,s
L2:
	jsr	___Wait_Recal
	jsr	___Intensity_5F
	jsr	___Reset0Ref
	ldb	#20
	stb	,-s
	ldx	#LC0
	ldb	#-80
	jsr	__Print_Str_d
	leas	1,s
	tst	,s
	bne	L2
	ldb	,s
	leas	1,s
	rts
