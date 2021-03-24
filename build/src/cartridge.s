;;; gcc for m6809 : Mar 17 2019 13:25:32
;;; 4.3.6 (gcc6809)
;;; ABI version 1
;;; -mabi=bx -mint8 -fomit-frame-pointer -O0
	.module	cartridge.c
	.globl	_game_header
	.area	.cartridge
_game_header:
	.byte	103,32,71,67,69,32,50,48
	.byte	50,49,-128
	.word	_Vec_Music_1
	.byte	-8
	.byte	80
	.byte	16
	.byte	-100
	.byte	70,82,79,71,32,74,85,77
	.byte	80,-128,0
