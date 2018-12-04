/// @function partner_detective_1_dialog_resolver(selected_dialog_choice) 

var selectedDialogChoice = argument0;
var defaultDialogChoices = violet_1_default_choices();

var new_dialog_body_sequence = []
var new_dialog_character_sequence = []
var new_dialog_choice_sequence = []
	
switch(selectedDialogChoice) {
	case "Clementine’s Whereabouts":
		new_dialog_body_sequence[0] = "Where is Clementine?"
		new_dialog_character_sequence[0] = obj_player;
		new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_body_sequence[1] = "I think she is upstairs. She said she wants to rest a little. Poor girl, she loved Marcelo so much."
		new_dialog_character_sequence[1] = obj_violet;
		
		ds_map_set(global.cluesMap, "upstairs_inquiry_unlocked", true)
		new_dialog_choice_sequence[1,0] = "More details about upstairs";
		for (var index = 0; index < ds_list_size(defaultDialogChoices); index++) {
			new_dialog_choice_sequence[1,index + 1] = ds_list_find_value(defaultDialogChoices,index);
		}
		
		break;
	case "Ask about background":
		new_dialog_body_sequence[0] = "Who are you? What is your relationship with Marcelo?"
		new_dialog_character_sequence[0] = obj_player;
		new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_body_sequence[1] = "My name is Violet Tubi. I am Marcelo’s sister in law and I have known him for many years. I`m so devastated."
		new_dialog_character_sequence[1] = obj_violet;
		for (var index = 0; index < ds_list_size(defaultDialogChoices); index++) {
			new_dialog_choice_sequence[1,index] = ds_list_find_value(defaultDialogChoices,index);
		}
		break;
	case "Ask role in the pizzeria":
		new_dialog_body_sequence[0] = "Do you also work here?"
		new_dialog_character_sequence[0] = obj_player;
		new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_body_sequence[1] = "Yes, I do, I have worked as the accountant since the place opened";
		new_dialog_character_sequence[1] = obj_violet;
		new_dialog_choice_sequence[1, 0] = "Ask about the business"; 
		for (var index = 0; index < ds_list_size(defaultDialogChoices); index++) {
			new_dialog_choice_sequence[1,index+1] = ds_list_find_value(defaultDialogChoices,index);
		}
		
		break;
	case "Ask about the business":
		new_dialog_body_sequence[0] = "How is the pizzeria doing financially?"
		new_dialog_character_sequence[0] = obj_player;
		new_dialog_choice_sequence[0,0] = "Check answer..."
	
		new_dialog_body_sequence[1] = "Well it hasn`t been great, the owner is... *coughs* …the owners are, sometimes, you know, lazy.";
		new_dialog_character_sequence[1] = obj_violet;
		for (var index = 0; index < ds_list_size(defaultDialogChoices); index++) {
			new_dialog_choice_sequence[1,index] = ds_list_find_value(defaultDialogChoices,index);
		}
		break;
	case "Check for alibi":
		new_dialog_body_sequence[0] = "Where were you at 22:15?"
		new_dialog_character_sequence[0] = obj_player;
		new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_body_sequence[1] = "I was walking Rex our dog.";
		new_dialog_character_sequence[1] = obj_violet;
		for (var index = 0; index < ds_list_size(defaultDialogChoices); index++) {
			new_dialog_choice_sequence[1,index] = ds_list_find_value(defaultDialogChoices,index);
		};
	
		break; 
	case "Ask about ring":
		new_dialog_body_sequence[0] = "Is this ring yours, or do you know it’s owner?"
		new_dialog_character_sequence[0] = obj_player;
		new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_body_sequence[1] = "Let me see it  *investigates ring*, no, I don’t know who this belongs to.";
		new_dialog_character_sequence[1] = obj_violet;
		for (var index = 0; index < ds_list_size(defaultDialogChoices); index++) {
			new_dialog_choice_sequence[1,index] = ds_list_find_value(defaultDialogChoices,index);
		};
		break;
	case "More details about upstairs":
		new_dialog_body_sequence[0] = "But what is upstairs?"
		new_dialog_character_sequence[0] = obj_player;
		new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_body_sequence[1] = "Well, at the first floor we keep our cooking materials. These days, for some reason, there are a lot of mushrooms deposited up there. And we leave at the second floor.";
		new_dialog_character_sequence[1] = obj_violet;
		ds_map_set(global.cluesMap, "upstairs_ask_for_permission_unlocked", true)
		
		var upstairsHasNotBeenUnlockedBefore = ds_list_find_index(global.available_locations_list, RoomChoices.APARTMENTS) == -1;
		var initialIndex = 0;
		if (upstairsHasNotBeenUnlockedBefore) {
			new_dialog_choice_sequence[1,0] = "Ask to go and check upstairs";
			initialIndex = 1;
		}
		
		for (var index = 0; index < ds_list_size(defaultDialogChoices); index++) {
			new_dialog_choice_sequence[1,index+initialIndex] = ds_list_find_value(defaultDialogChoices,index);
		};
		break;
	case "Ask to go and check upstairs":
		new_dialog_body_sequence[0] = "Could we please check the upper floors?"
		new_dialog_character_sequence[0] = obj_player;
		new_dialog_choice_sequence[0,0] = "Check answer..."
		
		ds_list_add(global.available_locations_list, RoomChoices.APARTMENTS);
		ds_list_add(global.available_locations_list, RoomChoices.STORAGE);
		new_dialog_body_sequence[1] = "Uhm... Sure! Just give me one second to open the door, as it seems they locked it. *after dropping the key on the flower a couple of times, she runs to the door and slowly opens it*. I will stay here, I don`t want clients to see all this mess.";
		new_dialog_character_sequence[1] = obj_violet;
		for (var index = 0; index < ds_list_size(defaultDialogChoices); index++) {
			new_dialog_choice_sequence[1,index] = ds_list_find_value(defaultDialogChoices,index);
		};
	case "Finish `conversation`":
		break;
}

add_data_sequence_to_dialog(new_dialog_body_sequence, new_dialog_character_sequence, new_dialog_choice_sequence);
move_to_next_dialog_step();

