var the_room = argument0;
var where = argument1;
var location = argument2;

switch(where) {
	case Where.INNER:
		return ds_map_exists(global.available_locations_inner, the_room) && ds_list_find_index(ds_map_find_value(global.available_locations_inner, the_room), location) != -1;
	case Where.OUTSIDE:
		if(!ds_map_exists(global.available_locations_outside, location)) {
			return false;
		}
		var key = ds_map_find_first(global.available_locations_outside);
		while(!is_undefined(key)) {
			if(ds_list_find_index(ds_map_find_value(global.available_locations_outside, key), location) != -1) {
				return true;
			}
			key = ds_map_find_next(global.available_locations_outside, key);
		}
		return false;
	case Where.INSIDE_UPSTAIRS:
		return ds_map_exists(global.available_locations_inside_up, the_room) && ds_list_find_index(ds_map_find_value(global.available_locations_inside_up, the_room), location) != -1;
	case Where.INSIDE_DOWNSTAIRS:
		return ds_map_exists(global.available_locations_inside_down, the_room) && ds_list_find_index(ds_map_find_value(global.available_locations_inside_down, the_room), location) != -1;
}