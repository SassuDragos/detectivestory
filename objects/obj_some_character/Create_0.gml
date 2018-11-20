create_event_initialise_character(id, "Joanne", c_green, spr_girl_avatar);

dialog_body_text_list = [2];
dialog_character_list = [2];
dialog_body_text_list[0] = "Hello Player!";
dialog_body_text_list[1] = "Hello Joanne!";

dialog_character_list[0] = id;
dialog_character_list[1] = obj_player.id;

create_event_initialise_dialog_holder(id, dialog_body_text_list, dialog_character_list, []);