#pragma once
#include "utils\vector.h"
#include "tongue.h"
#include <vectrex.h>

#define MAX_PLAYER_HEIGHT -40

enum jump_state{
	UP_FAST,
	UP_SLOW,
	DOWN_SLOW,
	DOWN_FAST,
};

struct jump{
	enum jump_state js;
	unsigned int js_counter;
};

struct player{
	struct vector_t position;
	struct packet_t* shape;
	struct jump jmp;
	unsigned int length;
	struct tongue frog_tongue;
};


void init_player(void);
void draw_player(void);
void handle_player(void);
void handle_input(void);
void handle_tongue(void);
void move_player(void);
	
