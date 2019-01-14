/// @description Insert description here
// You can write your code in this editor
if((!instance_exists(obj_dialog) || !obj_dialog.firstCut) && !global.tutorial_active) {
	instance_destroy();
}