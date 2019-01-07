/// @function clementine_1_dialog_resolver(selected_dialog_choice) 

var selectedDialogChoice = argument0;
var defaultDialogChoices = obj_elliot.dialog_choices;

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
		new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_behaviour_sequence[0] = elliot_sprite_talking_calm;
		
		new_dialog_body_sequence[1] = "I’m Elliot Mushu! I didn’t know him very well, sometimes I eat at his pizzeria."
		new_dialog_character_sequence[1] = obj_elliot.id;
		for (var index = 0; index < ds_list_size(defaultDialogChoices); index++) {
			new_dialog_choice_sequence[1,index] = ds_list_find_value(defaultDialogChoices,index);
		}
		
		new_dialog_behaviour_sequence[1] = elliot_sprite_still_calm;
		
		break;
	case "Confront about drug business":
		new_dialog_body_sequence[0] = "We know you provide Clementine with drugs."
		new_dialog_character_sequence[0] = obj_player.id
		new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_behaviour_sequence[0] = elliot_sprite_talking_calm;
		
		new_dialog_body_sequence[1] = "Me? I’m offended by that assumption."
		new_dialog_character_sequence[1] = obj_elliot.id
		var replaceChoiceIndex = ds_list_find_index(defaultDialogChoices, selectedDialogChoice)
		ds_list_replace(defaultDialogChoices, replaceChoiceIndex, "Make him confess")
		for (var index = 0; index < ds_list_size(defaultDialogChoices); index++) {
			new_dialog_choice_sequence[1,index] = ds_list_find_value(defaultDialogChoices,index);
		}
		
		new_dialog_behaviour_sequence[1] = elliot_sprite_still_calm;
		
		break;
	case "Make him confess":
		new_dialog_body_sequence[0] = "Don’t be a smart ass we have witnesses, that prove this “assumption”, so start talking!"
		new_dialog_character_sequence[0] = obj_player.id
		new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_behaviour_sequence[0] = elliot_sprite_talking_playing_dumb;
		
		new_dialog_body_sequence[1] = "Damn man calm down, okay I can say that I provided her with “stuff” to sell."
		new_dialog_character_sequence[1] = obj_elliot.id
		var replaceChoiceIndex = ds_list_find_index(defaultDialogChoices, selectedDialogChoice)
		ds_list_replace(defaultDialogChoices, replaceChoiceIndex, "Ask about alibi")
		for (var index = 0; index < ds_list_size(defaultDialogChoices); index++) {
			new_dialog_choice_sequence[1,index] = ds_list_find_value(defaultDialogChoices,index);
		}
				
		new_dialog_behaviour_sequence[1] = elliot_sprite_still_playing_dumb;
		
		break;
	case "Ask about alibi":
		new_dialog_body_sequence[0] = "You were at the pizzeria yesterday at about 10 pm, weren’t you?"
		new_dialog_character_sequence[0] = obj_player.id
		new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_behaviour_sequence[0] = elliot_sprite_talking_playing_dumb;
		
		new_dialog_body_sequence[1] = "Yes, what about it?"
		new_dialog_character_sequence[1] = obj_elliot.id
		var replaceChoiceIndex = ds_list_find_index(defaultDialogChoices, selectedDialogChoice)
		ds_list_replace(defaultDialogChoices, replaceChoiceIndex, "Let him know what happened")
		for (var index = 0; index < ds_list_size(defaultDialogChoices); index++) {
			new_dialog_choice_sequence[1,index] = ds_list_find_value(defaultDialogChoices,index);
		}
		
		new_dialog_behaviour_sequence[1] = elliot_sprite_still_playing_dumb;
		
		break;
	case "Let him know what happened":
		new_dialog_body_sequence[0] = "Marcelo is dead, died at 10:15."
		new_dialog_character_sequence[0] = obj_player.id
		new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_behaviour_sequence[0] = elliot_sprite_talking_scared;
		
		new_dialog_body_sequence[1] = "What, how? When I left, he was alive, he gave me the money and I left."
		new_dialog_character_sequence[1] = obj_elliot.id
		var replaceChoiceIndex = ds_list_find_index(defaultDialogChoices, selectedDialogChoice)
		ds_list_replace(defaultDialogChoices, replaceChoiceIndex, "Ask about money")
		ds_list_insert(defaultDialogChoices, replaceChoiceIndex + 1, "Alibi for 10:15")
		for (var index = 0; index < ds_list_size(defaultDialogChoices); index++) {
			new_dialog_choice_sequence[1,index] = ds_list_find_value(defaultDialogChoices,index);
		}
		
		new_dialog_behaviour_sequence[1] = elliot_sprite_still_scared;
		
		break;
	case "Ask about money":
		change_clue_status("asked_elliot_money", true);
		new_dialog_body_sequence[0] = "What money?"
		new_dialog_character_sequence[0] = obj_player.id
		new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_behaviour_sequence[0] = elliot_sprite_talking_scared;
		
		new_dialog_body_sequence[1] = "He confronted me about Clementine and said for me to stop giving her the “stuff”, I told him to give me some money, he went upstairs and came back with the money, I said bye and left."
		new_dialog_character_sequence[1] = obj_elliot.id
		if(ds_map_find_value(global.cluesMap, "asked_elliot_alibi") &&
		   ds_map_find_value(global.cluesMap, "asked_elliot_ring")) {
			ds_list_insert(defaultDialogChoices, 0, "I guess we're done here");
		}
		for (var index = 0; index < ds_list_size(defaultDialogChoices); index++) {
			new_dialog_choice_sequence[1,index] = ds_list_find_value(defaultDialogChoices, index);
		}
		
		new_dialog_behaviour_sequence[1] = elliot_sprite_still_scared;
		
		break;
	case "Alibi for 10:15":
		change_clue_status("asked_elliot_alibi", true);
		new_dialog_body_sequence[0] = "Where were you at 10:15 then?"
		new_dialog_character_sequence[0] = obj_player.id
		new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_behaviour_sequence[0] = elliot_sprite_talking_scared;
		
		new_dialog_body_sequence[1] = "You aren’t going to believe me, but I was shopping for clothes."
		new_dialog_character_sequence[1] = obj_elliot.id
		if(ds_map_find_value(global.cluesMap, "asked_elliot_money") &&
		   ds_map_find_value(global.cluesMap, "asked_elliot_ring")) {
			ds_list_insert(defaultDialogChoices, 0, "I guess we're done here");
		}
		for (var index = 0; index < ds_list_size(defaultDialogChoices); index++) {
			new_dialog_choice_sequence[1,index] = ds_list_find_value(defaultDialogChoices, index);
		}
		
		new_dialog_behaviour_sequence[1] = elliot_sprite_still_scared;
		
		break;
	case "Ask about ring":
		change_clue_status("asked_elliot_ring", true);
		new_dialog_body_sequence[0] = "Is this ring yours, or do you know it’s owner?"
		new_dialog_character_sequence[0] = obj_player.id
		new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_behaviour_sequence[0] = elliot_sprite_talking_calm;
		
		new_dialog_body_sequence[1] = "*surprised* Yeah, where did you find it? Shit I probably shouldn’t have said that"
		new_dialog_character_sequence[1] = obj_elliot.id
		if(ds_map_find_value(global.cluesMap, "asked_elliot_money") &&
		   ds_map_find_value(global.cluesMap, "asked_elliot_alibi")) {
			ds_list_insert(defaultDialogChoices, 0, "I guess we're done here");
		}
		for (var index = 0; index < ds_list_size(defaultDialogChoices); index++) {
			new_dialog_choice_sequence[1,index] = ds_list_find_value(defaultDialogChoices, index);
		}
		
		new_dialog_behaviour_sequence[1] = elliot_sprite_still_calm;
		
		
		break;
	case "I guess we're done here":
		fade_change_to_room(room_good_ending);
		return;
}

add_data_sequence_to_dialog(new_dialog_body_sequence, new_dialog_character_sequence, new_dialog_choice_sequence, new_dialog_behaviour_sequence);
move_to_next_dialog_step();