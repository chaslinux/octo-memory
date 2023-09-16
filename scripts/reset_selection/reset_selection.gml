function reset_selection(argument0) {
	var deck = argument0;

	cover_all_cards(deck);

	global.cards_picked = 0;
	obj_controller.card_sel_1 = noone;
	obj_controller.card_sel_2 = noone;



}
