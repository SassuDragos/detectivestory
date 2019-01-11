var the_room = argument0;
var where = argument1;
var location = argument2;

switch(where) {
	case Where.INNER:
	case Where.OUTSIDE:
		if(the_room == noone) {
			var key = ds_map_find_first(global.available_locations_outside);
			while(!is_undefined(key)) {
				if(ds_list_find_index(ds_map_find_value(global.available_locations_outside, key), location) != -1) {
					return true;
				}
				key = ds_map_find_next(global.available_locations_outside, key);
			}
			return false;
		}
		return ds_list_find_index(ds_map_find_value(global.available_locations_outside, the_room), location) != -1;
	case Where.INSIDE_UPSTAIRS:
		return ds_list_find_index(ds_map_find_value(global.available_locations_inside_up, the_room), location) != -1;
	case Where.INSIDE_DOWNSTAIRS:
		return ds_list_find_index(ds_map_find_value(global.available_locations_inside_down, the_room), location) != -1;
}