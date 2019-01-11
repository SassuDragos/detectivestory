/// @function partner_detective_1_dialog_resolver(selected_dialog_choice) 

var selectedDialogChoice = argument0;
var defaultDialogChoices = leonardo_1_default_choices();

var new_dialog_body_sequence = []
var new_dialog_character_sequence = []
var new_dialog_choice_sequence = []
	
switch(selectedDialogChoice) {
	case "Present yourself":
		new_dialog_body_sequence[0] = "My name is Don, Detective Don Nuts. I am investigating the murder in the pizza place at the ground floor. Daisy, the accountant who leaves here let me in."
		new_dialog_character_sequence[0] = obj_player.id;
		//new_dialog_choice_sequence[0,0] = "Check answer..."
	
		new_dialog_body_sequence[1] = "Ah, my wife let you in... Yeah, this was such an unpredictible event... so terrible, who would do that to him?"
		new_dialog_character_sequence[1] = obj_leonardo.id;
		for (var index = 0; index < ds_list_size(defaultDialogChoices); index++) {
			new_dialog_choice_sequence[1,index] = ds_list_find_value(defaultDialogChoices,index);
		}
		break;
	case "Clementine’s Whereabouts":
		new_dialog_body_sequence[0] = "Where is Clementine?"
		new_dialog_character_sequence[0] = obj_player.id;
		//new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_body_sequence[1] = "She is in her room."
		new_dialog_character_sequence[1] = obj_leonardo.id;
		for (var index = 0; index < ds_list_size(defaultDialogChoices); index++) {
			new_dialog_choice_sequence[1,index] = ds_list_find_value(defaultDialogChoices,index);
		}
		
		break;
	case "Ask about background":
		new_dialog_body_sequence[0] = "Who are you? What is your relationship with Marcelo?"
		new_dialog_character_sequence[0] = obj_player.id;
		//new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_body_sequence[1] = "I`m Leonardo Tubi, and I`m Markie’s brother... damn why did he have to die, I loved him but he always had bad timing."
		new_dialog_character_sequence[1] = obj_leonardo.id;
		for (var index = 0; index < ds_list_size(defaultDialogChoices); index++) {
			new_dialog_choice_sequence[1,index] = ds_list_find_value(defaultDialogChoices,index);
		}
		
		break;
	case "Ask role in the pizzeria":
		new_dialog_body_sequence[0] = "Do you also work here?"
		new_dialog_character_sequence[0] = obj_player.id;
		//new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_body_sequence[1] = "I`m the co-owner... well owner now.";
		new_dialog_character_sequence[1] = obj_leonardo.id;
		new_dialog_choice_sequence[1, 0] = "Ask about the business"; 
		for (var index = 0; index < ds_list_size(defaultDialogChoices); index++) {
			new_dialog_choice_sequence[1,index+1] = ds_list_find_value(defaultDialogChoices,index);
		}
		
		break;
	case "Ask about the business":
		new_dialog_body_sequence[0] = "How is the pizzeria doing?"
		new_dialog_character_sequence[0] = obj_player.id;
		//new_dialog_choice_sequence[0,0] = "Check answer..."
	
		new_dialog_body_sequence[1] = "Not too well, but right now I don`t want to think about that.";
		new_dialog_character_sequence[1] = obj_leonardo.id;
		for (var index = 0; index < ds_list_size(defaultDialogChoices); index++) {
			new_dialog_choice_sequence[1,index] = ds_list_find_value(defaultDialogChoices,index);
		}
		break;
	case "Check for alibi":
		new_dialog_body_sequence[0] = "Where were you at 22:15?"
		new_dialog_character_sequence[0] = obj_player.id;
		//new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_body_sequence[1] = "I was in my room, thinking.”";
		new_dialog_character_sequence[1] = obj_leonardo.id;
		for (var index = 0; index < ds_list_size(defaultDialogChoices); index++) {
			new_dialog_choice_sequence[1,index] = ds_list_find_value(defaultDialogChoices,index);
		};
	
		break; 
	case "Ask about sound":
		new_dialog_body_sequence[0] = "Didn’t you hear anything?"
		new_dialog_character_sequence[0] = obj_player.id;
		//new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_body_sequence[1] = "No, we are in the third floor you can`t even hear the washing machine, and that thing is noisy.";
		new_dialog_character_sequence[1] = obj_leonardo.id;
		for (var index = 0; index < ds_list_size(defaultDialogChoices); index++) {
			new_dialog_choice_sequence[1,index+initialIndex] = ds_list_find_value(defaultDialogChoices,index);
		};
		break;
	case "Finish `conversation`":
		break;
}

add_data_sequence_to_dialog(new_dialog_body_sequence, new_dialog_character_sequence, new_dialog_choice_sequence);
move_to_next_dialog_step();

