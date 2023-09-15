/// @description Show the proper sprite

if (face == 0)
{
	sprite_index = spr_cardback;	
}
else
{
	switch(type)
	{
		case 0:
			sprite_index = spr_coffin;
			break;
		case 1:
			sprite_index = spr_eyeball;
			break;
		case 2:
			sprite_index = spr_frankenstein;
			break;
		case 3:
			sprite_index = spr_ghost;
			break;
		case 4:
			sprite_index = spr_raven;
			break;
		case 5:
			sprite_index = spr_rooster;
			break;
		case 6:
			sprite_index = spr_skull;
			break;
		case 7:
			sprite_index = spr_witch;
			break;
		default:
			break;
	}
}









