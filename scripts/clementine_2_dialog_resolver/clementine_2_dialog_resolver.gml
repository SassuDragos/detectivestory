/// @function clementine_1_dialog_resolver(selected_dialog_choice) 

var selectedDialogChoice = argument0;
var defaultDialogChoices = clementine_2_default_choices();

var knowsMarioWearsRing = ds_map_find_value(global.cluesMap, "knows_mario_wears_ring");
var hasDiscussedAboutBruise = ds_map_find_value(global.cluesMap, "asked_bruise");

var new_dialog_body_sequence = []
var new_dialog_character_sequence = []
var new_dialog_choice_sequence = []
	
switch(selectedDialogChoice) {
	case "Ask about drug dealing":
		new_dialog_body_sequence[0] = "You delivered drugs to Michigan, didn’t you?"
		new_dialog_character_sequence[0] = obj_player.id;
		new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_body_sequence[1] = "How did you... *starts crying* okay I did, we aren’t making enough money here and I wanted to help."
		new_dialog_character_sequence[1] = obj_clementine.id;
		new_dialog_choice_sequence[1,0] = "Ask if Marcelo knew"
		for (var index = 0; index < ds_list_size(defaultDialogChoices); index++) {
			new_dialog_choice_sequence[1,index] = ds_list_find_value(defaultDialogChoices,index);
		}
	case "Ask if Marcelo knew":
		new_dialog_body_sequence[0] = "Did Marcelo know about your drug dealing?"
		new_dialog_character_sequence[0] = obj_player.id;
		new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_body_sequence[1] = "I have to be honest, he only found out yesterday. He made me tell him who was giving me drugs, and to call him here."
		new_dialog_character_sequence[1] = obj_clementine.id;
		new_dialog_choice_sequence[1,0] = "Ask who is the drug source"
		for (var index = 0; index < ds_list_size(defaultDialogChoices); index++) {
			new_dialog_choice_sequence[1,index] = ds_list_find_value(defaultDialogChoices,index);
		}
	case "Ask who is the drug source":
		new_dialog_body_sequence[0] = "So... the one who supplied you the drugs, who is he? Did he come here?"
		new_dialog_character_sequence[0] = obj_player.id;
		new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_body_sequence[1] = "His name is Elliot Mushu, and I don’t know, I was delivering the pizza. *sobs* do you think that it is my fault Marcelo died? *cries into oblivion*"
		new_dialog_character_sequence[1] = obj_clementine.id;
		new_dialog_choice_sequence[1,0] = "Ask if Elliot is the bruiser"
		for (var index = 0; index < ds_list_size(defaultDialogChoices); index++) {
			new_dialog_choice_sequence[1,index] = ds_list_find_value(defaultDialogChoices,index);
		}
	case "Ask if Elliot is the bruiser":
		new_dialog_body_sequence[0] = "So... did Elliot live those marks on your face? Did he come here?"
		new_dialog_character_sequence[0] = obj_player.id;
		new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_body_sequence[1] = "Yes... that’s what made Marcelo suspicious."
		new_dialog_character_sequence[1] = obj_clementine.id;
		for (var index = 0; index < ds_list_size(defaultDialogChoices); index++) {
			new_dialog_choice_sequence[1,index] = ds_list_find_value(defaultDialogChoices,index);
		}
		
	case "Ask for background":
		new_dialog_body_sequence[0] = "Who are you? What is your relationship with Marcelo?"
		new_dialog_character_sequence[0] = obj_player.id;
		new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_body_sequence[1] = "I’m Clementine Grzyb Tubi, *sobs* Marcelo was my husband *sobs*."
		new_dialog_character_sequence[1] = obj_clementine.id;
		for (var index = 0; index < ds_list_size(defaultDialogChoices); index++) {
			new_dialog_choice_sequence[1,index] = ds_list_find_value(defaultDialogChoices,index);
		}
		
		break;
	case "Check for alibi":
		new_dialog_body_sequence[0] = "Where were you at 22:15? Did you see anything?"
		new_dialog_character_sequence[0] = obj_player.id
		new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_body_sequence[1] = "I was delivering a pizza at that time. When I arrived, he was... well... *cries for a while*"
		new_dialog_character_sequence[1] = obj_clementine.id
		for (var index = 0; index < ds_list_size(defaultDialogChoices); index++) {
			new_dialog_choice_sequence[1,index+1] = ds_list_find_value(defaultDialogChoices, index);
		}
		break;
	
	case "Ask about ring":
		new_dialog_body_sequence[0] = "Is this ring yours, or do you know it’s owner?"
		new_dialog_character_sequence[0] = obj_player.id
		new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_body_sequence[1] = "No, I have never seen it before."
		new_dialog_character_sequence[1] = obj_clementine.id
		for (var index = 0; index < ds_list_size(defaultDialogChoices); index++) {
			new_dialog_choice_sequence[1,index] = ds_list_find_value(defaultDialogChoices, index);
		}
		break;
	case "Inquire if Marcelo is the bruiser":
		new_dialog_body_sequence[0] = "Was Marcelo the one who hit you?"
		new_dialog_character_sequence[0] = obj_player.id
		new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_body_sequence[1] = "*surprised* Marcelo? No, it wasn`t him… I mean… I fell, so nobody did it."
		new_dialog_character_sequence[1] = obj_clementine.id
		
		for (var index = 0; index < ds_list_size(defaultDialogChoices); index++) {
			new_dialog_choice_sequence[1,index] = ds_list_find_value(defaultDialogChoices, index);
		}
		break;
	case "Finish conversation":
		break;
}

add_data_sequence_to_dialog(new_dialog_body_sequence, new_dialog_character_sequence, new_dialog_choice_sequence);
move_to_next_dialog_step();
