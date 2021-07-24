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
	unsigned int cooldown;
};

void generate_monster(struct vector_t pos);
void draw_bird(void);
void move_monsters(int distance);
void handle_monsters(void);
unsigned int check_monster_collision(struct vector_t* position, unsigned int ry, unsigned int rx);
unsigned int compare_x_pos(int x);
