;;; gcc for m6809 : Mar 17 2019 13:25:32
;;; 4.3.6 (gcc6809)
;;; ABI version 1
;;; -mabi=bx -mint8 -fomit-frame-pointer -O0
	.module	print_signed_int.c
	.area	.text
	.globl	_print_signed_int
_print_signed_int:
	leas	-19,s
	stb	7,s
	tst	22,s
	bge	L2
	ldb	#45
	stb	3,s
	bra	L3
L2:
	ldb	#43
	stb	3,s
L3:
	ldb	3,s
	stb	8,s
	ldb	#-128
	stb	12,s
	ldb	#3
	stb	13,s
	tst	22,s
	bge	L4
	ldb	22,s
	stb	2,s
	ldb	2,s
	negb
	stb	4,s
	bra	L5
L4:
	ldb	22,s
	stb	4,s
L5:
	ldb	4,s
	stb	14,s
L6:
	ldb	13,s
	stb	5,s
	ldb	14,s
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
	stb	6,s
	ldb	5,s
	clra		;zero_extendqihi: R:b -> R:d
	std	,s
	leax	8,s
	exg	d,x
	addd	,s; addhi3,3
	exg	d,x
	ldb	6,s
	stb	,x
	dec	13,s
	ldb	14,s
	clra		;zero_extendqihi: R:b -> R:d
	std	,s
	ldx	#10
	pshs	x
	ldx	2,s
	jsr	_udivhi3
	leas	2,s
	tfr	x,d
	stb	14,s	;movlsbqihi: R:d -> 14,s
	tst	13,s
	bne	L6
	ldb	7,s
	stb	16,s
	ldb	21,s
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
	rts
