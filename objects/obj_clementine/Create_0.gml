create_event_initialise_character(id, "Clementine Grzyb Tubi", c_green, spr_clementine_avatar);

if (global.game_stage == 1){
	create_event_initialise_dialog_holder(id, clementine_1_dialog_content_init, clementine_1_dialog_resolver);
} else {
	create_event_initialise_dialog_holder(id, clementine_2_dialog_content_init, clementine_2_dialog_resolver);
}

ds_list_add(contextMenuList, ContextMenuItemType.DISCUSS);
/*
Will initialise the following object variables:

body_text_sequence = argument[1];
charaters_sequence = argument[2];
choice_option_sequence = argument[3];
*/