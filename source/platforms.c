#include "platforms.h"
#include <vectrex.h>


#undef SF
#define SF 20

const struct packet_t vectors_platform[]=
{
	{DRAW, { 1 * SF, 0 * SF}},
	{DRAW, { 0 * SF, 127}},
	{DRAW, { -1 * SF, 0 * SF}},
	{DRAW, { 0 * SF, -127}},
	{STOP, {0,0}},
};

struct platform_t platforms[] = 
{
	{MOVING,{-100,0},1,0},
	{MOVING,{-70,0},0,0},
	{NONMOVING,{-40,0},1,0},
	{MOVING,{-10,0},1,0},
	{MOVING,{20,0},0,0},
	{NONMOVING,{50, 0},0,0},
	{MOVING,{80,0},0,0},
	{MOVING,{110,0},1,0},
	{NONMOVING,{127,0},0,0},
};

void handle_platforms(void)
{
	unsigned int size = sizeof platforms / sizeof platforms[0];
	for(unsigned int i = 0; i < size; i++)
	{
		if(platforms[i].type == MOVING)
		{
			if(platforms[i].dir_right)
			{
				if(platforms[i].position.x < 100) platforms[i].position.x+=(int)platforms[i].speed;
				else platforms[i].dir_right = 0;
			}
			else
			{
				if(platforms[i].position.x > -127) platforms[i].position.x-=(int)platforms[i].speed;
				else platforms[i].dir_right = 1;
			}
		}
		
	}
}

void init_platforms(void)
{
	unsigned int size = sizeof platforms / sizeof platforms[0];
	for(unsigned int i = 0; i < size; i++)
	{
		platforms[i].position.x = (int) Random();
	}
}

void draw_platforms(void)
{
	unsigned int size = sizeof platforms / sizeof platforms[0];
	for(unsigned int i = 0; i < size; i++)
	{
		Reset0Ref();
		dp_VIA_t1_cnt_lo = 0x7f;
		Moveto_d(platforms[i].position.y, platforms[i].position.x);
		dp_VIA_t1_cnt_lo = 0x18;
		Draw_VLp(&vectors_platform);
	}
}

unsigned int check_platform_collision(struct vector_t* position, unsigned int ry, unsigned int rx)
{
	unsigned int size = sizeof platforms / sizeof platforms[0];
	unsigned int hits = 0;
	int y0 = position->y;
	int x0 = position->x;
	for(unsigned int i = 0; i < size; i++)
	{
		int y1 = platforms[i].position.y;
		int x1 = platforms[i].position.x;
		if (y0 < y1)
		{
			if (((unsigned int)(y1 - y0)) <= ry) ++hits;
		}
		else
		{
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
		if(hits == 2) return 1;
		else hits = 0;
	}
	return 0;
}

void move_platforms(int x)
{
	unsigned int size = sizeof platforms / sizeof platforms[0];
	for(unsigned int i = 0; i < size; i++)
	{
		if(platforms[i].position.y > -126) platforms[i].position.y -= x;
		else
		{
			if(Random() % 5)
			{
				 platforms[i].type = NONMOVING;
			}
			else 
			{
				platforms[i].type = MOVING;
			    platforms[i].speed = (Random() % 3) + 1;
			}
			platforms[i].position.y -= x;
			int new_pos = (int) Random();
			if(new_pos > 100)
			{
				new_pos &= (int)0b11011111;
			}
			platforms[i].position.x = new_pos;
		}
	}
}

		
