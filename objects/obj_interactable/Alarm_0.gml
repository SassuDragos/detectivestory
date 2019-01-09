/// @description Insert description here
// You can write your code in this editor
var collision_obj = instance_place(x, y, obj_draggable);

if(!collision_obj) {
	return;	
}

var dialogBodySequence = ["Humm... That doesn't seem to be right..."];
var dialogCharacterSequence = [obj_player];
var dialogChoiceOptionSequence = ["Ok"];

instantiate_dialog_engine(	dialogBodySequence,
								dialogCharacterSequence,
								dialogChoiceOptionSequence);
								
ReAddObjectToInventory();