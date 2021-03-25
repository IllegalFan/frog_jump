#include "tongue.h"
#include "utils\controller.h"

#undef SF
#define SF 8

const struct packet_t tongue_onethird[]=
{
	{MOVE, {0*SF, 4*SF}},
	{DRAW, {3*SF, 0*SF}},
	{DRAW, {1*SF, 1*SF}},
	{DRAW, {-1*SF, 1*SF}},
	{DRAW, {-3*SF, 0*SF}},
	{STOP, {0,0}}
};

const struct packet_t tongue_twothird[]=
{
	{MOVE, {0*SF, 4*SF}},
	{DRAW, {6*SF, 0*SF}},
	{DRAW, {1*SF, 1*SF}},
	{DRAW, {-1*SF, 1*SF}},
	{DRAW, {-6*SF, 0*SF}},
	{STOP, {0,0}}
};

const struct packet_t tongue_full[]=
{
	{MOVE, {0*SF, 4*SF}},
	{DRAW, {9*SF, 0*SF}},
	{DRAW, {1*SF, 1*SF}},
	{DRAW, {-1*SF, 1*SF}},
	{DRAW, {-9*SF, 0*SF}},
	{STOP, {0,0}}
};

struct tongue current_tongue = 
{
	INACTIVE,
	{0,0},
	(void*) tongue_onethird,
	0,
};

void draw_tongue(int y, int x)
{
	Reset0Ref();
	Intensity_5F();
	dp_VIA_t1_cnt_lo = 0x7f;
	Moveto_d(y, x);
	dp_VIA_t1_cnt_lo = 0x20;
	Draw_VLp((void*) current_tongue.shape);
}


void tongue_lash(int y, int x)
{
	switch(current_tongue.state)
	{
		case INACTIVE:
			Read_Btns();
			if(button_1_4_held()) current_tongue.state = ONETHIRD;
			break;
		case ONETHIRD:
			current_tongue.shape= (void*) tongue_onethird;
			draw_tongue(y,x);
			if(current_tongue.cnt < 20)
			{
				current_tongue.cnt += 1;
			}
			else
			{
				current_tongue.state = TWOTHIRD;
				current_tongue.cnt = 0;
			}
			break;
		case TWOTHIRD:
			current_tongue.shape = (void*) tongue_twothird;
			draw_tongue(y,x);
			if(current_tongue.cnt < 20)
			{
				current_tongue.cnt += 1;
			}
			else
			{
				current_tongue.state = FULL;
				current_tongue.cnt = 0;
			}
			break;
		case FULL:
			current_tongue.shape = (void*) tongue_full;
			draw_tongue(y,x);
			if(current_tongue.cnt < 10)
			{
				current_tongue.cnt += 1;
			}
			else
			{
				current_tongue.state = INACTIVE;
				current_tongue.cnt = 0;
			}
			break;		
		default:
			break;
	}
}

void tongue_cancel(void)
{
	current_tongue.state = INACTIVE;
	current_tongue.cnt = 0;
	current_tongue.shape = 0;
}

