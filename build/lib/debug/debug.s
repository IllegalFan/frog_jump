;;; gcc for m6809 : Mar 17 2019 13:25:32
;;; 4.3.6 (gcc6809)
;;; ABI version 1
;;; -mabi=bx -mint8 -fomit-frame-pointer -O0
	.module	debug.c
	.area	.text
LC0:
	.byte	70,73,76,69,58,-128,0
LC1:
	.byte	76,73,78,69,58,-128,0
LC2:
	.byte	86,65,76,85,69,58,-128,0
	.globl	__f_debug
__f_debug:
	pshs	y,u
	leas	-17,s
	leau	,s
	stx	8,u
	stb	7,u
	sts	,u
	leax	,s
	stx	5,u
	ldd	27,u
	addd	29,u; addhi3,3
	std	12,u
	ldx	#0
	stx	29,u
	bra	L2
L4:
	ldd	29,u
	addd	#1; addhi3,3
	std	29,u
L2:
	ldd	12,u
	addd	#-1; addhi3,3
	std	12,u
	ldb	[12,u]
	cmpb	#92	;cmpqi:
	beq	L3
	ldx	12,u
	cmpx	27,u	;cmphi:
	bne	L4
L3:
	ldx	29,u
	ldd	29,u
	addd	#-1; addhi3,3
	std	29,u
	tfr	s,d
	pshs	x	;subhi: R:d -= R:x
	subd	,s++
	tfr	d,s
	sts	3,u
	ldx	#0
	exg	d,x
	addd	3,u; addhi3,3
	exg	d,x
	stx	3,u
	ldx	3,u
	stx	10,u
	ldx	#0
	stx	14,u
	bra	L5
L7:
	ldd	12,u
	addd	#1; addhi3,3
	std	12,u
	ldb	[12,u]
	stb	16,u
	ldb	16,u
	cmpb	#96	;cmpqi:
	bls	L6
	ldb	16,u
	cmpb	#122	;cmpqi:
	bhi	L6
	ldb	16,u
	addb	#-32
	stb	16,u
L6:
	ldx	14,u
	exg	d,x
	addd	10,u; addhi3,3
	exg	d,x
	ldb	16,u
	stb	,x
	ldd	14,u
	addd	#1; addhi3,3
	std	14,u
L5:
	ldx	14,u
	cmpx	29,u	;cmphi:
	blo	L7
	ldx	29,u
	exg	d,x
	addd	10,u; addhi3,3
	exg	d,x
	ldb	#-128
	stb	,x
L13:
	jsr	___DP_to_C8
	jsr	___Wait_Recal
	jsr	___Intensity_5F
	ldb	#-120
	stb	,-s
	ldx	8,u
	ldb	#90
	jsr	_print_string
	leas	1,s
	ldb	#-120
	stb	,-s
	ldx	#LC0
	ldb	#50
	jsr	_print_string
	leas	1,s
	ldx	10,u
	ldb	#-120
	stb	,-s
	ldb	#30
	jsr	_print_string
	leas	1,s
	ldb	#-120
	stb	,-s
	ldx	#LC1
	clrb
	jsr	_print_string
	leas	1,s
	ldb	#-120
	stb	,-s
	ldx	31,u
	ldb	#-20
	jsr	_print_long_unsigned_int
	leas	1,s
	ldx	23,u
	cmpx	#0
	lbeq	L8
	ldb	#-120
	stb	,-s
	ldx	#LC2
	ldb	#-50
	jsr	_print_string
	leas	1,s
	ldb	7,u
	stb	2,u
	ldb	2,u
	cmpb	#1	;cmpqi:
	beq	L10
	ldb	2,u
	cmpb	#1	;cmpqi:
	blo	L9
	ldb	2,u
	cmpb	#2	;cmpqi:
	beq	L11
	ldb	2,u
	cmpb	#3	;cmpqi:
	beq	L12
	lbra	L8
L9:
	ldx	23,u
	ldy	25,u
	ldb	,y
	pshs	b
	ldb	#-120
	stb	,-s
	ldb	#-70
	jsr	,x
	leas	2,s
	bra	L8
L10:
	ldx	23,u
	ldy	25,u
	ldb	,y
	pshs	b
	ldb	#-120
	stb	,-s
	ldb	#-70
	jsr	,x
	leas	2,s
	bra	L8
L11:
	ldy	23,u
	ldx	25,u
	ldx	,x
	ldb	#-120
	stb	,-s
	ldb	#-70
	jsr	,y
	leas	1,s
	bra	L8
L12:
	ldy	23,u
	ldx	25,u
	ldx	,x
	ldb	#-120
	stb	,-s
	ldb	#-70
	jsr	,y
	leas	1,s
L8:
	jsr	___Read_Btns
	ldb	_Vec_Buttons
	andb	#1
	tstb
	lbeq	L13
	lds	5,u
	lds	,u
	leas	17,s
	puls	y,u,pc
