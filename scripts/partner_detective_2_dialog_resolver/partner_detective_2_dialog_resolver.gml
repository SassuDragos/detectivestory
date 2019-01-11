/// @function partner_detective_1_dialog_resolver(selected_dialog_choice) 

var selectedDialogChoice = argument0;
var defaultDialogChoices = partner_detective_1_default_choices();

var new_dialog_body_sequence = []
var new_dialog_character_sequence = []
var new_dialog_choice_sequence = []
	
switch(selectedDialogChoice) {
	case "Ask for background":
		var noOfBackgroundQuestions = ds_map_find_value(global.cluesMap, "no_of_background_questions_on_partner");
		noOfBackgroundQuestions ++;
		
		new_dialog_body_sequence[0] = "Who are you?"
		new_dialog_character_sequence[0] = obj_player;
		//new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_body_sequence[1] = get_background_question_body_text(noOfBackgroundQuestions);
		new_dialog_character_sequence[1] = obj_partner_detective;
		for (var index = 0; index < ds_list_size(defaultDialogChoices); index++) {
			new_dialog_choice_sequence[1,index] = ds_list_find_value(defaultDialogChoices,index);
		}
		
		ds_map_set(global.cluesMap, "no_of_background_questions_on_partner", noOfBackgroundQuestions);
		break;
	case "Opinion on the case":
		new_dialog_body_sequence[0] = "What do you think about this case?"
		new_dialog_character_sequence[0] = obj_player;
		//new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_body_sequence[1] = "I think we are going in the right direction."
		new_dialog_character_sequence[1] = obj_partner_detective;
		for (var index = 0; index < ds_list_size(defaultDialogChoices); index++) {
			new_dialog_choice_sequence[1,index] = ds_list_find_value(defaultDialogChoices,index);
		}
		
		break;
	case "Inquire about the smoking":
		new_dialog_body_sequence[0] = "Why do you smoke?"
		new_dialog_character_sequence[0] = obj_player;
		//new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_body_sequence[1] = "You are pushy about that, you know stress, and I look pretty cool doing it."
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

