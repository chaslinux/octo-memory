function check_victory(argument0) {
	var deck = argument0;
	var deck_size = ds_list_size(deck);

	for(var i = 0; i < deck_size; i+=1)
	{
		if(deck[| i].visible == true) // not yet game over
		{
			return false;
		}
	}

	return true;
}
