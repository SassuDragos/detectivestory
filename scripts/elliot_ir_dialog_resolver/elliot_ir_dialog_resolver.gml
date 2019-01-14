/// @function clementine_1_dialog_resolver(selected_dialog_choice) 

var selectedChoice = argument0;
var selectedDialogChoice = selectedChoice[0];
var defaultDialogChoices = ds_map_find_value(global.dialog_choices, obj_elliot);

toggle_read_choice(defaultDialogChoices, selectedDialogChoice, true);

ds_map_set(global.dialog_choices,obj_elliot, defaultDialogChoices);

var hasDiscussedAboutDrugBusiness = ds_map_find_value(global.cluesMap, "asked_drug_business");
var hasBruiserRingInInventory = ds_map_find_value(global.cluesMap, "has_bruiser_ring_in_inventory");

var new_dialog_body_sequence = []
var new_dialog_character_sequence = []
var new_dialog_choice_sequence = []
var new_dialog_behaviour_sequence = [];

/*
if(hasBruiserRingInInventory && ds_list_find_index(defaultDialogChoices, "Ask about ring") == -1) {
	ds_list_add(defaultDialogChoices, "Ask about ring");
}		*/
	
switch(selectedDialogChoice) {
	case "Ask for background":
		new_dialog_body_sequence[0] = "Who are you? What is your relationship with Marcelo?";
		new_dialog_character_sequence[0] = obj_player.id;
		//new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_behaviour_sequence[0] = elliot_sprite_talking_calm;
		
		new_dialog_body_sequence[1] = "I’m Elliot Mushu! I didn’t know him very well, sometimes I eat at his pizzeria."
		new_dialog_character_sequence[1] = obj_elliot.id;
		new_dialog_choice_sequence[1] = defaultDialogChoices;
		
		new_dialog_behaviour_sequence[1] = elliot_sprite_still_calm;
		
		break;
	case "Confront about drug business":
		new_dialog_body_sequence[0] = "We know you provide Clementine with drugs."
		new_dialog_character_sequence[0] = obj_player.id
		//new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_behaviour_sequence[0] = elliot_sprite_talking_calm;
		
		new_dialog_body_sequence[1] = "Me? I’m offended by that assumption."
		new_dialog_character_sequence[1] = obj_elliot.id
		new_dialog_choice_sequence[1] = defaultDialogChoices;
		add_choice_to_list(new_dialog_choice_sequence[1], "Make him confess", selectedChoice[2] + 1, selectedDialogChoice);
		
		new_dialog_behaviour_sequence[1] = elliot_sprite_still_calm;
		
		break;
	case "Make him confess":
		new_dialog_body_sequence[0] = "Don’t be a smart ass we have witnesses, that prove this “assumption”, so start talking!"
		new_dialog_character_sequence[0] = obj_player.id
		//new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_behaviour_sequence[0] = elliot_sprite_talking_playing_dumb;
		
		new_dialog_body_sequence[1] = "Damn man calm down, okay I can say that I provided her with “stuff” to sell."
		new_dialog_character_sequence[1] = obj_elliot.id
		new_dialog_choice_sequence[1] = defaultDialogChoices;
		add_choice_to_list(new_dialog_choice_sequence[1], "Ask about alibi", selectedChoice[2] + 1, selectedDialogChoice);
				
		new_dialog_behaviour_sequence[1] = elliot_sprite_still_playing_dumb;
		
		break;
	case "Ask about alibi":
		new_dialog_body_sequence[0] = "You were at the pizzeria yesterday at about 10 pm, weren’t you?"
		new_dialog_character_sequence[0] = obj_player.id
		//new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_behaviour_sequence[0] = elliot_sprite_talking_playing_dumb;
		
		new_dialog_body_sequence[1] = "Yes, what about it?"
		new_dialog_character_sequence[1] = obj_elliot.id
		new_dialog_choice_sequence[1] = defaultDialogChoices;
		add_choice_to_list(new_dialog_choice_sequence[1], "Let him know what happened", selectedChoice[2] + 1, selectedDialogChoice);
		
		new_dialog_behaviour_sequence[1] = elliot_sprite_still_playing_dumb;
		
		break;
	case "Let him know what happened":
		new_dialog_body_sequence[0] = "Marcelo is dead, died at 10:15."
		new_dialog_character_sequence[0] = obj_player.id
		//new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_behaviour_sequence[0] = elliot_sprite_talking_scared;
		
		new_dialog_body_sequence[1] = "What, how? When I left, he was alive, he gave me the money and I left."
		new_dialog_character_sequence[1] = obj_elliot.id;
		new_dialog_choice_sequence[1] = defaultDialogChoices;
		add_choice_to_list(new_dialog_choice_sequence[1], "Ask about money", selectedChoice[2] + 1, selectedDialogChoice);
		add_choice_to_list(new_dialog_choice_sequence[1], "Alibi for 10:15", selectedChoice[2] + 1, selectedDialogChoice);
		
		new_dialog_behaviour_sequence[1] = elliot_sprite_still_scared;
		
		break;
	case "Ask about money":
		change_clue_status("asked_elliot_money", true);
		new_dialog_body_sequence[0] = "What money?"
		new_dialog_character_sequence[0] = obj_player.id
		//new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_behaviour_sequence[0] = elliot_sprite_talking_scared;
		
		new_dialog_body_sequence[1] = "He confronted me about Clementine and said for me to stop giving her the “stuff”, I told him to give me some money, he went upstairs and came back with the money, I said bye and left."
		new_dialog_character_sequence[1] = obj_elliot.id
		new_dialog_choice_sequence[1] = defaultDialogChoices;
		if(ds_map_find_value(global.cluesMap, "asked_elliot_alibi") &&
		   ds_map_find_value(global.cluesMap, "asked_elliot_ring")) {
			add_choice_to_list(new_dialog_choice_sequence[1], "I guess we're done here");
		}
		
		new_dialog_behaviour_sequence[1] = elliot_sprite_still_scared;
		
		break;
	case "Alibi for 10:15":
		change_clue_status("asked_elliot_alibi", true);
		new_dialog_body_sequence[0] = "Where were you at 10:15 then?"
		new_dialog_character_sequence[0] = obj_player.id
		//new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_behaviour_sequence[0] = elliot_sprite_talking_scared;
		
		new_dialog_body_sequence[1] = "You aren’t going to believe me, but I was shopping for clothes."
		new_dialog_character_sequence[1] = obj_elliot.id
		new_dialog_choice_sequence[1] = defaultDialogChoices;
		if(ds_map_find_value(global.cluesMap, "asked_elliot_money") &&
		   ds_map_find_value(global.cluesMap, "asked_elliot_ring")) {
			add_choice_to_list(new_dialog_choice_sequence[1], "I guess we're done here");
		}
		
		new_dialog_behaviour_sequence[1] = elliot_sprite_still_scared;
		
		break;
	case "I guess we're done here":
		//change_clue_status("good_ending", true);
		//fade_change_to_room(detective_office);
		new_dialog_body_sequence[0] = "We know you were the last one to see him, CUT THE CRAP!!"
		new_dialog_character_sequence[0] = obj_player.id
		//new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_behaviour_sequence[0] = elliot_sprite_talking_scared;
		
		new_dialog_body_sequence[1] = "Nah man I’m telling you I wasn’t the last one to see him… you know what, I saw Leonardo coming down the stairs before I left…"
		new_dialog_character_sequence[1] = obj_elliot.id
		new_dialog_choice_sequence[1] = ds_list_create();
		add_choice_to_list(new_dialog_choice_sequence[1], "Continue investigation.")
		
		//change_clue_status("good_ending", true);
		//fade_change_to_room(RoomChoices.PIZZERIA);
		
		break;
	case "ACCUSE":
		//change_clue_status("good_ending", true);
		//fade_change_to_room(detective_office);
		new_dialog_body_sequence[0] = "You are done for!!"
		new_dialog_character_sequence[0] = obj_player.id
		//new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_behaviour_sequence[0] = goto_bad_ending;
	
		break;
		
	case "Continue investigation.":
		global.game_stage = 3;
		fade_change_to_room(RoomChoices.PIZZERIA);
		//goto_pizzaria_stage3();
		return;
}

add_data_sequence_to_dialog(new_dialog_body_sequence, new_dialog_character_sequence, new_dialog_choice_sequence, new_dialog_behaviour_sequence);
move_to_next_dialog_step();
