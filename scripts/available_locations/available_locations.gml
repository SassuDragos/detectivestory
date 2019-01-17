var this_room = argument0;
var where = argument1;

var list;

switch(where) {
	case Where.INNER:
		list = ds_map_find_value(global.available_locations_inner, this_room);
		break;
	case Where.OUTSIDE:
		list = ds_map_find_value(global.available_locations_outside, this_room);
		break;
	case Where.INSIDE_UPSTAIRS:
		list = ds_map_find_value(global.available_locations_inside_up, this_room);
		break;
	case Where.INSIDE_DOWNSTAIRS:
		list = ds_map_find_value(global.available_locations_inside_down, this_room);
		break;
}

return is_undefined(list) ? ds_list_create() : list;