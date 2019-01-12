/// @function add_data_sequence_to_dialog(newBodies, newCharacters, newChoices)

var nextDialogStep = global.dialog_engine.currentDialogStep + 1;
var newSequenceSize = array_length_1d(argument[0]);

var bodyTextSequence = argument[0];
var charactersSequence = argument[1];
var choiceListSequence = argument[2];

for (var index = 0; index < newSequenceSize; index = index+1) {
    global.dialog_engine.bodyTextSequence[nextDialogStep+index] = bodyTextSequence[index];
    global.dialog_engine.charactersSequence[nextDialogStep+index] = charactersSequence[index];
    global.dialog_engine.choiceSequence[nextDialogStep+index] = choiceListSequence[index];
    
	/*var choiceListLengthAtIndex = ds_list_size(choiceListSequence[index]);
	for(var choiceIndex = 0; choiceIndex < choiceListLengthAtIndex; choiceIndex = choiceIndex + 1) {
		global.dialog_engine.choiceSequence[nextDialogStep+index, choiceIndex] = choiceListSequence[index, choiceIndex];
    }*/
	global.dialog_engine.choiceBoxObject.newOptions = true;
	if(argument_count > 3) {
		var behaviourSequence = argument[3];
		if(array_length_1d(behaviourSequence) > index) {
			global.dialog_engine.behaviourSequence[nextDialogStep+index] = behaviourSequence[index];
		}
	}
}
