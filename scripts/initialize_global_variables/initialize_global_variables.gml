enum ContextMenuItemType {
	GOTO, 
	PICK_UP,
	DISCUSS,
	INSPECT
}

enum RoomChoices {
	TOADS,
	PIZZERIA,
	STORAGE,
	APARTMENTS,
}



variable_global_set("actions_allowed", true);

variable_global_set("context_menu_engine", noone);

var movementManager = instance_create_depth(10,10,10, obj_movement_event_manager);

variable_global_set("movement_manager", movementManager)

var cluesMap = ds_map_create();
// Clementine - Stage 1
ds_map_add(cluesMap, "knows_mario_wears_ring",false)
ds_map_add(cluesMap, "asked_bruise", false);

// TOAD
ds_map_add(cluesMap, "gave_toad_pizza", false);
ds_map_add(cluesMap, "knows_toad_took_shrooms", false)
ds_map_add(cluesMap, "has_convinced_mitch", false)
ds_map_add(cluesMap, "knows_about_clementine_dealing", false)
variable_global_set("cluesMap", cluesMap);

// Partner
ds_map_add(cluesMap, "no_of_background_questions_on_partner", 0);

// Violet
ds_map_add(cluesMap, "upstairs_inquiry_unlocked", false);
ds_map_add(cluesMap, "upstairs_ask_for_permission_unlocked", false);

var availableLocationsList = ds_list_create();
ds_list_add(availableLocationsList, RoomChoices.TOADS)
variable_global_set("available_locations_list", availableLocationsList);

variable_global_set("game_stage", 2);

variable_global_set("deliveryLedger", 0);