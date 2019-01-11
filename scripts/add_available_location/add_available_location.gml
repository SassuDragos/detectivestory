var the_room = argument0;
var where = argument1;
var location = argument2;

if(is_undefined(ds_map_find_value(global.available_locations_outside, location))) {
	ds_map_add(global.available_locations_outside, location, ds_list_create());
}

if(is_undefined(ds_map_find_value(global.available_locations_inside_up, location))) {
	ds_map_add(global.available_locations_inside_up, location, ds_list_create());	
}

if(is_undefined(ds_map_find_value(global.available_locations_inside_down, location))) {
	ds_map_add(global.available_locations_inside_down, location, ds_list_create());	
}

switch(where) {
	case Where.INNER:
	case Where.OUTSIDE:
		if(the_room == noone) {
			var key = ds_map_find_first(global.available_locations_outside);
			while(!is_undefined(key)) {
				if(key != location) {
					if(ds_list_find_index(ds_map_find_value(global.available_locations_outside, key), location) == -1) {
						ds_list_add(ds_map_find_value(global.available_locations_outside, key), location);
					}
					if(ds_list_find_index(ds_map_find_value(global.available_locations_outside, location), key) == -1) {
						ds_list_add(ds_map_find_value(global.available_locations_outside, location), key);
					}
				}
				key = ds_map_find_next(global.available_locations_outside, key);
			}
			return;
		}
		if(ds_list_find_index(ds_map_find_value(global.available_locations_outside, the_room), location) == -1) {
			ds_list_add(ds_map_find_value(global.available_locations_outside, the_room), location);
		}
		if(ds_list_find_index(ds_map_find_value(global.available_locations_outside, location), the_room) == -1) {
			ds_list_add(ds_map_find_value(global.available_locations_outside, the_room), location);
		}
		return;
	case Where.INSIDE_UPSTAIRS:
		if(ds_list_find_index(ds_map_find_value(global.available_locations_inside_up, the_room), location) == -1) {
			ds_list_add(ds_map_find_value(global.available_locations_inside_up, the_room), location);
		}
		if(ds_list_find_index(ds_map_find_value(global.available_locations_inside_down, location), the_room) == -1) {
			ds_list_add(ds_map_find_value(global.available_locations_inside_down, location), the_room);
		}
		return;
	case Where.INSIDE_DOWNSTAIRS:
		if(ds_list_find_index(ds_map_find_value(global.available_locations_inside_down, the_room), location) == -1) {
			ds_list_add(ds_map_find_value(global.available_locations_inside_down, the_room), location);
		}
		if(ds_list_find_index(ds_map_find_value(global.available_locations_inside_up, location), the_room) == -1) {
			ds_list_add(ds_map_find_value(global.available_locations_inside_up, location), the_room);
		}
		return;
}