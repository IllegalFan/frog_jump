#include <vectrex.h>
#include "print/print.h"
#include "utils/controller.h"
#include "game.h"
#include "platforms.h"
#include "player.h"

struct game_t current_game = 
{
	.score = 0,
	.lives = 0,
	.option_mode = 0,
	.option_players = 0,
};

static inline __attribute__(())
void game_options(void)
{
	Select_Game(2 /* max_players */, 5 /* max_options */);
	current_game.option_players = Vec_Num_Players;
	current_game.option_mode = Vec_Num_Game;
}


void game_init(void)
{
	current_game.lives = 1;
}

void game_over(void)
{
	current_game.lives = 0;
}

void game_play(void)
{
	init_platforms();
	init_player();
	while(current_game.lives)
	{
		Wait_Recal();
		handle_player();
		handle_platforms();
		Intensity_5F();
		draw_platforms();
	}
}

int game(void)
{
	game_options();
	if(button_1_4_held())
	{
		game_init();
		game_play();
		return 0;
	}
	else 
	{
		return 1;
	}
}
