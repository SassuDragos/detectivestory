/// @description Insert description here
// You can write your code in this editor
var collision_obj = instance_place(x, y, obj_draggable);

if(!collision_obj || collision_obj.object_index != obj_crowbar) {
	return;	
}
if(collision_obj.object_index == obj_crowbar){
variable_global_set("door_open", true);

character_says(obj_player, "We better enter and check if she is okay.");
RemoveObjectFromInventory(collision_obj, true);
}else{
	
character_says(obj_player, "Humm... That doesn't seem to be right...");
ReAddObjectToInventory();	
}