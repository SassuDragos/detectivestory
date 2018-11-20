/// @function instantiate_dialog(body_text_sequence_list, character_sequence_list, choice_sequence_matrix)

/*
	argument[0]: Body text sequence
	argument[1]: Owner character of each dialogue sequence.
	argument[2]: Dialogue options for each sequence
*/

if(global.dialog_engine == noone){
	global.dialog_engine = instance_create_depth(0, 0, 0, obj_dialog_engine);
	global.dialog_engine.body_text_sequence = argument[0];
	global.dialog_engine.characters_sequence = argument[1];
	global.dialog_engine.choice_sequence = argument[2];
	global.dialog_engine.currentDialogStep = 0;
}
