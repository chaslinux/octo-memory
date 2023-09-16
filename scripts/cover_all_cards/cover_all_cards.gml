function cover_all_cards(argument0) {
	var deck = argument0;
	var deck_size = ds_list_size(deck);

	for(var i = 0; i < deck_size; i+=1)
	{
		deck[| i].face = 0;
	}


}
