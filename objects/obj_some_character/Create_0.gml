create_event_initialise_character(id, "Joanne", c_green, spr_girl_avatar);

var dialog_body_text_list = [];
var dialog_character_list = [];
var dialog_choice_list = [];

dialog_character_list[0] = id;
dialog_body_text_list[0] = "Hello Player!Hello Player!Hello Player!Hello Player!Hello Player!Hello Player!Hello Player!Hello Player!Hello Player!Hello Player!Hello Player!Hello Player!Hello Player!Hello Player!Hello Player!Hello Player!Hello Player!Hello Player!Hello Player!Hello Player!Hello Player!Hello Player!Hello Player!Hello Player!Hello Player!Hello Player!Hello Player!Hello Player!";

dialog_body_text_list[1] = "Hello Joanne!";
dialog_character_list[1] = obj_player.id;
dialog_choice_list[1,0] = "Choice 1" 
dialog_choice_list[1,1] = "Choice 2 Choice 2Choice 2Choice 2Choice 2Choice 2Choice 2Choice 2Choice 2Choice 2Choice 2Choice 2Choice 2Choice 2Choice 2Choice 2Choice 2Choice 2Choice 2Choice 2Choice 2Choice 2Choice 2Choice 2Choice 2Choice 2Choice 2Choice 2Choice 2Choice 2Choice 2Choice 2Choice 2" 
dialog_choice_list[1,2] = "Choice 3" 
dialog_choice_list[1,3] = "Choice 4"
dialog_choice_list[1,4] = "Choice 5" 
dialog_choice_list[1,5] = "Choice 6" 
dialog_choice_list[1,6] = "" 
dialog_choice_list[1,7] = "" 

create_event_initialise_dialog_holder(id, dialog_body_text_list, dialog_character_list, dialog_choice_list);
variable_global_set("context_menu_engine", noone);
/*
Will initialise the following object variables:

body_text_sequence = argument[1];
charaters_sequence = argument[2];
choice_option_sequence = argument[3];
*/