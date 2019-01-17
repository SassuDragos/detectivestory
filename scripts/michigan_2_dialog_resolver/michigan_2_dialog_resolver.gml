/// @function partner_detective_1_dialog_resolver(selected_dialog_choice) 

var selectedChoice = argument0;
var selectedDialogChoice = selectedChoice[0];
var defaultDialogChoices = ds_map_find_value(global.dialog_choices, obj_michigan);

toggle_read_choice(defaultDialogChoices, selectedDialogChoice, true);

ds_map_set(global.dialog_choices,obj_michigan, defaultDialogChoices);

var new_dialog_body_sequence = []
var new_dialog_character_sequence = []
var new_dialog_choice_sequence = []
	
switch(selectedDialogChoice) {
	case "Ask for background":
		new_dialog_body_sequence[0] = "Who are you? What do you do?"
		new_dialog_character_sequence[0] = obj_player;
		//new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_body_sequence[1] = "I`m Michigan Mignon, they call me Mitch... well, right now I work in the groceries store, but I`m gonna be a DJ eventually, I played in the seta night club a couple of times"
		new_dialog_character_sequence[1] = obj_michigan;
		new_dialog_choice_sequence[1] = defaultDialogChoices;
				
		break;
	case "Pressure about what he ingested":
		new_dialog_body_sequence[0] = "If you don’t want to make it worse for yourself, you best tell me what made you so… you know dopey!"
		new_dialog_character_sequence[0] = obj_player;
		//new_dialog_choice_sequence[0,0] = "Check answer..."
		ds_map_set(global.cluesMap, "knows_toad_took_shrooms", true);
		
		new_dialog_body_sequence[1] = "I just took some shrooms, relax I`m being cooperative so don`t be so dramatic."
		new_dialog_character_sequence[1] = obj_michigan;
		new_dialog_choice_sequence[1] = defaultDialogChoices;
		add_choice_to_list(new_dialog_choice_sequence[1], "Ask about dealer", selectedChoice[2] + 1, selectedDialogChoice);
		
		break;	
	case "Ask about dealer":
		if (ds_map_find_value(global.cluesMap, "has_convinced_mitch")) {
			new_dialog_body_sequence[0] = "Where did you get this illicit drug?"
		} else {
			new_dialog_body_sequence[0] = "Where did you get this illicit drug again? *shakes handcuffs* "
		}
		new_dialog_character_sequence[0] = obj_player;
		//new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_choice_sequence[1] = defaultDialogChoices;
		if (ds_map_find_value(global.cluesMap, "has_convinced_mitch")) {
			new_dialog_body_sequence[1] = "Chill man, no need to threaten, It`s the pizza girl with the beret, she always brings some grub."
		} else {
			new_dialog_body_sequence[1] = "You mean the magic mushrooms? Well I can’t tell you, I ain’t no snitch."
			add_choice_to_list(new_dialog_choice_sequence[1], "Convince Mitch", selectedChoice[2] + 1, selectedDialogChoice);
		}
		new_dialog_character_sequence[1] = obj_michigan;
		
		break;
	case "Convince Mitch":
		new_dialog_body_sequence[0] = "Well than we should probably take you in. *shakes handcuffs*"
		new_dialog_character_sequence[0] = obj_player;
		//new_dialog_choice_sequence[0,0] = "Check answer..."
		ds_map_set(global.cluesMap, "has_convinced_mitch", true);
		
		new_dialog_body_sequence[1] = "Okay I’ll tell you, geez, I’m high I just got confused, it's the pizza girl with the beret, she always brings some grub."
		new_dialog_character_sequence[1] = obj_michigan;
		new_dialog_choice_sequence[1] = defaultDialogChoices;
		
		ds_map_set(global.cluesMap, "knows_about_clementine_dealing", true); 
		global.game_stage = 2; 
		break;
	case "Finish conversation":
		toggle_read_choice(defaultDialogChoices, selectedDialogChoice);
		break;
}

add_data_sequence_to_dialog(new_dialog_body_sequence, new_dialog_character_sequence, new_dialog_choice_sequence);
move_to_next_dialog_step();

