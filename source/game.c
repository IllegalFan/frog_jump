#include <vectrex.h>
#include "utils/controller.h"
#include "game.h"

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
	while(current_game.lives)
	{
		Wait_Recal();
		Intensity_5F();
		Reset0Ref();
		Print_Str_d(20, -80, "HELLO WORLD\x80");
	}
}

int game(void)
{
	game_init();
	game_play();
	return 1;
}
