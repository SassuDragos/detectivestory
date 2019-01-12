var character = argument0;
var speech = argument1;

var textSequence = [speech];
var characterSequence = [character];

var dialogChoiceOptionSequence = variable_instance_exists(character, "choice_option_sequence") ? character.choice_option_sequence : [];

if(global.dialog_engine == noone) {
	instantiate_dialog_engine(	textSequence,
									characterSequence,
									[]);
} else {
	if(array_length_1d(global.dialog_engine.bodyTextSequence) > 0) {
		array_copy(textSequence, 1, global.dialog_engine.bodyTextSequence, 0, array_length_1d(global.dialog_engine.bodyTextSequence));
		array_copy(characterSequence, 1, global.dialog_engine.charactersSequence, 0, array_length_1d(global.dialog_engine.charactersSequence));
		array_copy(dialogChoiceOptionSequence, 1, global.dialog_engine.choiceSequence, 0, array_length_1d(global.dialog_engine.choiceSequence));
	}
	add_data_sequence_to_dialog(textSequence, characterSequence, dialogChoiceOptionSequence);
	move_to_next_dialog_step();
}