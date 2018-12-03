/// @function move_player_to(destination_x, destination_y)
if(global.actions_allowed) {
    if(mp_grid_path(global.path_grid, obj_player.path, obj_player.x, obj_player.y, argument0, argument1, true)) {
		obj_player.destination_x = argument0;
	    obj_player.destination_y = argument1;
	
		obj_player.spd = obj_player.spd < 6 ? obj_player.spd + 3 : 6;path_set_kind(obj_player.path, 1);
        path_set_precision(obj_player.path, 8);
        path_start(obj_player.path, obj_player.spd, 0, 1);
		if(abs(obj_player.destination_x - obj_player.x) > abs(obj_player.destination_y - obj_player.y)) {
			obj_player.side = obj_player.x > obj_player.destination_x ? "left" : "right";	
		} else {
			obj_player.side = obj_player.y < obj_player.destination_y ? "down" : "up";	
		}
	}

}

