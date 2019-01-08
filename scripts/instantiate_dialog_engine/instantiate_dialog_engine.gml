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
	global.dialog_engine.behaviourSequence = argument_count > 4 ? argument[4] : [];
    global.dialog_engine.dialogResolver = argument_count > 3 && argument[3] != noone ? argument[3] : default_dialog_resolver;
	global.dialog_engine.target = self;
	global.dialog_engine.currentDialogStep = 0;
}
