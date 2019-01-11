var character = argument0;
var speech = argument1;

var dialogChoiceOptionSequence = variable_instance_exists(character, "dialog_choices") ? character.dialog_choices : [];
		
if(global.dialog_engine == noone) {
	instantiate_dialog_engine(	[speech],
									[character],
									[]);
} else {
	add_data_sequence_to_dialog([speech], [character], dialogChoiceOptionSequence);
	move_to_next_dialog_step();
}