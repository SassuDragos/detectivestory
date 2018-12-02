/// @function move_player_to(destination_x, destination_y)
if(global.actions_allowed) {
    obj_player.destination_x = argument0;
    obj_player.destination_y = argument1;
	
	obj_player.spd = obj_player.spd < 6 ? obj_player.spd + 3 : 6;
	
	if(!mp_grid_path(global.path_grid, obj_player.path, obj_player.x, obj_player.y, obj_player.destination_x, obj_player.destination_y, true)) {
		var potential_x;
		var potential_y;
		var foundNearest = false;
		for(var i = 1; i < 100; ++i) {
			if(ds_grid_get_disk_max(global.ds_path_grid, obj_player.destination_x, obj_player.destination_y, i) == 0) {
				foundNearest = true;
				potential_x = ds_grid_value_disk_x(global.ds_path_grid, obj_player.destination_x, obj_player.destination_y, i, 0);
				potential_y = ds_grid_value_disk_y(global.ds_path_grid, obj_player.destination_x, obj_player.destination_y, i, 0);
				break;
			}
		}
		if(foundNearest) {
			mp_potential_path(obj_player.path, potential_x, potential_y, 3, 4, 0);
		}
	} else {
        path_set_kind(obj_player.path, 1);
        path_set_precision(obj_player.path, 8);
        path_start(obj_player.path, obj_player.spd, 0, 1);
	}
	
	if(abs(obj_player.destination_x - obj_player.x) > abs(obj_player.destination_y - obj_player.y)) {
		obj_player.side = obj_player.x > obj_player.destination_x ? "left" : "right";	
	} else {
		obj_player.side = obj_player.y < obj_player.destination_y ? "down" : "up";	
	}

}

