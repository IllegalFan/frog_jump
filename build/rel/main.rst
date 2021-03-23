                              1 ;;; gcc for m6809 : Mar 17 2019 13:25:32
                              2 ;;; 4.3.6 (gcc6809)
                              3 ;;; ABI version 1
                              4 ;;; -mabi=bx -mint8 -fomit-frame-pointer -O0
                              5 	.module	main.c
                              6 	.area	.text
   004E                       7 LC0:
   004E 48 45 4C 4C 4F 20     8 	.byte	72,69,76,76,79,32,87,79
        57 4F
   0056 52 4C 44 80 00        9 	.byte	82,76,68,-128,0
                             10 	.globl	_main
   005B                      11 _main:
   005B 32 7F         [ 5]   12 	leas	-1,s
   005D C6 FF         [ 2]   13 	ldb	#-1
   005F E7 E4         [ 4]   14 	stb	,s
   0061                      15 L2:
   0061 BD F1 92      [ 8]   16 	jsr	___Wait_Recal
   0064 BD F2 A5      [ 8]   17 	jsr	___Intensity_5F
   0067 BD F3 54      [ 8]   18 	jsr	___Reset0Ref
   006A C6 14         [ 2]   19 	ldb	#20
   006C E7 E2         [ 6]   20 	stb	,-s
   006E 8E 00 4E      [ 3]   21 	ldx	#LC0
   0071 C6 B0         [ 2]   22 	ldb	#-80
   0073 BD 01 81      [ 8]   23 	jsr	__Print_Str_d
   0076 32 61         [ 5]   24 	leas	1,s
   0078 6D E4         [ 6]   25 	tst	,s
   007A 26 E5         [ 3]   26 	bne	L2
   007C E6 E4         [ 4]   27 	ldb	,s
   007E 32 61         [ 5]   28 	leas	1,s
   0080 39            [ 5]   29 	rts
ASxxxx Assembler V05.31  (Motorola 6809)                                Page 1
Hexadecimal [16-Bits]                                 Tue Mar 23 19:32:39 2021

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 L2                 0013 R   |   2 LC0                0000 R
    __Print_Str_d      **** GX  |     ___Intensity_5     **** GX
    ___Reset0Ref       **** GX  |     ___Wait_Recal      **** GX
  2 _main              000D GR

ASxxxx Assembler V05.31  (Motorola 6809)                                Page 2
Hexadecimal [16-Bits]                                 Tue Mar 23 19:32:39 2021

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size   33   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

