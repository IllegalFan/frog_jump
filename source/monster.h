#pragma once
#include <vectrex.h>
#include "utils/vector.h"

enum state{
	ALIVE,
	DEAD
};

struct monster{
	struct vector_t pos;
	struct  packet_t* shape;
	enum state monster_state;
	unsigned int dir_right;
	unsigned int speed;
};

void generate_monster(struct vector_t pos);
void draw_bird(void);
void move_monsters(int distance);
void handle_monsters(void);
