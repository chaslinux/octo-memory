/// @description Pick a card
if(visible and global.game_state == states.playing) // if we are playing
{
	face = 1;
	global.cards_picked += 1;

	if(global.cards_picked > 1) // one card already selected
	{
		obj_controller.card_sel_2 = self;
		global.game_state = states.paused;
		
		if(obj_controller.card_sel_1.index == obj_controller.card_sel_2.index) // if you selected two times the same card
		{
			face = 0;
			reset_selection(obj_controller.deck);
			global.game_state = states.playing;
		}
		else // if cards are different, check if they are equal or not with a 0.5 delay (to show the pair a bit before flipping/disappearing) 
		{
			alarm[0] = 0.5 * room_speed;
		}
	}
	else
	{
		obj_controller.card_sel_1 = self;
	}
}




