                              1 ;;; gcc for m6809 : Mar 17 2019 13:25:32
                              2 ;;; 4.3.6 (gcc6809)
                              3 ;;; ABI version 1
                              4 ;;; -mabi=bx -mint8 -fomit-frame-pointer -O0
                              5 	.module	cartridge.c
                              6 	.globl	_game_header
                              7 	.area	.cartridge
   0000                       8 _game_header:
   0000 67 20 47 43 45 20     9 	.byte	103,32,71,67,69,32,50,48
        32 30
   0008 32 31 80             10 	.byte	50,49,-128
   000B FD 0D                11 	.word	_Vec_Music_1
   000D F8                   12 	.byte	-8
   000E 50                   13 	.byte	80
   000F 10                   14 	.byte	16
   0010 9C                   15 	.byte	-100
   0011 56 45 43 54 52 45    16 	.byte	86,69,67,84,82,69,88,32
        58 20
   0019 50 52 4F 4A 45 43    17 	.byte	80,82,79,74,69,67,84,-128
        54 80
   0021 00                   18 	.byte	0
ASxxxx Assembler V05.31  (Motorola 6809)                                Page 1
Hexadecimal [16-Bits]                                 Tue Mar 23 20:07:04 2021

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
    _Vec_Music_1       **** GX  |   2 _game_header       0000 GR

ASxxxx Assembler V05.31  (Motorola 6809)                                Page 2
Hexadecimal [16-Bits]                                 Tue Mar 23 20:07:04 2021

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .cartridge       size   22   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

