/// @description Insert description here

if (page == 0) obj_player.move = false;

//increase page
if(mouse_check_button_pressed(mb_right)){
	if (page + 1 < array_length_1d(text)){
		page += 1;
		char_count = 0;
		obj_player.move = false;
	} else {
		obj_player.move = true;
		instance_destroy();
		creator.alarm[1] = 1;
	}
}
