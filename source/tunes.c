#include <vectrex.h>
#include "tunes.h"


struct sound_adsr_table_t my_curve =
{
	.amplitude = { 0xFF, 0xFF, 0xED, 0xCB, 0xA9, 0x99, 0x88, 0x77, 0x66, 0x55, 0x44, 0x33, 0x22, 0x11, 0x00, 0x00}	// 32 nibbles amplitude offsets
};

struct sound_twang_table_t my_vibrato =
{
	//.frequency = {0, 10, 20, 10, 0, -1, -2, -1} // base frequency offsets
	.frequency = {0, 0, 0, 0, 0, 0, 0, 0}
};

const struct sound_music_t bing = 
{
	.adsr_table = &my_curve,   	//(struct sound_adsr_table_t*) &Vec_ADSR_FADE4,
	.twang_table = &my_vibrato, //(struct sound_twang_table_t*) &Vec_TWANG_VIBEHL,
	{
		24, 12,
		0, 128
	}
};
