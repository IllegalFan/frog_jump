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
	struct vector_t position;
	struct packet_t (*shape [2])[];
	unsigned int cnt;
};

void tongue_lash(struct tongue* frog_tongue, int y, int x);
void tongue_cancel(struct tongue* frog_tongue);
