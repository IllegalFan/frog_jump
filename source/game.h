#pragma once


struct game_t
{
	long unsigned int score;
	unsigned int running;
	long unsigned int highscore;
	unsigned int lives;
	unsigned int option_mode;
	unsigned int option_players;
	unsigned int score_delay;
};

extern struct game_t current_game;

int game(void);

void game_init(void);
void game_play(void);
void game_over(void);
