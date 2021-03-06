#include "platforms.h"
#include "lib/print/print.h"
#include <vectrex.h>


#undef SF
#define SF 15

const struct packet_t vectors_platform_1[]=
{
	{MOVE, { 0 * SF, -4* SF}},
	{DRAW, { 1 * SF, 0 * SF}},
	{DRAW, { 0 * SF, 8 * SF}},
	{DRAW, { -1 * SF, 0 * SF}},
	{DRAW, { 0 * SF, -8 * SF}},
	{STOP, {0,0}},
};

const struct packet_t vectors_platform_2[]=
{
	{MOVE, { 0 * SF, -4 * SF}},
	{DRAW, { 1 * SF, 1 * SF}},
	{DRAW, { 0 * SF, 8 * SF}},
	{DRAW, { -1 * SF, -1 * SF}},
	{DRAW, { 0 * SF, -8 * SF}},
	{STOP, {0,0}},
};

const struct packet_t vectors_platform_3[]=
{
	{MOVE, { 0 * SF, -4 * SF}},
	{DRAW, { 1 * SF, -1 * SF}},
	{DRAW, { 0 * SF, 8 * SF}},
	{DRAW, { -1 * SF, 1 * SF}},
	{DRAW, { 0 * SF, -8 * SF}},
	{STOP, {0,0}},
};

struct platform_t platforms[] = 
{
	{0,{-100,0},0,0,0,0x30},
	{0,{-50,0},0,0,0,0x30},
	{0,{0,0},0,0,0,0x30},
	{0,{50,0},0,0,0,0x30},
	{0,{100,0},0,0,0,0x30},
	/*{NONMOVING,{50, 0},0,0,0},
	{MOVING,{80,0},0,0,2},
	{MOVING,{110,0},0,1,1},
	{NONMOVING,{127,0},0,0,0},*/
};

unsigned int nonmoving_prob = 5;
unsigned int speed = 1;
unsigned int current_scale_factor = 0x10;

/**Function which is used at the start of a game:
* Randomizes the x value of every single platform.
*/
void init_platforms(void)
{
	nonmoving_prob = 10;
	speed = 1;
	current_scale_factor = 0x30;
	unsigned int size = sizeof platforms / sizeof platforms[0];
	platforms[0].shape = (void*) vectors_platform_1;
	struct vector_t pos = {-100,0};
	platforms[0].position = pos;
	platforms[0].type = NONMOVING;
	platforms[0].scale_factor = 0x30;
	for(unsigned int i = 1; i < size; i++)
	{
		platforms[i].type = NONMOVING;
		platforms[i].shape = (void*) vectors_platform_1;
		platforms[i].scale_factor = current_scale_factor;
		int new_pos = (int) Random();
		if(new_pos > 100)
		{
			new_pos &= (int)0b11011111;
		}
		platforms[i].position.x = new_pos;
		platforms[i].position.y = 50 * (int)i - 100;
	}
}

/** This function is always called after every frame.
 *  It changes the x value of every moving platform. 
 *  When it reaches the border of the screen it changes the direction.
 */
void handle_platforms(void)
{
	unsigned int size = sizeof platforms / sizeof platforms[0];
	for(unsigned int i = 0; i < size; i++)
	{
		if(platforms[i].type == MOVING)
		{
			if(platforms[i].dir_right)
			{
				if(platforms[i].position.x < 127 - (int)(platforms[i].scale_factor/2)) platforms[i].position.x+=(int)platforms[i].speed;
				else 
				{
					platforms[i].shape = (void*) vectors_platform_3;
					platforms[i].dir_right = 0;
				}
			}
			else
			{
				if(platforms[i].position.x > -128 + (int)(platforms[i].scale_factor / 2)) platforms[i].position.x-=(int)platforms[i].speed;
				else 
				{
					platforms[i].shape = (void*) vectors_platform_2;
					platforms[i].dir_right = 1;
				}
			}
		}
		
	}
}


/**This function is always called after every frame.
 * Function to draw every single platform on the screen.
 */
void draw_platforms(void)
{
	unsigned int size = sizeof platforms / sizeof platforms[0];
	for(unsigned int i = 0; i < size; i++)
	{
		Reset0Ref();
		dp_VIA_t1_cnt_lo = 0x7f;
		Moveto_d(platforms[i].position.y, platforms[i].position.x);
		dp_VIA_t1_cnt_lo = platforms[i].scale_factor;
		Draw_VLp((void*) platforms[i].shape);
	}
}

/**This function is always called when the player is in a downward motion.
 * Function to check if the player has collided with a platform.
 */
unsigned int check_platform_collision(struct vector_t* position)
{
	unsigned int size = sizeof platforms / sizeof platforms[0];
	unsigned int hits = 0;
	int y0 = position->y;
	int x0 = position->x;
	for(unsigned int i = 0; i < size; i++)
	{
		unsigned int ry = platforms[i].scale_factor / 8;
		unsigned int rx = platforms[i].scale_factor / 2;
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

/**This function is always called when the player reaches a new peak height.
 * It moves the platforms down and as soon as a platform goes below -128
 * it appears at the top again. When it appears at the top again it has
 * a 20% chance to become a moving platform with a speed inbetween 1 and 3.
 * Furthermore the starting x value is always a random number between -128
 * and 96.
 */
void move_platforms(int x)
{
	unsigned int size = sizeof platforms / sizeof platforms[0];
	for(unsigned int i = 0; i < size; i++)
	{
		if(platforms[i].position.y > -127) platforms[i].position.y -= x;
		else
		{
			if(platforms[i].position.y - x >= 0)
			{	
				if(Random() >= 64)
				{
					 platforms[i].type = NONMOVING;
					 platforms[i].shape = (void*) vectors_platform_1;
				}
				else 
				{
					platforms[i].type = MOVING;
					platforms[i].speed =speed;
					if(platforms[i].dir_right == 1) platforms[i].shape = (void*) vectors_platform_2;
					else platforms[i].shape = (void*) vectors_platform_3;
				}
				platforms[i].scale_factor = current_scale_factor;
				platforms[i].position.y -= x;
				int new_pos = (int) Random();
				if(new_pos > 127 - (int)(platforms[i].scale_factor/2))
				{
					new_pos -= (int)platforms[i].scale_factor / 2;
				}
				else if(new_pos < -128 + (int)(platforms[i].scale_factor/2))
				{
					new_pos += (int)platforms[i].scale_factor/2;
				}
				platforms[i].position.x = new_pos;
			}
			else platforms[i].position.y -= x;
		}
	}
}

void increase_diff(void)
{
	speed++;
	current_scale_factor -= 8;
}

void print_nonmovingprob(void)
{
	print_unsigned_int(100,50, nonmoving_prob);
}

		
