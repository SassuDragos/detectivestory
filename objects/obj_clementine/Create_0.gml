create_event_initialise_character(id, "Clementine Grzyb Tubi", c_green, spr_clementine_avatar);

if (global.game_stage == 1){
	create_event_initialise_dialog_holder(id, clementine_1_dialog_content_init, clementine_1_dialog_resolver, clementine_1_default_choices(), "1");
}else if(global.game_stage == 2) {
	create_event_initialise_dialog_holder(id, clementine_2_dialog_content_init, clementine_2_dialog_resolver, clementine_2_default_choices(), "2");
}else if(global.game_stage == 3){
	create_event_initialise_dialog_holder(id, clementine_4_dialog_content_init, clementine_4_dialog_resolver, clementine_4_default_choices(), "3");
}

ds_list_add(contextMenuList, ContextMenuItemType.DISCUSS);
/*
Will initialise the following object variables:

body_text_sequence = argument[1];
charaters_sequence = argument[2];
choice_option_sequence = argument[3];
*/