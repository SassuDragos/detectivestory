/// @function move_player_to(destination_x, destination_y)
if(global.actions_allowed) {
	
	destination_x = argument0;
	destination_y = argument1;
	
	spd = spd < 6 ? spd + 3 : 6;
	
	if(!mp_grid_path(global.path_grid, path, x, y, destination_x, destination_y, true)) {
		show_debug_message("This is not convenient at all...");	
	} else {
		path_set_kind(path, 1);
		path_set_precision(path, 8);
		path_start(path, spd, 0, 1);
	}
	
	if(abs(destination_x - x) > abs(destination_y - y)) {
		side = x > destination_x ? "left" : "right";	
	} else {
		side = y < destination_y ? "down" : "up";	
	}

}

