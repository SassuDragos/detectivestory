/// @function clementine_1_dialog_resolver(selected_dialog_choice) 

var selectedDialogChoice = argument0;
var defaultDialogChoices = clementine_1_default_choices();

var knowsMarioWearsRing = ds_map_find_value(global.cluesMap, "knows_mario_wears_ring");
var hasDiscussedAboutBruise = ds_map_find_value(global.cluesMap, "asked_bruise");

var new_dialog_body_sequence = []
var new_dialog_character_sequence = []
var new_dialog_choice_sequence = []
	
switch(selectedDialogChoice) {
	case "Ask for background":
		new_dialog_body_sequence[0] = "Who are you? What is your relationship with Marcelo?"
		new_dialog_character_sequence[0] = obj_player.id;
		new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_body_sequence[1] = "I’m Clementine Grzyb Tubi, *sobs* Marcelo was my husband *sobs*."
		new_dialog_character_sequence[1] = obj_clementine.id;
		for (var index = 0; index < ds_list_size(defaultDialogChoices); index++) {
			new_dialog_choice_sequence[1,index] = ds_list_find_value(defaultDialogChoices,index);
		}
		
		break;
	case "Check for alibi":
		new_dialog_body_sequence[0] = "Where were you at 10:15? Did you see anything?"
		new_dialog_character_sequence[0] = obj_player.id
		new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_body_sequence[1] = "I was delivering a pizza at that time. When I arrived, he was… well… *cries for a while*"
		new_dialog_character_sequence[1] = obj_clementine.id
		new_dialog_choice_sequence[1,0] = "Ask about address"
		for (var index = 0; index < ds_list_size(defaultDialogChoices); index++) {
			new_dialog_choice_sequence[1,index+1] = ds_list_find_value(defaultDialogChoices, index);
		}
		break;
	case "Ask about bruise":
		change_clue_status("asked_bruise", true);
		new_dialog_body_sequence[0] = "How did you get that bruise on your face?"
		new_dialog_character_sequence[0] = obj_player.id
		new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_body_sequence[1] = "*covers face abruptly* I fell on a door knob… really, I`m a bit clumsy sometimes."
		new_dialog_character_sequence[1] = obj_clementine.id
		new_dialog_choice_sequence[1,0] = "Inquire if Marcelo is the bruiser";
		for (var index = 0; index < ds_list_size(defaultDialogChoices); index++) {
			new_dialog_choice_sequence[1,index+1] = ds_list_find_value(defaultDialogChoices, index);
		}
		 
		break;
	case "Ask about address":
		new_dialog_body_sequence[0] = "What is the address you delivered the pizza to?"
		new_dialog_character_sequence[0] = obj_player.id
		new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_body_sequence[1] = "I don`t know, I`m sorry I can`t remember"
		new_dialog_character_sequence[1] = obj_clementine.id
		for (var index = 0; index < ds_list_size(defaultDialogChoices); index++) {
			new_dialog_choice_sequence[1,index] = ds_list_find_value(defaultDialogChoices, index);
		}
		break;
	case "Ask about ring":
		new_dialog_body_sequence[0] = "Is this ring yours, or do you know it’s owner?"
		new_dialog_character_sequence[0] = obj_player.id
		new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_body_sequence[1] = "No, I have never seen it before."
		new_dialog_character_sequence[1] = obj_clementine.id
		for (var index = 0; index < ds_list_size(defaultDialogChoices); index++) {
			new_dialog_choice_sequence[1,index] = ds_list_find_value(defaultDialogChoices, index);
		}
		break;
	case "Inquire if Marcelo is the bruiser":
		new_dialog_body_sequence[0] = "Was Marcelo the one who hit you?"
		new_dialog_character_sequence[0] = obj_player.id
		new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_body_sequence[1] = "*surprised* Marcelo? No, it wasn`t him… I mean… I fell, so nobody did it."
		new_dialog_character_sequence[1] = obj_clementine.id
		
		for (var index = 0; index < ds_list_size(defaultDialogChoices); index++) {
			new_dialog_choice_sequence[1,index] = ds_list_find_value(defaultDialogChoices, index);
		}
		break;
	case "Finish conversation":
		break;
}

add_data_sequence_to_dialog(new_dialog_body_sequence, new_dialog_character_sequence, new_dialog_choice_sequence);
move_to_next_dialog_step();

