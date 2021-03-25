#pragma once 
#include "utils\vector.h"

enum tongue_state{
	INACTIVE,
	ONETHIRD,
	TWOTHIRD,
	FULL,
};

struct tongue{
	enum tongue_state state;
	struct vector_t tip_pos;
	struct packet_t* shape;
	unsigned int cnt;
};

void tongue_lash(int y, int x);
void draw_tongue(int y, int x);
void tongue_cancel(void);
