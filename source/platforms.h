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
};

void init_platforms(void);
void draw_platforms(void);
//void move_platform(struct platform_t p, struct vector_t v);
