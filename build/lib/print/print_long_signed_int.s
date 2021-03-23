;;; gcc for m6809 : Mar 17 2019 13:25:32
;;; 4.3.6 (gcc6809)
;;; ABI version 1
;;; -mabi=bx -mint8 -fomit-frame-pointer -O0
	.module	print_long_signed_int.c
	.area	.text
	.globl	_print_long_signed_int
_print_long_signed_int:
	pshs	y
	leas	-25,s
	stb	10,s
	stx	8,s
	ldx	8,s
	cmpx	#0
	bge	L2
	ldb	#45
	stb	3,s
	bra	L3
L2:
	ldb	#43
	stb	3,s
L3:
	ldb	3,s
	stb	11,s
	ldb	#-128
	stb	17,s
	ldb	#5
	stb	18,s
	ldx	8,s
	cmpx	#0
	bge	L4
	ldx	8,s
	tfr	x,d
	nega
	negb
	sbca	#0
	std	4,s
	bra	L5
L4:
	ldx	8,s
	stx	4,s
L5:
	ldd	4,s
	std	19,s
L6:
	ldb	18,s
	stb	6,s
	ldy	19,s
	ldx	#10
	pshs	x
	leax	,y
	jsr	_umodhi3
	leas	2,s
	tfr	x,d	;movlsbqihi: R:x -> R:b
	stb	2,s
	ldb	2,s
	addb	#48
	stb	7,s
	ldb	6,s
	clra		;zero_extendqihi: R:b -> R:d
	std	,s
	leax	11,s
	exg	d,x
	addd	,s; addhi3,3
	exg	d,x
	ldb	7,s
	stb	,x
	dec	18,s
	ldy	19,s
	ldx	#10
	pshs	x
	leax	,y
	jsr	_udivhi3
	leas	2,s
	stx	19,s
	tst	18,s
	bne	L6
	ldb	10,s
	stb	22,s
	ldb	29,s
	stb	21,s
	jsr	___Reset0Ref
	ldb	#127
	stb	*_dp_VIA_t1_cnt_lo
	ldb	22,s
	stb	24,s
	ldb	21,s
	stb	23,s
	ldb	24,s
	stb	,-s
	ldb	24,s
	jsr	__Moveto_d
	leas	1,s
	leax	11,s
	jsr	__Print_Str
	leas	25,s
	puls	y,pc
