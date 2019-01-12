var dialogHolder = argument0;

var choice_option_sequence = dialogHolder.choice_option_sequence;

for(var i = 0; i < array_length_1d(choice_option_sequence); ++i) {
	if(choice_option_sequence[i] == "default") {
		choice_option_sequence[i] = ds_map_find_value(global.dialog_choices, dialogHolder.object_index);	
		break;
	}
}

return choice_option_sequence;