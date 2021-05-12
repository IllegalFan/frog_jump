#pragma once
#include "utils/vector.h"

#define MAX_PLATFORMS 10

enum p_type
{
	NONMOVING,
	MOVING,
};

struct platform_t
{
	enum p_type type;
	struct vector_t position;
	struct packet_t* shape;
	unsigned int dir_right;
	unsigned int speed;
	unsigned int scale_factor;
};


unsigned int check_platform_collision(struct vector_t* position);
void handle_platforms(void);
void init_platforms(void);
void draw_platforms(void);
void move_platforms(int x);
void print_nonmovingprob(void);
