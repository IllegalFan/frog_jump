                              1 ;;; gcc for m6809 : Mar 17 2019 13:25:32
                              2 ;;; 4.3.6 (gcc6809)
                              3 ;;; ABI version 1
                              4 ;;; -mabi=bx -mint8 -fomit-frame-pointer -O0
                              5 	.module	main.c
                              6 	.area	.text
                              7 	.globl	_main
   008A                       8 _main:
   008A 32 7F         [ 5]    9 	leas	-1,s
   008C                      10 L2:
   008C BD 00 81      [ 8]   11 	jsr	_game
   008F E7 E4         [ 4]   12 	stb	,s
   0091 6D E4         [ 6]   13 	tst	,s
   0093 26 F7         [ 3]   14 	bne	L2
   0095 E6 E4         [ 4]   15 	ldb	,s
   0097 32 61         [ 5]   16 	leas	1,s
   0099 39            [ 5]   17 	rts
ASxxxx Assembler V05.31  (Motorola 6809)                                Page 1
Hexadecimal [16-Bits]                                 Tue Mar 23 20:07:05 2021

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 L2                 0002 R   |     _game              **** GX
  2 _main              0000 GR

ASxxxx Assembler V05.31  (Motorola 6809)                                Page 2
Hexadecimal [16-Bits]                                 Tue Mar 23 20:07:05 2021

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size   10   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

