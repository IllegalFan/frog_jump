#include "player.h"
#include "platforms.h"
#include "tongue.h"
#include "utils/controller.h"

#undef SF
#define SF 10


const struct packet_t frog_up[] =
{
	{MOVE,{0*SF, 3*SF}},
	{DRAW,{8*SF, 0}},
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
	{DRAW,{-8*SF, 0}},
	{DRAW,{6*SF, -2*SF}},
	{DRAW,{2*SF, 0}},
	{DRAW,{0, -2*SF}},
	{DRAW,{-2*SF, 0}},
	{DRAW,{-6*SF, -2*SF}},
	{STOP,{0,0}}
};

const struct packet_t frog_down[]=
{
	{MOVE, {-1*SF, 3*SF}},
	{DRAW, {1*SF, 0*SF}},
	{DRAW, {1*SF, -1*SF}},
	{DRAW, {2*SF, 0*SF}},
	{DRAW, {-1*SF, -1*SF}},
	{DRAW, {2*SF, 0*SF}},
	{DRAW, {1*SF, 1*SF}},
	{DRAW, {1*SF, -1*SF}},
	{DRAW, {3*SF, 0*SF}},
	{DRAW, {2*SF, 2*SF}},
	{DRAW, {8*SF, 0*SF}},
	{DRAW, {-6*SF, 2*SF}},
	{DRAW, {-2*SF, 0*SF}},
	{DRAW, {0*SF, 2*SF}},
	{DRAW, {2*SF, 0*SF}},
	{DRAW, {6*SF, 2*SF}},
	{DRAW, {-8*SF, 0*SF}},
	{DRAW, {-2*SF, 2*SF}},
	{DRAW, {-3*SF, 0*SF}},
	{DRAW, {-1*SF, -1*SF}},
	{DRAW, {-1*SF, 1*SF}},
	{DRAW, {-2*SF, 0*SF}},
	{DRAW, {1*SF, -1*SF}},
	{DRAW, {-2*SF, 0*SF}},
	{DRAW, {-1*SF, -1*SF}},
	{DRAW, {-1*SF, 0*SF}},
	{DRAW, {0*SF, -1*SF}},
	{DRAW, {-1*SF, -1*SF}},
	{DRAW, {0*SF, -2*SF}},
	{DRAW, {1*SF, -1*SF}},
	{DRAW, {0*SF, -1*SF}},
	{STOP, {0,0}}
};

const struct packet_t frog_between[]=
{
	{MOVE, {0*SF, 3*SF}},
	{DRAW, {0*SF, -1*SF}},
	{DRAW, {1*SF, -1*SF}},
	{DRAW, {2*SF, 0*SF}},
	{DRAW, {1*SF, 1*SF}},
	{DRAW, {1*SF, 0*SF}},
	{DRAW, {1*SF, 1*SF}},
	{DRAW, {1*SF, 0*SF}},
	{DRAW, {0*SF, 1*SF}},
	{DRAW, {1*SF, 1*SF}},
	{DRAW, {0*SF, 2*SF}},
	{DRAW, {-1*SF, 1*SF}},
	{DRAW, {0*SF, 1*SF}},
	{DRAW, {-1*SF, 0*SF}},
	{DRAW, {-1*SF, 1*SF}},
	{DRAW, {-1*SF, 0*SF}},
	{DRAW, {-1*SF, 1*SF}},
	{DRAW, {-2*SF, 0*SF}},
	{DRAW, {-1*SF, -1*SF}},
	{DRAW, {0*SF, -7*SF}},
	{MOVE, {2*SF, 0*SF}},
	{DRAW, {-2*SF, 1*SF}},
	{DRAW, {2*SF, 1*SF}},
	{MOVE, {0*SF, 2*SF}},
	{DRAW, {-2*SF, 1*SF}},
	{DRAW, {2*SF, 1*SF}},
	{STOP, {0,0}}
};
	
struct player current_player = 
{
	{-100,0},
	(void*) &frog_up,
	{UP_FAST, 0},
	32
};

void init_player(void)
{
	current_player.position.x = 0;
	current_player.jmp.js = UP_FAST;
}

void move_player(void)
{
	const int speed = 3;
	
	Joy_Digital();
	
	if(joystick_1_left())
	{
		current_player.position.x -= speed;
	}
	else if(joystick_1_right())
	{
		current_player.position.x += speed;
	}
}

void handle_jump(void)
{
	switch(current_player.jmp.js)
	{
		unsigned int collision;
		case UP_FAST:
			tongue_lash(current_player.position.y +(int)current_player.length, current_player.position.x+1);
			if(current_player.jmp.js_counter < 20)
			{
				current_player.length = 40;
				current_player.shape = (void*) &frog_up;
				if(current_player.position.y > -50) move_platforms(2);
				else current_player.position.y += 2;
				current_player.jmp.js_counter += 1;
			}
			else 
			{
				current_player.jmp.js = UP_SLOW;
				current_player.jmp.js_counter = 0;
			}
			break;
		case UP_SLOW:
			tongue_lash(current_player.position.y +(int)current_player.length, current_player.position.x+1);
			if(current_player.jmp.js_counter < 10)
			{
				current_player.length = 16;
				current_player.shape = (void*) &frog_between;
				if(current_player.position.y > -50) move_platforms(2);
				else current_player.position.y += 1;
				current_player.jmp.js_counter += 1;
			}
			else 
			{
				current_player.jmp.js = DOWN_SLOW;
				current_player.jmp.js_counter = 0;
			}
			break;
		case DOWN_SLOW:
			tongue_lash(current_player.position.y +(int)current_player.length, current_player.position.x+1);
			collision = check_platform_collision(&current_player.position, 2, 12);
			if(!collision && current_player.jmp.js_counter < 10)
			{
				current_player.length = 16;
				current_player.position.y -= 1;
				current_player.jmp.js_counter += 1;
			}
			else if(collision)
			{
				current_player.jmp.js = UP_FAST;
				current_player.jmp.js_counter = 0;
			}
			else 
			{
				current_player.jmp.js = DOWN_FAST;
				current_player.jmp.js_counter = 0;
			}
			break;
		case DOWN_FAST:
			collision = check_platform_collision(&current_player.position, 2, 12);
			if(!collision)
			{
				current_player.length = 32;
				current_player.shape = (void*) frog_down;
				current_player.position.y -= 2;
			}
			else if(collision)
			{
				current_player.jmp.js = UP_FAST;
				current_player.jmp.js_counter = 0;
			}
			else 
			{
				current_player.jmp.js = UP_FAST;
				current_player.jmp.js_counter = 0;
			}
			break;
		default:
			break;
	}
}

void draw_player(void)
{
	Reset0Ref();
	dp_VIA_t1_cnt_lo = 0x7f;
	Moveto_d(current_player.position.y, current_player.position.x);
	dp_VIA_t1_cnt_lo = 0x18;
	Draw_VLp((void*) current_player.shape);
}
void handle_player(void)
{
	draw_player();
	move_player();
	handle_jump();
}

