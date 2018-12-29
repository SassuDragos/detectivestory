/// @description Insert description here
// You can write your code in this editor

switch(room) {
	case room_storage:
		if(ds_list_find_index(global.available_locations_list, RoomChoices.PIZZERIA) > -1) {
			layer = layer_get_id("Instances");
		}
		break;
	case living_room:
		if(ds_list_find_index(global.available_locations_list, RoomChoices.STORAGE) > -1) {
			layer = layer_get_id("Instances");
		}
		break;
}