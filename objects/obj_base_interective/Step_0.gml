/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x,y, obj_player)){
	if(mouse_check_button_pressed(mb_right)){
		if(!variable_global_exists("dialogEngine")){
			global.dialogEngine = instance_create_depth(0, 0, 0, obj_dialog_engine);
			global.dialogEngine.bodyTextSequence = myBodyTextSequence;
			global.dialogEngine.charactersSequence = myCharactersSequence;
			global.dialogEngine.choiceSequence = myChoiceSequence;
			global.dialogEngine.currentDialogStep = 0;
		}
	}
}