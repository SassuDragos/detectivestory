if(place_meeting(x,y, obj_player)){
	if(mouse_check_button_pressed(mb_right)){
		instantiate_dialog(dialog_body_text_list, dialog_character_list, []);
	}
}

/*
	argument[0]: Body text sequence
	argument[1]: Owner character of each dialogue sequence.
	argument[2]: Dialogue options for each sequence
*/