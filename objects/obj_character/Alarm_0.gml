/// @description Insert description here
// You can write your code in this editor
var collision_obj = instance_place(x, y, obj_draggable);

var char_name = string_replace(object_get_name(object_index), "obj_", "");
var reaction_script = asset_get_index(char_name + "_react_object");

if(!collision_obj || !script_exists(reaction_script) || !script_execute(reaction_script, collision_obj)) {
	event_inherited();
}