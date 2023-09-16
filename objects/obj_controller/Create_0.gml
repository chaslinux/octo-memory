/// @description Set up deck
enum states {
	paused,
	playing,
	won,
	lost
};
global.game_state = states.paused; // 0: paused; 1: playing; 2: won; 3: lost;

global.cards_picked = 0;

play_time = 60;
cur_time = 60;
cards_number = 8;

card_sel_1 = noone;
card_sel_2 = noone;

deck = ds_list_create();

create_deck(deck, cards_number);
alarm[0] = play_time * room_speed;








