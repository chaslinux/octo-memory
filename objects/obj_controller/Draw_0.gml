/// @description draw UI
switch(global.game_state)
{
	case states.playing: // playing
		cur_time = ceil(alarm[0]/room_speed);
		break;

	case states.won: // won
		alarm[0] = -1;
		draw_set_font(fnt_state);
		draw_set_color(c_green);
		draw_text(room_width/2 - 100, room_height/2 - 100, "YOU WON!");
		draw_set_font(fnt_timer);
		draw_text(room_width/2 - 150, room_height/2, "Press ENTER to play again");
		break;

	case states.lost: // lost
		alarm[0] = -1;
		draw_set_font(fnt_state);
		draw_set_color(c_red);
		draw_text(room_width/2 - 100, room_height/2 - 100, "YOU LOST!");
		draw_set_font(fnt_timer);
		draw_text(room_width/2 - 150, room_height/2, "Press ENTER to play again");		
		break;

	default:
		break;
}

draw_set_font(fnt_timer);
draw_set_color(c_white);
draw_text((room_width/2)-100, 20, "Time left: " + string(cur_time));
