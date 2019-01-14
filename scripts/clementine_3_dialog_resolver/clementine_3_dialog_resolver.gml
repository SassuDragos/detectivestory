/// @function clementine_1_dialog_resolver(selected_dialog_choice) 

var selectedChoice = argument0;
var selectedDialogChoice = selectedChoice[0];
var defaultDialogChoices = ds_map_find_value(global.dialog_choices, obj_clementine);

toggle_read_choice(defaultDialogChoices, selectedDialogChoice, true);

ds_map_set(global.dialog_choices,obj_clementine, defaultDialogChoices);

var new_dialog_body_sequence = []
var new_dialog_character_sequence = []
var new_dialog_choice_sequence = []
	
switch(selectedDialogChoice) {
	case "Ask what’s wrong":
		new_dialog_body_sequence[0] = "Are you alright what happened?"
		new_dialog_character_sequence[0] = obj_player.id;
		////new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_body_sequence[1] = "Please help me!!! Please"
		new_dialog_character_sequence[1] = obj_clementine.id;
		new_dialog_choice_sequence[1] = defaultDialogChoices;
		//add_choice_to_list(new_dialog_choice_sequence[1], "Ask about discussion", selectedChoice[2] + 1, selectedDialogChoice);
		
		break; 
	
	case "Finish conversation":
		toggle_read_choice(defaultDialogChoices, selectedDialogChoice);
		break;
}

add_data_sequence_to_dialog(new_dialog_body_sequence, new_dialog_character_sequence, new_dialog_choice_sequence);
move_to_next_dialog_step();

