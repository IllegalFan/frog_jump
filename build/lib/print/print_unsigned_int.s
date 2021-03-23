;;; gcc for m6809 : Mar 17 2019 13:25:32
;;; 4.3.6 (gcc6809)
;;; ABI version 1
;;; -mabi=bx -mint8 -fomit-frame-pointer -O0
	.module	print_unsigned_int.c
	.area	.text
	.globl	_print_unsigned_int
_print_unsigned_int:
	leas	-15,s
	stb	5,s
	ldb	#-128
	stb	9,s
	ldb	#2
	stb	10,s
L2:
	ldb	10,s
	stb	3,s
	ldb	18,s
	clra		;zero_extendqihi: R:b -> R:d
	std	,s
	ldx	#10
	pshs	x
	ldx	2,s
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
	leax	6,s
	exg	d,x
	addd	,s; addhi3,3
	exg	d,x
	ldb	4,s
	stb	,x
	dec	10,s
	ldb	18,s
	clra		;zero_extendqihi: R:b -> R:d
	std	,s
	ldx	#10
	pshs	x
	ldx	2,s
	jsr	_udivhi3
	leas	2,s
	tfr	x,d
	stb	18,s	;movlsbqihi: R:d -> 18,s
	ldb	10,s
	cmpb	#-1	;cmpqi:
	bne	L2
	ldb	5,s
	stb	12,s
	ldb	17,s
	stb	11,s
	jsr	___Reset0Ref
	ldb	#127
	stb	*_dp_VIA_t1_cnt_lo
	ldb	12,s
	stb	14,s
	ldb	11,s
	stb	13,s
	ldb	14,s
	stb	,-s
	ldb	14,s
	jsr	__Moveto_d
	leas	1,s
	leax	6,s
	jsr	__Print_Str
	leas	15,s
	rts
