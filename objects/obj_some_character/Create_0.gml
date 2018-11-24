create_event_initialise_character(id, "Joanne", c_green, spr_girl_avatar);

var dialog_body_text_list = [2];
var dialog_character_list = [2];
var dialog_choice_list = [2];

dialog_character_list[0] = id;
dialog_body_text_list[0] = "Hello Player!";
dialog_choice_list[0,0] = "";

dialog_body_text_list[1] = "Hello Joanne!";
dialog_character_list[1] = obj_player.id;
dialog_choice_list[1,0] = "Choice 1" 
dialog_choice_list[1,1] = "Choice 2" 

create_event_initialise_dialog_holder(id, dialog_body_text_list, dialog_character_list, dialog_choice_list);
/*
Will initialise the following object variables:

body_text_sequence = argument[1];
charaters_sequence = argument[2];
choice_option_sequence = argument[3];
*/