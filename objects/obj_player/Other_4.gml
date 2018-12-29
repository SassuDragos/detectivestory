global.path_grid = mp_grid_create(0, 0, room_width/32, room_height/32, 32, 32);

with(obj_obstacle) {
	mp_grid_add_instances(global.path_grid, id, false);
}

global.ds_path_grid = ds_grid_create(room_width/32, room_height/32);

mp_grid_to_ds_grid(global.path_grid, global.ds_path_grid);

/**
	INITIALIZE BW LAYERS
*/
if(!layer_exists("layer_disabled_items")) {
	layer_create(layer_get_depth("Instances") + 1, "layer_disabled_items");
}
var l = layer_get_id("layer_bg_scene");
var l2 = layer_get_id("layer_disabled_items");
layer_shader(l, sha_bw);
layer_shader(l2, sha_bw);