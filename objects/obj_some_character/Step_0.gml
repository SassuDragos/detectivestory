	
if(place_meeting(x,y, obj_player) && global.actions_allowed){
	if keyboard_check_pressed(ord("A")) {
		instantiate_dialog(body_text_sequence, charaters_sequence, choice_option_sequence);
	}
}


/*
	argument[0]: Body text sequence
	argument[1]: Owner character of each dialogue sequence.
	argument[2]: Dialogue options for each sequence
*/