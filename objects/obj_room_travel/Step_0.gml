/// @description Insert description here
// You can write your code in this editor
locations = available_locations(room, where);
layer = ds_list_size(locations) > 0 ? layer_get_id("Instances") : layer_get_id("layer_disabled_items");
