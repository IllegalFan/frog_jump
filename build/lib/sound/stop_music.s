;;; gcc for m6809 : Mar 17 2019 13:25:32
;;; 4.3.6 (gcc6809)
;;; ABI version 1
;;; -mabi=bx -mint8 -fomit-frame-pointer -O0
	.module	stop_music.c
	.area	.text
	.globl	_stop_music
_stop_music:
	clr	_Vec_Music_Flag
	ldx	#_music_off
	stx	_current_music
	rts