#include "tongue.h"
#include "utils\controller.h"
#include "monster.h"

#undef SF
#define SF 8

const struct packet_t tongue_onethird[]=
{
	{MOVE, {0*SF, 4*SF}},
	{DRAW, {5*SF, 0*SF}},
	{DRAW, {1*SF, 1*SF}},
	{DRAW, {-1*SF, 1*SF}},
	{DRAW, {-5*SF, 0*SF}},
	{STOP, {0,0}}
};

const struct packet_t tongue_onethird_line[]=
{
	{MOVE, {0*SF, 5*SF}},
	{DRAW, {2*SF, 0}},
	{STOP, {0,0}}
};


const struct packet_t tongue_twothird[]=
{
	{MOVE, {0*SF, 4*SF}},
	{DRAW, {10*SF, 0*SF}},
	{DRAW, {1*SF, 1*SF}},
	{DRAW, {-1*SF, 1*SF}},
	{DRAW, {-10*SF, 0*SF}},
	{STOP, {0,0}}
};

const struct packet_t tongue_twothird_line[]=
{
	{MOVE, {0*SF, 5*SF}},
	{DRAW, {8*SF, 0}},
	{STOP, {0,0}}
};

const struct packet_t tongue_full[]=
{
	{MOVE, {0*SF, 4*SF}},
	{DRAW, {15*SF, 0*SF}},
	{DRAW, {1*SF, 1*SF}},
	{DRAW, {-1*SF, 1*SF}},
	{DRAW, {-15*SF, 0*SF}},
	{STOP, {0,0}}
};

const struct packet_t tongue_full_line[]=
{
	{MOVE, {0*SF, 5*SF}},
	{DRAW, {13*SF, 0}},
	{STOP, {0,0}}
};

void tongue_lash(struct tongue* frog_tongue, int y, int x)
{
	frog_tongue->position.y = y;
	frog_tongue->position.x = x;
	switch(frog_tongue->state)
	{
		case INACTIVE:
			Read_Btns();
			if(button_1_4_held()) frog_tongue->state = ONETHIRD;
			break;
		case ONETHIRD:
			frog_tongue->shape= (void*) tongue_onethird;
			frog_tongue->line= (void*) tongue_onethird_line;
			struct vector_t pos1 = {frog_tongue->position.y + 10, frog_tongue->position.x};
			check_monster_collision(&pos1, 10, 10);
			if(frog_tongue->cnt < 10)
			{
				frog_tongue->cnt += 1;
			}
			else
			{
				frog_tongue->state = TWOTHIRD;
				frog_tongue->cnt = 0;
			}
			break;
		case TWOTHIRD:
			frog_tongue->shape = (void*) tongue_twothird;
			frog_tongue->line= (void*) tongue_twothird_line;
			struct vector_t pos2 = {frog_tongue->position.y + 20, frog_tongue->position.x};
			check_monster_collision(&pos2, 10, 10);
			if(frog_tongue->cnt < 10)
			{
				frog_tongue->cnt += 1;
			}
			else
			{
				frog_tongue->state = FULL;
				frog_tongue->cnt = 0;
			}
			break;
		case FULL:
			frog_tongue->shape = (void*) tongue_full;
			frog_tongue->line= (void*) tongue_full_line;
			struct vector_t pos3 = {frog_tongue->position.y + 30, frog_tongue->position.x};
			check_monster_collision(&pos3, 10, 10);
			break;		
		default:
			break;
	}
}

void tongue_cancel(struct tongue* frog_tongue)
{
	frog_tongue->state = INACTIVE;
	frog_tongue->cnt = 0;
	frog_tongue->shape = (void*) tongue_onethird;
	frog_tongue->line = (void*) tongue_onethird_line;
}

