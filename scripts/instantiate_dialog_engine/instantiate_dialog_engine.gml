/// @function instantiate_dialog_engine(bodyTextList, characterLists, choiceLists)

/*
	argument[0]: Body text sequence
	argument[1]: Owner character of each dialogue sequence.
	argument[2]: Dialogue options for each sequence
*/

if(global.dialog_engine == noone){
	global.dialog_engine = instance_create_depth(0, 0, 0, obj_dialog_engine);
    global.dialog_engine.bodyTextSequence = argument[0];
    global.dialog_engine.charactersSequence = argument[1];
    global.dialog_engine.choiceSequence = argument[2];
    global.dialog_engine.dialogResolver = argument[3]
	global.dialog_engine.currentDialogStep = 0;
}