/// @function partner_detective_1_dialog_resolver(selected_dialog_choice) 

var selectedChoice = argument0;
var selectedDialogChoice = selectedChoice[0];
var defaultDialogChoices = ds_map_find_value(global.dialog_choices, obj_partner_detective);

toggle_read_choice(defaultDialogChoices, selectedDialogChoice, true);

ds_map_set(global.dialog_choices,obj_partner_detective, defaultDialogChoices);

var new_dialog_body_sequence = []
var new_dialog_character_sequence = []
var new_dialog_choice_sequence = []
var new_dialog_behaviour_sequence = []
	
switch(selectedDialogChoice) {
	case "Ask for background":
		new_dialog_body_sequence[0] = "Who are you?"
		new_dialog_character_sequence[0] = obj_player;
		////new_dialog_choice_sequence[0,0] = "Check answer..."
		new_dialog_behaviour_sequence[0] = increment_sarcastic_dialog;
		
		new_dialog_body_sequence[1] = get_background_question_body_text(global.cluesMap[? "no_of_background_questions_on_partner"]);
		new_dialog_character_sequence[1] = obj_partner_detective;
		new_dialog_choice_sequence[1] = defaultDialogChoices;
		
		break;
	case "Opinion on the case":
		new_dialog_body_sequence[0] = "What do you think about this case?"
		new_dialog_character_sequence[0] = obj_player;
		//new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_body_sequence[1] = "I think we are going in the right direction."
		new_dialog_character_sequence[1] = obj_partner_detective;
		new_dialog_choice_sequence[1] = defaultDialogChoices;
		
		break;
	case "Inquire about the smoking":
		new_dialog_body_sequence[0] = "Why do you smoke?"
		new_dialog_character_sequence[0] = obj_player;
		//new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_body_sequence[1] = "You are pushy about that, you know stress, and I look pretty cool doing it."
		new_dialog_character_sequence[1] = obj_partner_detective;
		new_dialog_choice_sequence[1] = defaultDialogChoices;
		
		break;
	case "Finish conversation":
		toggle_read_choice(defaultDialogChoices, selectedDialogChoice);
		break;
}

add_data_sequence_to_dialog(new_dialog_body_sequence, new_dialog_character_sequence, new_dialog_choice_sequence, new_dialog_behaviour_sequence);
move_to_next_dialog_step();

