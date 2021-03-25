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
};


unsigned int check_platform_collision(struct vector_t* position, unsigned int ry, unsigned int rx);
void init_platforms(void);
void draw_platforms(void);
void move_platforms(int x);
