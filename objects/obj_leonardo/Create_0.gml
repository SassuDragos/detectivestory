create_event_initialise_character(id, "Leonardo Tubi;", c_green, spr_leonardo_avatar);

create_event_initialise_dialog_holder(id, leonardo_1_dialog_content_init, leonardo_1_dialog_resolver, leonardo_1_default_choices(), "1");

if(global.game_stage == 2) {
	create_event_initialise_dialog_holder(id, leonardo_1_dialog_content_init, leonardo_1_dialog_resolver, leonardo_1_default_choices(), "1");
}else if(global.game_stage == 3){
	create_event_initialise_dialog_holder(id, leonardo_2_dialog_content_init, leonardo_2_dialog_resolver, leonardo_2_default_choices(), "3");
	}

ds_list_add(contextMenuList, ContextMenuItemType.DISCUSS);