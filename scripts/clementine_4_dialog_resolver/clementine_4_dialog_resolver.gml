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
		
		new_dialog_body_sequence[1] = "They were just screaming at each other, I heard them from our room… When Leonardo came out he just said “I’m going to the safe room just don’t disturb me!!” … I tried to talk with Violet but she locked the door and just ignored me"
		new_dialog_character_sequence[1] = obj_clementine.id;
		new_dialog_choice_sequence[1] = defaultDialogChoices;
		add_choice_to_list(new_dialog_choice_sequence[1], "Ask about discussion", selectedChoice[2] + 1, selectedDialogChoice);
		
		break; 
	case "Ask about discussion":
		new_dialog_body_sequence[0] = "Do you have a second key to Violet’s room?"
		new_dialog_character_sequence[0] = obj_player.id;
		////new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_body_sequence[1] = "NO!! She never locks the room I didn’t even know there was a key, we don’t have one for ours."
		new_dialog_character_sequence[1] = obj_clementine.id;
		new_dialog_choice_sequence[1] = defaultDialogChoices;
		add_choice_to_list(new_dialog_choice_sequence[1], "Safe location", selectedChoice[2] + 1, selectedDialogChoice);
		
		break;
	case "Safe location":
		new_dialog_body_sequence[0] = "Where is the safe?"
		new_dialog_character_sequence[0] = obj_player.id;
		////new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_body_sequence[1] = "It’s supposed to be in the office in the second floor, but I never been there, neither has Violet, those two were always so secretive with that stupid ROOM... Oh but Marcelo kept a note with some cryptic answer, I think it's in MY room."
		new_dialog_character_sequence[1] = obj_clementine.id;
		new_dialog_choice_sequence[1] = defaultDialogChoices;
		add_choice_to_list(new_dialog_choice_sequence[1], "Brothers’ relationship", selectedChoice[2] + 1, selectedDialogChoice);
		
		break; 
	case "Brothers’ relationship":
		new_dialog_body_sequence[0] = "How was the relationship between Marcelo and Leonardo"
		new_dialog_character_sequence[0] = obj_player.id;
		////new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_body_sequence[1] = "I don’t give a shit about your detective work right now!! Just help me PLEASE!!!"
		new_dialog_character_sequence[1] = obj_clementine.id;
		new_dialog_choice_sequence[1] = defaultDialogChoices;
		
		break; 
	
	case "Finish conversation":
		toggle_read_choice(defaultDialogChoices, selectedDialogChoice);
		break;
}

add_data_sequence_to_dialog(new_dialog_body_sequence, new_dialog_character_sequence, new_dialog_choice_sequence);
move_to_next_dialog_step();

