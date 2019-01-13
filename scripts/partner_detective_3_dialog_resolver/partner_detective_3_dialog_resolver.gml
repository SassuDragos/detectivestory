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
	case "Opinion on Clementine":
		new_dialog_body_sequence[0] = "Who are you?"
		new_dialog_character_sequence[0] = obj_player;
		////new_dialog_choice_sequence[0,0] = "Check answer..."
		new_dialog_behaviour_sequence[0] = increment_sarcastic_dialog;
		
		
		var before = global.cluesMap[? "no_of_background_questions_on_partner"];
		new_dialog_body_sequence[1] = get_background_question_body_text(global.cluesMap[? "no_of_background_questions_on_partner"]);
		new_dialog_character_sequence[1] = obj_partner_detective;
		new_dialog_choice_sequence[1] = defaultDialogChoices;
		
		if(global.cluesMap[? "no_of_background_questions_on_partner"] == before) {
			toggle_read_choice(defaultDialogChoices, selectedDialogChoice, false);
		}
		
		break;
	case "Opinion on Violet":
		new_dialog_body_sequence[0] = "What do you think about Violet?"
		new_dialog_character_sequence[0] = obj_player;
		//new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_body_sequence[1] = "She was really polite and helpful, but at the same time a bit cold."
		new_dialog_character_sequence[1] = obj_partner_detective;
		new_dialog_choice_sequence[1] = defaultDialogChoices;
				
		break;
	case "Opinion on Marcelo":
		new_dialog_body_sequence[0] = "What do you think about Marcelo?"
		new_dialog_character_sequence[0] = obj_player;
		//new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_body_sequence[1] = "I didn`t know him before he was killed."
		new_dialog_character_sequence[1] = obj_partner_detective;
		new_dialog_choice_sequence[1] = defaultDialogChoices;
		
		break;
	case "Opinion on Michigan":
		new_dialog_body_sequence[0] = "What do you think about Michigan?"
		new_dialog_character_sequence[0] = obj_player;
		//new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_body_sequence[1] = "He’s just a stoner I doubt he has anything to do with this."
		new_dialog_character_sequence[1] = obj_partner_detective;
		new_dialog_choice_sequence[1] = defaultDialogChoices;
		
		break;
	case "Finish conversation":
		toggle_read_choice(defaultDialogChoices, selectedDialogChoice);
		break;
}

add_data_sequence_to_dialog(new_dialog_body_sequence, new_dialog_character_sequence, new_dialog_choice_sequence, new_dialog_behaviour_sequence);
move_to_next_dialog_step();

