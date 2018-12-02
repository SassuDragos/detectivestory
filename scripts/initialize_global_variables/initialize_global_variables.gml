variable_global_set("actions_allowed", true);

variable_global_set("context_menu_engine", noone);

var movementManager = instance_create_depth(10,10,10, obj_movement_event_manager);

variable_global_set("movement_manager", movementManager)

var cluesMap = ds_map_create()
ds_map_add(cluesMap,"knows_mario_wears_ring",false)
ds_map_add(cluesMap,"asked_bruise", false)
variable_global_set("cluesMap", cluesMap);


enum ContextMenuItemType {
	GOTO, 
	PICK_UP,
	DISCUSS
}