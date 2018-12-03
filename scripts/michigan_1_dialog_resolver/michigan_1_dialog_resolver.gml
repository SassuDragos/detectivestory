/// @function partner_detective_1_dialog_resolver(selected_dialog_choice) 

var selectedDialogChoice = argument0;
var defaultDialogChoices = partner_detective_1_default_choices();

var new_dialog_body_sequence = []
var new_dialog_character_sequence = []
var new_dialog_choice_sequence = []
	
switch(selectedDialogChoice) {
	case "What...?":
		new_dialog_body_sequence[0] = "Hmm, hey dude, are you ok? You seem a bit ... absent..."
		new_dialog_character_sequence[0] = obj_player;
		new_dialog_choice_sequence[0,0] = "Check answer..."
		
		new_dialog_body_sequence[1] = "I`m not crazy, my reality is just different than yours."
		new_dialog_character_sequence[1] = obj_michigan;
		new_dialog_choice_sequence[1,0] = "*Shake him a bit*";
		new_dialog_choice_sequence[1,1] = "Finish `conversation`"
		break;
	case "*Shake him a bit*":
		new_dialog_body_sequence[0] = "*You push him slowly and his head bangs the wall as his body had little to no support for it.*"
		new_dialog_character_sequence[0] = obj_player;
		new_dialog_choice_sequence[0,0] = "See reaction..."
		
		new_dialog_body_sequence[1] = "Where am I? Why am I so hungry?"
		new_dialog_character_sequence[1] = obj_michigan;
		new_dialog_choice_sequence[1,0] = "Finish `conversation`"
		
		break;
	case "Finish `conversation`":
		break;
}

add_data_sequence_to_dialog(new_dialog_body_sequence, new_dialog_character_sequence, new_dialog_choice_sequence);
move_to_next_dialog_step();

