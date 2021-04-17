#include <vectrex.h>
#include "print/print.h"
#include "utils/utils.h"
#include "utils/controller.h"
#include "game.h"
#include "platforms.h"
#include "player.h"

struct game_t current_game = 
{
	.score = 0,
	.running = 1,
	.highscore = 0,
	.lives = 0,
	
	.option_mode = 0,
	.option_players = 0,
	.score_delay = 0,
};

void game_options(void)
{
	Wait_Recal();
	Reset0Ref();
	Print_Str_d(80 ,-80, "ITS WEDNESDAY\x80");
	Print_Str_d(-20 , -50, "MY DUDES\x80");
	Print_Str_d(-50 , -100, "HS\x80");
	print_long_unsigned_int(-50,20, current_game.highscore);
	Print_Str_d(-80,-100, "PRESS 1 TO START\x80");
	dp_VIA_t1_cnt_lo = 0x7f;
	Moveto_d(10, -10);
	dp_VIA_t1_cnt_lo = 0x18;
	Draw_VLp((void*) &frog_up);
}


void game_init(void)
{
	current_game.lives = 1;
}

void game_over(void)
{
	if(current_game.score > current_game.highscore) current_game.highscore = current_game.score;
	current_game.score = 0;
	current_game.lives = 0;
	current_player.shape = (void*) &frog_up;
}

void game_play(void)
{
	init_platforms();
	init_player();
	while(current_game.lives)
	{
		DP_to_C8();
		Init_Music_chk(current_music);
		Wait_Recal();
		handle_player();
		handle_platforms();
		Intensity_5F();
		draw_platforms();
		Do_Sound();
		print_long_unsigned_int(120,-100, current_game.score);
	}
}

int game(void)
{
	while(current_game.running)
	{
		game_options();
		Read_Btns();
		if(button_1_1_held())
		{
			game_init();
			game_play();
		}
		/*if(button_1_2_held())
		{
			current_game.running=0;
		}*/
	}
	return 1;
}
