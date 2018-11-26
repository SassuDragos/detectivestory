if(mouse_check_button_pressed(mb_right)) {
	if(global.context_menu_engine == noone){
		global.context_menu_engine = instance_create_depth(0, 0, 0, obj_context_menu_engine);
		global.context_menu_engine.menuX = mouse_x;
		global.context_menu_engine.menuY = mouse_y;
		global.context_menu_engine.inputTypeList[0] = ContextMenuItemType.GOTO; 
		global.context_menu_engine.inputTypeList[1] = ContextMenuItemType.DISCUSS; 
		global.context_menu_engine.inputTypeList[2] = ContextMenuItemType.PICK_UP; 	
	}
}
	
if(place_meeting(x,y, obj_player)){
	if keyboard_check_pressed(ord("A")) {
		instantiate_dialog(body_text_sequence, charaters_sequence, choice_option_sequence);
	}

}


/*
	argument[0]: Body text sequence
	argument[1]: Owner character of each dialogue sequence.
	argument[2]: Dialogue options for each sequence
*/