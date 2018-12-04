/// @function partner_detective_1_dialog_resolver(selected_dialog_choice) 

var selectedDialogChoice = argument0;
var defaultDialogChoices = partner_detective_3_default_choices();

var new_dialog_body_sequence = []
var new_dialog_character_sequence = []
var new_dialog_choice_sequence = []
	
switch(selectedDialogChoice) {
	case "Opinion on Clementine":
		new_dialog_body_sequence[0] = "What do you think about Clementine?"
		new_dialog_character_sequence[0] = obj_player;
		new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_body_sequence[1] = "I believe her, she looks devastated."
		new_dialog_character_sequence[1] = obj_partner_detective;
		for (var index = 0; index < ds_list_size(defaultDialogChoices); index++) {
			new_dialog_choice_sequence[1,index] = ds_list_find_value(defaultDialogChoices,index);
		}
		
		break;
	case "Opinion on Violet":
		new_dialog_body_sequence[0] = "What do you think about Violet?"
		new_dialog_character_sequence[0] = obj_player;
		new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_body_sequence[1] = "She was really polite and helpful, but at the same time a bit cold."
		new_dialog_character_sequence[1] = obj_partner_detective;
		for (var index = 0; index < ds_list_size(defaultDialogChoices); index++) {
			new_dialog_choice_sequence[1,index] = ds_list_find_value(defaultDialogChoices,index);
		}
		
		break;
	case "Opinion on Marcelo":
		new_dialog_body_sequence[0] = "What do you think about Michigan?"
		new_dialog_character_sequence[0] = obj_player;
		new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_body_sequence[1] = "I didn`t know him before he was killed."
		new_dialog_character_sequence[1] = obj_partner_detective;
		for (var index = 0; index < ds_list_size(defaultDialogChoices); index++) {
			new_dialog_choice_sequence[1,index] = ds_list_find_value(defaultDialogChoices,index);
		}
		break;
	case "Opinion on Michigan":
		new_dialog_body_sequence[0] = "What do you think about Michigan?"
		new_dialog_character_sequence[0] = obj_player;
		new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_body_sequence[1] = "He’s just a stoner I doubt he has anything to do with this."
		new_dialog_character_sequence[1] = obj_partner_detective;
		for (var index = 0; index < ds_list_size(defaultDialogChoices); index++) {
			new_dialog_choice_sequence[1,index] = ds_list_find_value(defaultDialogChoices,index);
		}
		break;
	case "Finish conversation":
		break;
}

add_data_sequence_to_dialog(new_dialog_body_sequence, new_dialog_character_sequence, new_dialog_choice_sequence);
move_to_next_dialog_step();
