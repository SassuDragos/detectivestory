/// @function add_sequence_to_dialog(newBodies, newCharacters, newChoices)

var nextDialogStep = global.dialog_engine.currentDialogStep + 1;
var newSequenceSize = array_length_1d(argument0);

for (var index = 0; index < newSequenceSize; index = index+1) {
    global.dialog_engine.bodyTextSequence[nextDialogStep+index] = argument0[index];
    global.dialog_engine.charactersSequence[nextDialogStep+index] = argument1[index];
    
    var choiceListLengthAtIndex = array_length_2d(argument2,index);
    for(var choiceIndex = 0; choiceIndex < choiceListLengthAtIndex; choiceIndex = choiceIndex + 1) {
        global.dialog_engine.choiceSequence[nextDialogStep+index, choiceIndex] = argument2[index,choiceIndex];
    }    
}
