#include "print.h"
#include <vectrex.h>
#include "../../utils/vector.h"

#define SF 32

const struct packet_t zero[] =
{
	{DRAW, { 0 * SF, -1 * SF}},
	{DRAW, { 2 * SF, 0 * SF}},
	{DRAW, { 0 * SF, 1 * SF}},
	{DRAW, { -2 * SF, 0 * SF}},			
	{STOP, {0,0}},
};

const struct packet_t one[] =
{
	{DRAW, { 2 * SF, 0 * SF}},		
	{STOP, {0,0}},
};

const struct packet_t two[] =
{
	{DRAW, { 0 * SF, -1 * SF}},
	{DRAW, { 1 * SF, 0 * SF}},
	{DRAW, { 0 * SF, 1 * SF}},
	{DRAW, { 1 * SF, 0 * SF}},			
	{DRAW, { 0 * SF, -1 * SF}},			
	{STOP, {0,0}},
};

const struct packet_t three[] =
{
	{DRAW, { 0 * SF, -1 * SF}},
	{MOVE, { 0* SF, 1 * SF}},
	{DRAW, { 2 * SF, 0 * SF}},
	{DRAW, { 0 * SF, -1 * SF}},
	{MOVE, { -1* SF, 0 * SF}},
	{DRAW, { 0 * SF, 1 * SF}},			
	{STOP, {0,0}},
};

const struct packet_t four[] =
{
	{DRAW, { 2 * SF, 0 * SF}},
	{MOVE, { -1*SF, 0*SF}},
	{DRAW, { 0 * SF, -1 * SF}},
	{DRAW, { 1 * SF, 0 * SF}},		
	{STOP, {0,0}},
};

const struct packet_t five[] =
{
	{DRAW, { 0 * SF, -1 * SF}},
	{MOVE, { 0 * SF, 1 * SF}},
	{DRAW, { 1 * SF, 0 * SF}},
	{DRAW, { 0 * SF, -1 * SF}},
	{DRAW, { 1 * SF, 0 * SF}},		
	{DRAW, { 0 * SF, 1 * SF}},	
	{STOP, {0,0}},
};

const struct packet_t six[] =
{
	{DRAW, { 1 * SF, 0 * SF}},
	{DRAW, { 0 * SF, -1 * SF}},
	{MOVE, { -1 * SF, 1 * SF}},
	{DRAW, { 0 * SF, -1 * SF}},		
	{DRAW, { 2 * SF, 0 * SF}},
	{DRAW, { 0 * SF, 1 * SF}},	
	{STOP, {0,0}},
};

const struct packet_t seven[] =
{
	{DRAW, { 2 * SF, 0 * SF}},
	{DRAW, { 0 * SF, -1 * SF}},	
	{STOP, {0,0}},
};

const struct packet_t eight[] =
{
	{DRAW, { 0 * SF, -1 * SF}},
	{DRAW, { 2 * SF, 0 * SF}},
	{DRAW, { 0 * SF, 1 * SF}},
	{DRAW, { -2 * SF, 0 * SF}},	
	{MOVE, { 1 * SF, 0 *SF}},
	{DRAW, { 0 * SF, -1 * SF}},	
	{STOP, {0,0}},
};

const struct packet_t nine[] =
{
	{DRAW, { 0 * SF, -1 * SF}},
	{MOVE, { 0 * SF, 1 *SF}},
	{DRAW, { 2 * SF, 0 * SF}},
	{DRAW, { 0 * SF, -1 * SF}},
	{DRAW, { -1 * SF, 0 * SF}},			
	{DRAW, { 0 * SF, 1 * SF}},			
	{STOP, {0,0}},
};

const struct packet_t (*const numbers[])[] = {&zero, &one, &two, &three, &four, &five, &six, &seven, &eight, &nine};
long unsigned int number;
int draw_index;

void draw_digit(unsigned int d)
{
	Reset0Ref();
	dp_VIA_t1_cnt_lo = 0x7f;
	Moveto_d(110, draw_index);
	dp_VIA_t1_cnt_lo = 0x18;
	Intensity_5F();
	Draw_VLp((void*) numbers[d]);
	draw_index+= 10;
}	
	
void print_long_unsigned_int_efficiently(long unsigned int z)
{
	number = z;
	unsigned int digit = 0;
	draw_index = -110;
	
	while(number >= 1000)
	{
		digit += 1;
		number -= 1000;
	}
	draw_digit(digit);
	digit = 0;
	while(number >= 100)
	{
		digit += 1;
		number -= 100;
	}
	draw_digit(digit);
	digit = 0;
	while(number >= 10)
	{
		digit += 1;
		number -= 10;
	}
	draw_digit(digit);
	draw_digit((unsigned int)number);
}

