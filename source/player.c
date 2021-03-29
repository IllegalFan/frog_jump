#include "player.h"
#include "platforms.h"
#include "game.h"
#include "utils/controller.h"

#undef SF
#define SF 10

//Vector_Lists for different frog representations

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
	{DRAW,{1*SF, -1*SF}},
	{DRAW,{2*SF, 0}},
	{DRAW,{3*SF, -1*SF}},
	{DRAW,{2*SF, 0*SF}},
	{DRAW,{0, -2*SF}},
	{DRAW,{-2*SF, 0}},
	{DRAW,{-3*SF, -1*SF}},
	{DRAW,{-2*SF, 0}},
	{DRAW,{-1*SF, -1*SF}},
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
	{DRAW,{8*SF, 0}},
	{DRAW,{-1*SF, 1*SF}},
	{DRAW,{-2*SF, 0}},
	{DRAW,{-3*SF, 1*SF}},
	{DRAW,{-2*SF, 0*SF}},
	{DRAW,{0, 2*SF}},
	{DRAW,{2*SF, 0}},
	{DRAW,{3*SF, 1*SF}},
	{DRAW,{2*SF, 0}},
	{DRAW,{1*SF, 1*SF}},
	{DRAW,{-8*SF, 0}},
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

//Initialisation of player instance
	
struct player current_player = 
{
	{-100,0},
	(void*) &frog_up,
	{UP_FAST, 0},
	32,
	{INACTIVE, {0,0}, 0, 0, 0}
};

void init_player(void)
{
	current_player.position.x = 0;
	current_player.jmp.js = UP_FAST;
}

void handle_input(void)
{
	move_player();
	handle_tongue();
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

void handle_tongue()
{
	switch(current_player.jmp.js)
	{
		case UP_FAST:
			current_player.length = 40;
			tongue_lash(&current_player.frog_tongue, current_player.position.y +(int)current_player.length, current_player.position.x+1);
			break;
		case UP_SLOW:
			current_player.length = 14;
			tongue_lash(&current_player.frog_tongue,current_player.position.y +(int)current_player.length, current_player.position.x+1);
			break;
		case DOWN_SLOW:
			tongue_lash(&current_player.frog_tongue,current_player.position.y +(int)current_player.length, current_player.position.x+1);
			break;
		case DOWN_FAST:
			tongue_cancel(&current_player.frog_tongue);
			break;
		default:
			break;
	}
}

void handle_jump(void)
{
	switch(current_player.jmp.js)
	{
		unsigned int collision;
		case UP_FAST:
			if(current_player.jmp.js_counter < 20)
			{
				if(current_player.position.y > MAX_PLAYER_HEIGHT) move_platforms(2);
				else current_player.position.y += 2;
				current_player.jmp.js_counter += 1;
			}
			else 
			{
				current_player.shape = (void*) &frog_between;
				current_player.position.y += 16;
				current_player.jmp.js = UP_SLOW;
				current_player.jmp.js_counter = 0;
			}
			break;
		case UP_SLOW:
			if(current_player.jmp.js_counter < 10)
			{
				if(current_player.position.y > MAX_PLAYER_HEIGHT) move_platforms(1);
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
			collision = check_platform_collision(&current_player.position, 2, 14);
			if(!collision && current_player.jmp.js_counter < 10)
			{
				current_player.position.y -= 1;
				current_player.jmp.js_counter += 1;
			}
			else if(collision)
			{
				current_player.shape = (void*) &frog_up;
				current_player.jmp.js = UP_FAST;
				current_player.jmp.js_counter = 0;
			}
			else 
			{
				current_player.shape = (void*) frog_down;
				current_player.jmp.js = DOWN_FAST;
				current_player.jmp.js_counter = 0;
			}
			if(current_player.position.y <= -127) game_over();
			break;
		case DOWN_FAST:
			collision = check_platform_collision(&current_player.position, 2, 14);
			if(!collision)
			{
				current_player.position.y -= 2;
			}
			else 
			{
				current_player.shape = (void*) &frog_up;
				current_player.jmp.js = UP_FAST;
				current_player.jmp.js_counter = 0;
			}
			if(current_player.position.y <= -127) game_over();	
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
	if(current_player.frog_tongue.state != INACTIVE)
	{
		Reset0Ref();
		dp_VIA_t1_cnt_lo = 0x7f;
		Moveto_d(current_player.frog_tongue.position.y, current_player.frog_tongue.position.x);
		dp_VIA_t1_cnt_lo = 0x20;
		Intensity_3F();
		Draw_VLp((void*) current_player.frog_tongue.line);
		Reset0Ref();
		dp_VIA_t1_cnt_lo = 0x7f;
		Moveto_d(current_player.frog_tongue.position.y, current_player.frog_tongue.position.x);
		dp_VIA_t1_cnt_lo = 0x20;
		Intensity_5F();
		Draw_VLp((void*) current_player.frog_tongue.shape);
	}
}
void handle_player(void)
{
	handle_jump();
	handle_input();
	Intensity_5F();
	draw_player();
}


