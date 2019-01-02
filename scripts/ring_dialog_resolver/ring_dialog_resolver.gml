/// @function clementine_1_dialog_resolver(selected_dialog_choice) 

var selectedDialogChoice = argument0;

var new_dialog_body_sequence = []
var new_dialog_character_sequence = []
var new_dialog_choice_sequence = []
var new_dialog_behaviour_sequence = [];

switch(selectedDialogChoice) {
	case "Add ring to inventory":
		change_clue_status("has_bruiser_ring_in_inventory", true)
		AddObjectToInventory(global.dialog_engine.target)
		break;
}

add_data_sequence_to_dialog(new_dialog_body_sequence, new_dialog_character_sequence, new_dialog_choice_sequence, new_dialog_behaviour_sequence);
move_to_next_dialog_step();