/// @description Insert description here
// You can write your code in this editor
var collision_obj = instance_place(x, y, obj_draggable);

if(!collision_obj) {
	return;	
}

character_says(obj_player, "Humm... That doesn't seem to be right...");
ReAddObjectToInventory();