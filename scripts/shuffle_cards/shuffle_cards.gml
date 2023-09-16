function shuffle_cards(argument0) {
	var gamedeck = argument0;

	var deck_size = ds_list_size(deck);
	var cards_x = 130;
	var cards_y = 160;

	randomize();
	ds_list_shuffle(deck);

	// position cards on the table
	var cards = 1;
	for(var i = 0; i < deck_size; i+=1)
	{
		deck[| i].x = cards_x;
		deck[| i].y = cards_y;
		deck[| i].index = i;
		deck[| i].visible = true;
	
		if(cards % 4 == 0)
		{
			cards_x = 130;
			cards_y += 160;
		}
		else
		{
			cards_x += 110;
		}
		cards += 1;	
	}

	cover_all_cards(deck);
	global.game_state = 1;


}
