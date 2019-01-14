/// @function move_to_next_dialog_step()

var textSequence = global.dialog_engine.bodyTextSequence;
var characterSequence = global.dialog_engine.charactersSequence;
var choicesSequence = global.dialog_engine.choiceSequence;

if(argument_count > 0) {
	textSequence = argument[0];
	characterSequence = argument[1];
	choicesSequence = argument[2];
	behaviourSequence = argument[3];
}

// One liner
/*if(array_length_1d(textSequence) == 1) {
	instance_destroy(global.dialog_engine);
	return;
}*/

if (global.dialog_engine.currentDialogStep < array_length_1d(textSequence)) {
	if(global.dialog_engine.currentDialogStep < array_length_1d(global.dialog_engine.behaviourSequence)) {
		setup_dialog_displayed_data(textSequence[global.dialog_engine.currentDialogStep], 
									characterSequence[global.dialog_engine.currentDialogStep], 
									array_length_1d(choicesSequence) > 0 ? choicesSequence[global.dialog_engine.currentDialogStep] : noone,
									global.dialog_engine.behaviourSequence[global.dialog_engine.currentDialogStep]);
	} else {
		setup_dialog_displayed_data(textSequence[global.dialog_engine.currentDialogStep], 
									characterSequence[global.dialog_engine.currentDialogStep], 
									array_length_1d(choicesSequence) > 0 ? choicesSequence[global.dialog_engine.currentDialogStep] : noone);
	}
	global.dialog_engine.currentDialogStep += 1
} else {
	instance_destroy(global.dialog_engine);	
}
