/// @function move_player_to(destination_x, destination_y)
if(global.actions_allowed) {
	
	destination_x = argument0;
	destination_y = argument1;
	
	spd = spd < 6 ? spd + 3 : 6;
	
	if(!mp_grid_path(global.path_grid, path, x, y, destination_x, destination_y, true)) {
		var potential_x;
		var potential_y;
		var foundNearest = false;
		for(var i = 1; i < 100; ++i) {
			if(ds_grid_get_disk_max(global.ds_path_grid, destination_x, destination_y, i) == 0) {
				foundNearest = true;
				potential_x = ds_grid_value_disk_x(global.ds_path_grid, destination_x, destination_y, i, 0);
				potential_y = ds_grid_value_disk_y(global.ds_path_grid, destination_x, destination_y, i, 0);
				break;
			}
		}
		if(foundNearest) {
			mp_potential_path(path, potential_x, potential_y, 3, 4, 0);
		}
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

