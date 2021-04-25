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

void print_long_unsigned_int_efficiently(long unsigned int z)
{
	long unsigned int number = z;
	unsigned int digit;
	int index = -70;
	while(number)
	{
		digit = (unsigned int)number % 10;
		number = number / 10;
		Reset0Ref();
		dp_VIA_t1_cnt_lo = 0x7f;
		Moveto_d(110, index);
		dp_VIA_t1_cnt_lo = 0x18;
		Intensity_5F();
		Draw_VLp((void*) numbers[digit]);
		index-= 10;
	}
}

