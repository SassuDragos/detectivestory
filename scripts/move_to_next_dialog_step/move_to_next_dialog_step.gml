/// @function move_to_next_dialog_step()

global.dialog_engine.currentDialogStep += 1

if (global.dialog_engine.currentDialogStep < array_length_1d(global.dialog_engine.bodyTextSequence)) {
	setup_dialog_data(	global.dialog_engine.bodyTextSequence[global.dialog_engine.currentDialogStep], 
						global.dialog_engine.charactersSequence[global.dialog_engine.currentDialogStep], 
						get_row_from_2darray(global.dialog_engine.choiceSequence, global.dialog_engine.currentDialogStep));
} else {
	instance_destroy(global.dialog_engine);	
}
