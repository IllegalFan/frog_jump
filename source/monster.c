#include "monster.h"
#define SF 16

const struct packet_t vectors_bird_left1[]=
{
	{MOVE, { -5 * SF, -4 * SF}},
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

const struct packet_t vectors_bird_left2[]=
{
	{MOVE, { -5 * SF, -4 * SF}},
	{DRAW, { 5 * SF, -5 * SF}},
	{DRAW, { 0 * SF, -1 * SF}},
	{DRAW, { -1 * SF, -2 * SF}},
	{DRAW, { 3 * SF, 3 * SF}},
	{DRAW, { 0 * SF, 1 * SF}},
	{DRAW, { -1 * SF, 1 * SF}},
	{DRAW, { -1 * SF, 4 * SF}},
	{DRAW, { 0 * SF, -3 * SF}},
	{MOVE, { 1 * SF, -1 * SF}},
	{DRAW, { -3 * SF, 2 * SF}},
	{DRAW, { 2 * SF, -3 * SF}},
	{MOVE, { 0 * SF, 3 * SF}},	
	{DRAW, { -5 * SF, 1 * SF}},		
	{STOP, {0,0}},
};

const struct packet_t vectors_bird_right1[]=
{
	{MOVE, { -5 * SF, 4 * SF}},
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

const struct packet_t vectors_bird_right2[]=
{
	{MOVE, { -5 * SF, 4 * SF}},
	{DRAW, { 5 * SF, 5 * SF}},
	{DRAW, { 0 * SF, 1 * SF}},
	{DRAW, { -1 * SF, 2 * SF}},
	{DRAW, { 3 * SF, -3 * SF}},
	{DRAW, { 0 * SF, -1 * SF}},
	{DRAW, { -1 * SF, -1 * SF}},
	{DRAW, { -1 * SF, -4 * SF}},
	{DRAW, { 0 * SF, 3 * SF}},
	{MOVE, { 1 * SF, 1 * SF}},
	{DRAW, { -3 * SF, -2 * SF}},
	{DRAW, { 2 * SF, 3 * SF}},
	{MOVE, { 0 * SF, -3 * SF}},	
	{DRAW, { -5 * SF, -1 * SF}},		
	{STOP, {0,0}},
};


struct monster bird = 
{
	{-90,-90},
	(void*) &vectors_bird_right1,
	DEAD,
	1,
	1
};



void generate_monster(struct vector_t pos)
{
	bird.dir_right = 1;
	bird.shape = (void*) &vectors_bird_right1;
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
	if(bird.pos.y >= 127) bird.monster_state = ALIVE;
	bird.pos.y -= distance;
	
}

void handle_monsters(void)
{
	if(bird.dir_right)
	{
		if(bird.pos.x < 100)
		{
			 bird.pos.x+=(int)bird.speed;
			 if((unsigned int)bird.pos.x % 40 > 19) bird.shape = (void*) vectors_bird_right1;
			 else bird.shape = (void*) vectors_bird_right2;
		}
		else 
		{
			bird.shape = (void*) vectors_bird_left1;
			bird.dir_right = 0;
		}
	}
	else
	{
		if(bird.pos.x > -125)
		{
			 bird.pos.x-=(int)bird.speed;
			 if((unsigned int)bird.pos.x % 40 > 19) bird.shape = (void*) vectors_bird_left1;
			 else bird.shape = (void*) vectors_bird_left2;
		}
		else 
		{
			bird.shape = (void*) vectors_bird_right1;
			bird.dir_right = 1;
		}
	}
}

unsigned int check_monster_collision(struct vector_t* position, unsigned int ry, unsigned int rx)
{
	if(bird.monster_state == ALIVE)
	{
		unsigned int hits = 0;
		int y0 = position->y;
		int x0 = position->x;
		int y1 = bird.pos.y;
		int x1 = bird.pos.x;
		unsigned int highground;
		if (y0 < y1)
		{
			highground = 0;
			if (((unsigned int)(y1 - y0)) <= ry) ++hits;
		}
		else
		{
			highground = 1;
			if (((unsigned int)(y0 - y1)) <= ry) ++hits;
		}
		if (x0 < x1)
		{
			if (((unsigned int)(x1 - x0)) <= rx) ++hits;
		}
		else
		{
			if (((unsigned int)(x0 - x1)) <= rx) ++hits;
		}
		if(hits == 2)
		{
			if(highground == 1)
			{
				bird.monster_state = DEAD;
				return 2;
			}
			else return 1;
		}
		else return 0;
	}
	else return 0;
}
