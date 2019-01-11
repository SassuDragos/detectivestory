/// @description Insert description here
// You can write your code in this editor
if(where == Where.OUTSIDE) {
	// Inherit the parent event
	event_inherited();
} else {
	var tempLocations = available_locations(room, Where.INNER);
	layer = ds_list_find_index(tempLocations, one_way) != -1 && unlocked ? layer_get_id("Instances") : layer_get_id("layer_disabled_items");
}

