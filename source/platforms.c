#include "platforms.h"
#include <vectrex.h>


#undef SF
#define SF 20

const struct packet_t vectors_platform[]=
{
	{DRAW, { 1 * SF, 0 * SF}},
	{DRAW, { 0 * SF, 6 * SF}},
	{DRAW, { -1 * SF, 0 * SF}},
	{DRAW, { 0 * SF, -6 * SF}},
	{STOP, {0,0}},
};

struct platform_t platforms[] = 
{
	{NONMOVING,{-20,0}},
	{NONMOVING,{-40,0}},
	{NONMOVING,{-60,0}},
	{NONMOVING,{-80,0}},
	{NONMOVING,{-100,0}},
	{NONMOVING,{0, 0}},
	{NONMOVING,{20,0}},
	{NONMOVING,{40,0}},
	{NONMOVING,{60,0}},
	{NONMOVING,{80,0}},
	{NONMOVING,{100,0}},
};

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

		
