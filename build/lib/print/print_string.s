;;; gcc for m6809 : Mar 17 2019 13:25:32
;;; 4.3.6 (gcc6809)
;;; ABI version 1
;;; -mabi=bx -mint8 -fomit-frame-pointer -O0
	.module	print_string.c
	.area	.text
	.globl	_print_string
_print_string:
	leas	-9,s
	stb	2,s
	stx	,s
	ldb	2,s
	stb	4,s
	ldb	11,s
	stb	3,s
	jsr	___Reset0Ref
	ldb	#127
	stb	*_dp_VIA_t1_cnt_lo
	ldb	4,s
	stb	6,s
	ldb	3,s
	stb	5,s
	ldb	6,s
	stb	,-s
	ldb	6,s
	jsr	__Moveto_d
	leas	1,s
	ldx	,s
	stx	7,s
	ldx	7,s
	jsr	__Print_Str
	leas	9,s
	rts
