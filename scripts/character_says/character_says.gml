var character = argument0;
var speech = argument1;

var dialogChoiceOptionSequence = variable_instance_exists(character, "choice_option_sequence") ? character.choice_option_sequence : [];
		
if(global.dialog_engine == noone) {
	instantiate_dialog_engine(	[speech],
									[character],
									[]);
} else {
	add_data_sequence_to_dialog([speech], [character], dialogChoiceOptionSequence);
	move_to_next_dialog_step();
}