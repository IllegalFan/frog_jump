#include <vectrex.h>
#include "utils/controller.h"
#include "game.h"
#include "platforms.h"
#include "player.h"

struct game_t current_game = 
{
	.score = 0,
	.lives = 0
};

void game_init(void)
{
	current_game.lives = 1;
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
	game_init();
	game_play();
	return 1;
}
