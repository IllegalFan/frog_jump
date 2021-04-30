#pragma once


struct game_t
{
	long unsigned int score;
	unsigned int difficulty;
	unsigned int running;
	long unsigned int highscore;
	unsigned int alive;
	unsigned int score_delay;
};

extern struct game_t current_game;

int game(void);

void game_init(void);
void game_play(void);
void game_over(void);
void calculate_score(void);
void draw_difficulty(void);
