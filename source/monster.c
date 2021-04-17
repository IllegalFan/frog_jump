#include "monster.h"
#define SF 10

const struct packet_t vectors_bird_left[]=
{
	{DRAW, { 5 * SF, -5 * SF}},
	{DRAW, { 0 * SF, -1 * SF}},
	{DRAW, { -1 * SF, -2 * SF}},
	{DRAW, { 3 * SF, 3 * SF}},
	{DRAW, { 0 * SF, 1 * SF}},
	{DRAW, { -1 * SF, 1 * SF}},
	{DRAW, { 3 * SF, 4 * SF}},
	{DRAW, { -4 * SF, -2 * SF}},
	{DRAW, { 2 * SF, 4 * SF}},
	{DRAW, { 0 * SF, -3 * SF}},
	{MOVE, { -2 * SF, -1 * SF}},
	{DRAW, { -5 * SF, 1 * SF}},			
	{STOP, {0,0}},
};

const struct packet_t vectors_bird_right[]=
{
	{DRAW, { 5 * SF, 5 * SF}},
	{DRAW, { 0 * SF, 1 * SF}},
	{DRAW, { -1 * SF, 2 * SF}},
	{DRAW, { 3 * SF, -3 * SF}},
	{DRAW, { 0 * SF, -1 * SF}},
	{DRAW, { -1 * SF, -1 * SF}},
	{DRAW, { 3 * SF, -4 * SF}},
	{DRAW, { -4 * SF, 2 * SF}},
	{DRAW, { 2 * SF, -4 * SF}},
	{DRAW, { 0 * SF, 3 * SF}},
	{MOVE, { -2 * SF, 1 * SF}},
	{DRAW, { -5 * SF, -1 * SF}},			
	{STOP, {0,0}},
};


struct monster bird = 
{
	{0,0},
	(void*) &vectors_bird_left,
	DEAD,
	1,
	2
};



void generate_monster(struct vector_t pos)
{
	bird.monster_state = ALIVE;
	bird.pos = pos;
}

void draw_bird(void)
{
	if(bird.monster_state == ALIVE)
	{
		Reset0Ref();
		dp_VIA_t1_cnt_lo = 0x7f;
		Moveto_d(bird.pos.y, bird.pos.x);
		dp_VIA_t1_cnt_lo = 0x18;
		Draw_VLp((void*) bird.shape);
	}
}

void move_monsters(int distance)
{
	bird.pos.y -= distance;
}

void handle_monsters(void)
{
	if(bird.dir_right)
	{
		if(bird.pos.x < 100) bird.pos.x+=(int)bird.speed;
		else 
		{
			bird.shape = (void*) vectors_bird_left;
			bird.dir_right = 0;
		}
	}
	else
	{
		if(bird.pos.x > -125) bird.pos.x-=(int)bird.speed;
		else 
		{
			bird.shape = (void*) vectors_bird_right;
			bird.dir_right = 1;
		}
	}
}
