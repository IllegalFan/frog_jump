#pragma once
#include "utils\vector.h"
#include <vectrex.h>

enum jump_state{
	UP_FAST,
	UP_SLOW,
	DOWN_SLOW,
	DOWN_FAST,
	STILL,
};

struct jump{
	enum jump_state js;
	unsigned int js_counter;
};

struct player{
	struct vector_t position;
	struct jump jmp;
};


void init_player(void);
void draw_player(void);
void handle_player(void);
//void handle_jump(void);
void move_player(void);
	
