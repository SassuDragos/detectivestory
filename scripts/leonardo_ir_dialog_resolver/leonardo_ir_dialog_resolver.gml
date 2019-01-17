/// @function clementine_1_dialog_resolver(selected_dialog_choice) 

var selectedChoice = argument0;
var selectedDialogChoice = selectedChoice[0];
var defaultDialogChoices = ds_map_find_value(global.dialog_choices, obj_leonardo);

toggle_read_choice(defaultDialogChoices, selectedDialogChoice, true);

ds_map_set(global.dialog_choices,obj_leonardo, defaultDialogChoices);

var new_dialog_body_sequence = []
var new_dialog_character_sequence = []
var new_dialog_choice_sequence = []
var new_dialog_behaviour_sequence = [];

/*
if(hasBruiserRingInInventory && ds_list_find_index(defaultDialogChoices, "Ask about ring") == -1) {
	ds_list_add(defaultDialogChoices, "Ask about ring");
}		*/
	
switch(selectedDialogChoice) {
	case "Dig into the relationship with his brother":
		new_dialog_body_sequence[0] = "Why did you hate your brother?";
		new_dialog_character_sequence[0] = obj_player.id;
		//new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_behaviour_sequence[0] = leonardo_sprite_still_calm;
		
		new_dialog_body_sequence[1] = "Wow, don’t even get me started. Gambling issues? Aggressiveness? Abusive behaviour? Ruining the business?"
		new_dialog_character_sequence[1] = obj_leonardo.id;
		new_dialog_choice_sequence[1] = defaultDialogChoices;
		add_choice_to_list(new_dialog_choice_sequence[1], "Inquire about abusive behaviour", selectedChoice[2] + 1, selectedDialogChoice);
		add_choice_to_list(new_dialog_choice_sequence[1], "Inquire about business issues", selectedChoice[2] + 1, selectedDialogChoice);
		add_choice_to_list(new_dialog_choice_sequence[1], "Inquire about gambling issues", selectedChoice[2] + 1, selectedDialogChoice);
		
		new_dialog_behaviour_sequence[1] = leonardo_sprite_talking_calm;
		
		break;
	case "Inquire about gambling issues":
		new_dialog_body_sequence[0] = "Gambling issues? Is that a good enough reason to kill a person?";
		new_dialog_character_sequence[0] = obj_player.id
		//new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_behaviour_sequence[0] = leonardo_sprite_still_calm;
		
		new_dialog_body_sequence[1] = "Oh well, let me be clear here, we are not talking about some occasional slot machines. He was participating to these weekly meetings with some shady persons."
		new_dialog_body_sequence[2] = "And don’t get me wrong, I wouldn’t care if he didn’t gamble with Pizzeria’s money. He would never talk to me about it.";
		new_dialog_body_sequence[3] = " I was his partner, GOD DAMMIT!";
		
		new_dialog_character_sequence[1] = obj_leonardo.id
		new_dialog_character_sequence[2] = obj_leonardo.id
		new_dialog_character_sequence[3] = obj_leonardo.id

		new_dialog_choice_sequence[3] = defaultDialogChoices;
		
		new_dialog_behaviour_sequence[1] = leonardo_sprite_talking_angry;
		new_dialog_behaviour_sequence[3] = leonardo_sprite_still_angry;
		
		break;
	case "Inquire about business issues":
		new_dialog_body_sequence[0] = "Was the business losing a lot of money?"
		new_dialog_character_sequence[0] = obj_player.id
		//new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_behaviour_sequence[0] = leonardo_sprite_still_angry;
		
		new_dialog_body_sequence[1] = "A lot? Are you joking, he lost everything. Last month I just discovered he borrowed on the name of the company 100.000 Coins. that is the entire income of the business for one year lost in ONE MONTH!"
		new_dialog_body_sequence[2] = "We are ruined, do you get me? RUINED. I wanted kids, I wanted good education for my them… now everything is gone because of that careless bastard.. He deserved it!"
		
		new_dialog_character_sequence[1] = obj_leonardo.id
		new_dialog_character_sequence[2] = obj_leonardo.id
		
		new_dialog_choice_sequence[2] = defaultDialogChoices;
				
		new_dialog_behaviour_sequence[1] = leonardo_sprite_talking_angry;
		
		break;
	case "Inquire about abusive behaviour":
		new_dialog_body_sequence[0] = "What do you mean about aggressiveness and abusive behaviour?"
		new_dialog_character_sequence[0] = obj_player.id
		//new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_behaviour_sequence[0] = leonardo_sprite_still_angry;
		
		new_dialog_body_sequence[1] = "Well that greedy bastard would forget anything when talks became about money. He would even become nervous whenever I would ask about his gambling issues."
		new_dialog_body_sequence[1] = "Let’s say my honour was not the only one suffering lately… If only Violet would actually know how many times I had to use her makeup to cover his blows."
		
		new_dialog_character_sequence[1] = obj_leonardo.id
		new_dialog_character_sequence[2] = obj_leonardo.id
		
		new_dialog_choice_sequence[2] = defaultDialogChoices;
		add_choice_to_list(new_dialog_choice_sequence[2], " Ask if Violet new about Marcelo’s behavior", selectedChoice[2] + 1, selectedDialogChoice);
		
		new_dialog_behaviour_sequence[1] = leonardo_sprite_talking_sad;
		
		break;
	case " Ask if Violet knew about Marcelo’s behavior":
		new_dialog_body_sequence[0] = "Why don’t you tell Violet about Marcelo? Why didn’t you move out from here if things were so bad?"
		new_dialog_character_sequence[0] = obj_player.id
		//new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_behaviour_sequence[0] = leonardo_sprite_still_sad;
		
		new_dialog_body_sequence[1] = "Well I don’t know if I have an answer for this. I guess… I guess… I was just a coward, I was afraid to confront him, to stop. I feel that somehow I disappointed Violet. I think she expected a stronger me. But NO, wait! Now I got my revenge, since I killed him!"
		new_dialog_character_sequence[1] = obj_leonardo.id;
		new_dialog_choice_sequence[1] = defaultDialogChoices;
		new_dialog_behaviour_sequence[1] = leonardo_sprite_talking_sad;
		
		break;
	case "Confront him!":
		//change_clue_status("good_ending", true);
		//fade_change_to_room(detective_office);
		new_dialog_body_sequence[0] = "Too bad I found the pipe in her room with blood on it! It’s over Leonardo, admit it, it was not you, but Violet!"
		new_dialog_character_sequence[0] = obj_player.id
		//new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_behaviour_sequence[0] = leonardo_sprite_still_calm;
		new_dialog_body_sequence[1] = "…"
		new_dialog_character_sequence[1] = obj_leonardo.id
		new_dialog_choice_sequence[1] = ds_list_create();
		add_choice_to_list(new_dialog_choice_sequence[1], "Wrap this up");
		
		//change_clue_status("good_ending", true);
		//fade_change_to_room(RoomChoices.PIZZERIA);
		
		break;
	case "How did he kill Marcelo?":
		new_dialog_body_sequence[0] = "So how did you kill Marcelo?"
		new_dialog_character_sequence[0] = obj_player.id
		
		new_dialog_behaviour_sequence[0] = leonardo_sprite_still_calm;
		new_dialog_body_sequence[1] = "We got into a fight, i hit him so hard he felt to the ground. To make sure the bastard will never get up again, I hit him again, this time with a pan he left in the kitchen. After that I made myself a tasteful mushroom sandwich of vengeance! God it felt good eating his mushrooms in his face!";
		new_dialog_character_sequence[1] = obj_leonardo.id
		new_dialog_choice_sequence[1] = defaultDialogChoices;
		if(global.cluesMap[? "has_weapon_in_inventory"]) {
			add_choice_to_list(new_dialog_choice_sequence[1], "Confront him!");
		}
		new_dialog_behaviour_sequence[1] = leonardo_sprite_talking_sad;
		
		break;
	case "ACCUSE":
		//change_clue_status("good_ending", true);
		//fade_change_to_room(detective_office);
		new_dialog_body_sequence[0] = "You are done for!!"
		new_dialog_character_sequence[0] = obj_player.id
		//new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_behaviour_sequence[0] = goto_bad_ending;
	
		break;
		
	case "Wrap this up":
		goto_good_ending();
		//goto_pizzaria_stage3();
		return;
}

add_data_sequence_to_dialog(new_dialog_body_sequence, new_dialog_character_sequence, new_dialog_choice_sequence, new_dialog_behaviour_sequence);
move_to_next_dialog_step();
