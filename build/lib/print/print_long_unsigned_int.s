;;; gcc for m6809 : Mar 17 2019 13:25:32
;;; 4.3.6 (gcc6809)
;;; ABI version 1
;;; -mabi=bx -mint8 -fomit-frame-pointer -O0
	.module	print_long_unsigned_int.c
	.area	.text
	.globl	_print_long_unsigned_int
_print_long_unsigned_int:
	pshs	y
	leas	-19,s
	stb	7,s
	stx	5,s
	ldb	#-128
	stb	13,s
	ldb	#4
	stb	14,s
L2:
	ldb	14,s
	stb	3,s
	ldy	5,s
	ldx	#10
	pshs	x
	leax	,y
	jsr	_umodhi3
	leas	2,s
	tfr	x,d	;movlsbqihi: R:x -> R:b
	stb	2,s
	ldb	2,s
	addb	#48
	stb	4,s
	ldb	3,s
	clra		;zero_extendqihi: R:b -> R:d
	std	,s
	leax	8,s
	exg	d,x
	addd	,s; addhi3,3
	exg	d,x
	ldb	4,s
	stb	,x
	dec	14,s
	ldy	5,s
	ldx	#10
	pshs	x
	leax	,y
	jsr	_udivhi3
	leas	2,s
	stx	5,s
	ldb	14,s
	cmpb	#-1	;cmpqi:
	bne	L2
	ldb	7,s
	stb	16,s
	ldb	23,s
	stb	15,s
	jsr	___Reset0Ref
	ldb	#127
	stb	*_dp_VIA_t1_cnt_lo
	ldb	16,s
	stb	18,s
	ldb	15,s
	stb	17,s
	ldb	18,s
	stb	,-s
	ldb	18,s
	jsr	__Moveto_d
	leas	1,s
	leax	8,s
	jsr	__Print_Str
	leas	19,s
	puls	y,pc
