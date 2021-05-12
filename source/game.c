#include <vectrex.h>
#include "print/print.h"
#include "utils/utils.h"
#include "utils/controller.h"
#include "game.h"
#include "platforms.h"
#include "player.h"
#include "monster.h"
#include "utils/vector.h"


#define SF 20

const struct packet_t arrow[] = 
{
	{DRAW, { 3 * SF, 0 * SF}},
	{DRAW, { -1 * SF, -1 * SF}},
	{MOVE, { 0 * SF, 2 * SF}},
	{DRAW, { 1 * SF, -1 * SF}},
	{STOP, { 0,0}},
};

int diff_animation = 0;
int arrow_ypos = -127;


struct game_t current_game = 
{
	.score = 0,
	.difficulty = 4,
	.running = 1,
	.highscore = 0,
	.alive = 0,
	.score_delay = 0,
};

void game_options(void)
{
	Wait_Recal();
	Reset0Ref();
	Print_Str_d(80 ,-80, "FROG JUMP\x80");
	Print_Str_d(-50 , -100, "HS\x80");
	print_long_unsigned_int(-50,20, current_game.highscore);
	Print_Str_d(-80,-100, "PRESS 2 TO START\x80");
	dp_VIA_t1_cnt_lo = 0x7f;
	Moveto_d(10, -10);
	dp_VIA_t1_cnt_lo = 0x18;
	Draw_VLp((void*) &frog_up);
}


void game_init(void)
{
	current_player.shape = (void*) &frog_up;
	current_player.frog_tongue.state = INACTIVE;
	current_game.alive = 1;
	diff_animation = 0;
	current_game.difficulty = 1;
	init_platforms();
	init_player();
}

void game_over(void)
{
	if(current_game.score > current_game.highscore) current_game.highscore = current_game.score;
	current_game.score = 0;
	current_game.alive = 0;
}

void game_play(void)
{
	init_platforms();
	init_player();
	struct vector_t pos = {100,0};
	generate_monster(pos);
	while(current_game.alive)
	{
		DP_to_C8();
		Init_Music_chk(current_music);
		Wait_Recal();
		Do_Sound();
		Intensity_5F();
		
		handle_player();
		handle_platforms();
		handle_monsters();
		draw_platforms();
		draw_bird();
		draw_difficulty();
		print_long_unsigned_int_efficiently(current_game.score);
		//with print: avg 26486; max 31366
		//with improved print: avg 21827; max 25825
		//without print: avg 18067; max 22767
	}
}

int game(void)
{
	while(current_game.running)
	{
		game_options();
		Read_Btns();
		if(button_1_2_held())
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

void calculate_score(void)
{
	if(current_game.score_delay == 4)
	 {
		 current_game.score++;
		 if(current_game.score % 100 == 99)
		 {
			if(current_game.difficulty < 4)
			{
				increase_diff();
				current_game.difficulty++;
				diff_animation = 1;
			}
		 }
		 current_game.score_delay = 0;
	 }
	 else current_game.score_delay++;
}

void draw_difficulty(void)
{
	//print_nonmovingprob();
	if(diff_animation > 0 && diff_animation < 64)
	{
		Reset0Ref();
		Intensity_5F();
		dp_VIA_t1_cnt_lo = 0x7f;
		Moveto_d(arrow_ypos , -80);
		dp_VIA_t1_cnt_lo = 0x18;
		Draw_VLp((void*) &arrow);
		Reset0Ref();
		Intensity_5F();
		dp_VIA_t1_cnt_lo = 0x7f;
		Moveto_d(arrow_ypos , 80);
		dp_VIA_t1_cnt_lo = 0x18;
		Draw_VLp((void*) &arrow);
		arrow_ypos += 4;
		diff_animation++;
	}
	else
	{
		 diff_animation = 0;
		 arrow_ypos = -127;
	}
}
