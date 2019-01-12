/// @function partner_detective_1_dialog_resolver(selected_dialog_choice) 

var selectedChoice = argument0;
var selectedDialogChoice = selectedChoice[0];
var defaultDialogChoices = ds_map_find_value(global.dialog_choices, obj_violet);

toggle_read_choice(defaultDialogChoices, selectedDialogChoice, true);

ds_map_set(global.dialog_choices,obj_violet, defaultDialogChoices);

var new_dialog_body_sequence = []
var new_dialog_character_sequence = []
var new_dialog_choice_sequence = []
var new_dialog_behaviour_sequence = []
	
switch(selectedDialogChoice) {
	case "Clementine’s Whereabouts":
		new_dialog_body_sequence[0] = "Where is Clementine?"
		new_dialog_character_sequence[0] = obj_player;
		//new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_body_sequence[1] = "I think she is upstairs. She said she wants to rest a little. Poor girl, she loved Marcelo so much."
		new_dialog_character_sequence[1] = obj_violet;
		
		ds_map_set(global.cluesMap, "upstairs_inquiry_unlocked", true)
		new_dialog_choice_sequence[1] = defaultDialogChoices;
		add_choice_to_list(new_dialog_choice_sequence[1], "More details about upstairs", selectedChoice[2] + 1, selectedDialogChoice);
		
		break;
	case "Ask about background":
		new_dialog_body_sequence[0] = "Who are you? What is your relationship with Marcelo?"
		new_dialog_character_sequence[0] = obj_player;
		//new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_body_sequence[1] = "My name is Violet Tubi. I am Marcelo’s sister in law and I have known him for many years. I`m so devastated."
		new_dialog_character_sequence[1] = obj_violet;
		new_dialog_choice_sequence[1] = defaultDialogChoices;
		
		break;
	case "Ask role in the pizzeria":
		new_dialog_body_sequence[0] = "Do you also work here?"
		new_dialog_character_sequence[0] = obj_player;
		//new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_body_sequence[1] = "Yes, I do, I have worked as the accountant since the place opened";
		new_dialog_character_sequence[1] = obj_violet;
		new_dialog_choice_sequence[1, 0] = "Ask about the business"; 
		new_dialog_choice_sequence[1] = defaultDialogChoices;
		
		break;
	case "Ask about the business":
		new_dialog_body_sequence[0] = "How is the pizzeria doing financially?"
		new_dialog_character_sequence[0] = obj_player;
		//new_dialog_choice_sequence[0,0] = "Check answer..."
	
		new_dialog_body_sequence[1] = "Well it hasn`t been great, the owner is... *coughs* …the owners are, sometimes, you know, lazy.";
		new_dialog_character_sequence[1] = obj_violet;
		new_dialog_choice_sequence[1] = defaultDialogChoices;
		
		break;
	case "Check for alibi":
		new_dialog_body_sequence[0] = "Where were you at 22:15?"
		new_dialog_character_sequence[0] = obj_player;
		//new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_body_sequence[1] = "I was walking Rex our dog.";
		new_dialog_character_sequence[1] = obj_violet;
		new_dialog_choice_sequence[1] = defaultDialogChoices;
			
		break;
	case "More details about upstairs":
		new_dialog_body_sequence[0] = "But what is upstairs?"
		new_dialog_character_sequence[0] = obj_player;
		//new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_body_sequence[1] = "Well, at the first floor we keep our cooking materials. These days, for some reason, there are a lot of mushrooms deposited up there. And we leave at the second floor.";
		new_dialog_character_sequence[1] = obj_violet;
		ds_map_set(global.cluesMap, "upstairs_ask_for_permission_unlocked", true)
		
		new_dialog_choice_sequence[1] = defaultDialogChoices;
		if (!is_location_available(room, Where.INSIDE_UPSTAIRS, RoomChoices.APARTMENTS)) {
			add_choice_to_list(new_dialog_choice_sequence[1], "Ask to go and check upstairs", selectedChoice[2] + 1, selectedDialogChoice);
		}
		
		break;
	case "Ask to go and check upstairs":
		new_dialog_body_sequence[0] = "Could we please check the upper floors?"
		new_dialog_character_sequence[0] = obj_player;
		//new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_behaviour_sequence[0] = upstairs_available;
		
		remove_choice_from_list(defaultDialogChoices, selectedDialogChoice);
		
		new_dialog_body_sequence[1] = "Uhm... Sure! Just give me one second to open the door, as it seems they locked it. *after dropping the key on the floor a couple of times, she runs to the door and slowly opens it*. I will stay here, I don`t want clients to see all this mess.";
		new_dialog_character_sequence[1] = obj_violet;
		new_dialog_choice_sequence[1] = defaultDialogChoices;
		
		break;
	case "Finish `conversation`":
		toggle_read_choice(defaultDialogChoices, selectedDialogChoice);
		break;
}

add_data_sequence_to_dialog(new_dialog_body_sequence, new_dialog_character_sequence, new_dialog_choice_sequence, new_dialog_behaviour_sequence);
move_to_next_dialog_step();

