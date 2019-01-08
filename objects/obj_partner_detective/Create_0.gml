create_event_initialise_character(id, "Max, Detective Pepsi Max", c_green, spr_partner_detective_avatar);

var upstairsUnlocked = ds_list_find_index(global.available_locations_list, RoomChoices.STORAGE);
if (upstairsUnlocked) {
	create_event_initialise_dialog_holder(id, partner_detective_3_dialog_content_init, partner_detective_3_dialog_resolver);
} else if (ds_map_find_value(global.cluesMap, "knows_about_clementine_dealing") != -1)  {
	create_event_initialise_dialog_holder(id, partner_detective_2_dialog_content_init, partner_detective_2_dialog_resolver);
} else {
	create_event_initialise_dialog_holder(id, partner_detective_1_dialog_content_init, partner_detective_1_dialog_resolver);
}

ds_list_add(contextMenuList, ContextMenuItemType.DISCUSS);

/*
Will initialise the following object variables:

body_text_sequence = argument[1];
charaters_sequence = argument[2];
choice_option_sequence = argument[3];
*/