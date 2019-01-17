enum ContextMenuItemType {
	GOTO, 
	PICK_UP,
	DISCUSS,
	INSPECT, 
	ENTER_ROOM,
	GIVEPIZZA
}

enum RoomChoices {
	TOADS = room_house_toad,
	PIZZERIA = room_pizzaria,
	STORAGE = room_storage,
	APARTMENTS = room_living,
	BEDROOM_MARIO = room_bedroom_mario,
	BEDROOM_LUIGI = room_bedroom_luigi,
	SAFE_ROOM = room_safe,
	BATHROOM = room_bathroom,
	OFFICE = room_office
}

enum Where {
	OUTSIDE,
	INSIDE_UPSTAIRS,
	INSIDE_DOWNSTAIRS,
	INNER
}
//

//
variable_global_set("actions_allowed", true);
variable_global_set("dialog_engine", noone);
variable_global_set("context_menu_engine", noone);
variable_global_set("path_grid", noone);

var movementManager = instance_create_depth(10,10,10, obj_movement_event_manager);
variable_global_set("movement_manager", movementManager)

var cluesMap = ds_map_create();
// Clementine - Stage 1
ds_map_add(cluesMap, "knows_toad_location", false);
ds_map_add(cluesMap, "safePuzzle_done", false);
ds_map_add(cluesMap, "picked_guide_paper", false);
ds_map_add(cluesMap, "knows_mario_wears_ring", false);
ds_map_add(cluesMap, "asked_bruise", false);

// TOAD
ds_map_add(cluesMap, "gave_toad_pizza", false);
ds_map_add(cluesMap, "knows_toad_took_shrooms", false)
ds_map_add(cluesMap, "has_convinced_mitch", false)
ds_map_add(cluesMap, "knows_about_clementine_dealing", false)
ds_map_add(cluesMap, "picked_pizza", false)

// Partner
ds_map_add(cluesMap, "no_of_background_questions_on_partner", 0);

// Violet
ds_map_add(cluesMap, "upstairs_inquiry_unlocked", false);
ds_map_add(cluesMap, "upstairs_ask_for_permission_unlocked", false);

// Leonardo
ds_map_add(cluesMap, "has_discovered_leonardo", false) 

//// ITEM CLUES

// Ring
ds_map_add(cluesMap, "has_bruiser_ring_in_inventory", false);

ds_map_add(cluesMap, "violet_door_open", false);

ds_map_add(cluesMap, "picked_crowbar", false);

variable_global_set("cluesMap", cluesMap);

variable_global_set("available_locations_outside", ds_map_create());
variable_global_set("available_locations_inside_up", ds_map_create());
variable_global_set("available_locations_inside_down", ds_map_create());
variable_global_set("available_locations_inner", ds_map_create());
add_available_location(noone, Where.OUTSIDE, RoomChoices.PIZZERIA);

variable_global_set("game_stage", 1);

variable_global_set("interrogation_enabled", false); 

variable_global_set("inventory_items", ds_list_create());

variable_global_set("dialog_choices", ds_map_create());

variable_global_set("character_stage", ds_map_create());

variable_global_set("tutorial_active", true);

variable_global_set("detective_eye", false);