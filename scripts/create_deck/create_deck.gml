function create_deck(argument0, argument1) {
	var deck = argument0;
	var deck_size = argument1 * 2;

	for(var i = 0; i < deck_size; i+=1)
	{
		ds_list_add(deck, instance_create_layer(0, 0, "Instances", obj_card));
	}

	// assign card types to card objects and set up cards
	for(var i = 0; i < deck_size; i+=1)
	{
		deck[| i].type = i % (deck_size/2);
		deck[| i].face = 0;
		deck[| i].index = i;
		deck[| i].visible = false;
	}

	shuffle_cards(deck);


}
