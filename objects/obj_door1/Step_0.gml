/// @description Insert description here
// You can write your code in this editor
switch(room) {
	case room_pizzaria:
		if(ds_list_find_index(global.available_locations_list, RoomChoices.TOADS) > -1) {
			layer = layer_get_id("Instances");
		}
		break;
	case room_house_toad:
		if(ds_list_find_index(global.available_locations_list, RoomChoices.PIZZERIA) > -1) {
			layer = layer_get_id("Instances");
		}
		break;
}