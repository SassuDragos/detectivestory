/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x,y, obj_player)){
	if(mouse_check_button_pressed(mb_right)){
		if(global.dialog_engine == noone){
			global.dialog_engine = instance_create_depth(0, 0, 0, obj_dialog_engine);
			global.dialog_engine.bodyTextSequence = myBodyTextSequence;
			global.dialog_engine.charactersSequence = myCharactersSequence;
			global.dialog_engine.choiceSequence = myChoiceSequence;
			global.dialog_engine.currentDialogStep = 0;
		}
	}
}