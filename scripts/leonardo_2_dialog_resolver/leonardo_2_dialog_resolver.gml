/// @function partner_detective_1_dialog_resolver(selected_dialog_choice) 

var selectedChoice = argument0;
var selectedDialogChoice = selectedChoice[0];
var defaultDialogChoices = ds_map_find_value(global.dialog_choices, obj_leonardo);

toggle_read_choice(defaultDialogChoices, selectedDialogChoice, true);

ds_map_set(global.dialog_choices,obj_leonardo, defaultDialogChoices);

var new_dialog_body_sequence = []
var new_dialog_character_sequence = []
var new_dialog_choice_sequence = []

//"Violet’s whereabouts
//"Marcelo Relationship with him"
	
switch(selectedDialogChoice) {
	case "Violet’s whereabouts":
		new_dialog_body_sequence[0] = "Where is Violet?"
		new_dialog_character_sequence[0] = obj_player.id;
		//new_dialog_choice_sequence[0,0] = "Check answer..."
	
		new_dialog_body_sequence[1] = "Don’t disturb her I was the one who did it!! ARREST ME NOW!!!"
		new_dialog_character_sequence[1] = obj_leonardo.id;
		new_dialog_choice_sequence[1] = defaultDialogChoices;
		
	
		//create_event_initialise_dialog_holder(obj_leonardo, leonardo_2_dialog_content_init, leonardo_2_dialog_resolver, leonardo_2_default_choices(), "3");
		
		break;
	case "Marcelo Relationship with him":
		new_dialog_body_sequence[0] = "How was your relationship with your brother?"
		new_dialog_character_sequence[0] = obj_player.id;
		//new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_body_sequence[1] = "Yeah I HATED him so I KILLED him!!!"
		new_dialog_character_sequence[1] = obj_leonardo.id;
		new_dialog_choice_sequence[1] = defaultDialogChoices;
		
		add_choice_to_list(new_dialog_choice_sequence[1], "Finish conversation", selectedChoice[2] + 1, selectedDialogChoice);
		break;
	
	case "Finish conversation":
		toggle_read_choice(defaultDialogChoices, selectedDialogChoice);
		break;
}

add_data_sequence_to_dialog(new_dialog_body_sequence, new_dialog_character_sequence, new_dialog_choice_sequence);
move_to_next_dialog_step();

