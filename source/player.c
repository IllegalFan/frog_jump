#include "player.h"
#include "utils/controller.h"

#undef SF
#define SF 10

const struct packet_t frog_up[] =
{
	{DRAW,{4*SF, 0}},
	{DRAW,{2*SF, -2*SF}},
	{DRAW,{3*SF, 0}},
	{DRAW,{1*SF, 1*SF}},
	{DRAW,{1*SF, -1*SF}},
	{DRAW,{2*SF, 0}},
	{DRAW,{-1*SF, 1*SF}},
	{DRAW,{2*SF, 0}},
	{DRAW,{1*SF, 1*SF}},
	{DRAW,{1*SF, 0}},
	{DRAW,{0, 1*SF}},
	{DRAW,{1*SF, 1*SF}},
	{DRAW,{0, 2*SF}},
	{DRAW,{-1*SF, 1*SF}},
	{DRAW,{0, 1*SF}},
	{DRAW,{-1*SF, 0}},
	{DRAW,{-1*SF, 1*SF}},
	{DRAW,{-2*SF, 0}},
	{DRAW,{1*SF, 1*SF}},
	{DRAW,{-2*SF, 0}},
	{DRAW,{-1*SF, -1*SF}},
	{DRAW,{-1*SF, 1*SF}},
	{DRAW,{-3*SF, 0}},
	{DRAW,{-2*SF, -2*SF}},
	{DRAW,{-4*SF, 0}},
	{DRAW,{2*SF, -2*SF}},
	{DRAW,{2*SF, 0}},
	{DRAW,{0, -2*SF}},
	{DRAW,{-2*SF, 0}},
	{DRAW,{-2*SF, -2*SF}},
	{STOP,{0,0}}
};

struct player current_player = 
{
	{0,0},
	{STILL, 0}
};

void init_player(void)
{
	current_player.position.x = 0;
}

void move_player(void)
{
	const int speed = 2;
	
	Joy_Digital();
	
	if(joystick_1_left())
	{
		current_player.position.x = current_player.position.x - speed;
	}
	else if(joystick_1_right())
	{
		current_player.position.x = current_player.position.x + speed;
	}
}

void handle_player(void)
{
	draw_player();
	move_player();
}

void draw_player(void)
{
	Reset0Ref();
	dp_VIA_t1_cnt_lo = 0x7f;
	Moveto_d(current_player.position.y, current_player.position.x);
	dp_VIA_t1_cnt_lo = 0x18;
	Draw_VLp(&frog_up);
}
