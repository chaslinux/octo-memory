/// @description Check pair
if(obj_controller.card_sel_1.type == obj_controller.card_sel_2.type)
{
	obj_controller.deck[| obj_controller.card_sel_1.index].visible = false;
	obj_controller.deck[| obj_controller.card_sel_2.index].visible = false;

	if(check_victory(obj_controller.deck))
	{
		global.game_state = states.won;
	}
}
reset_selection(obj_controller.deck);

if(global.game_state == states.paused)
{
	global.game_state = states.playing;
}





