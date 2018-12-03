/// @description Insert description here
// You can write your code in this editor

choiceList = ds_list_create();
var availableRooms = global.available_locations_list;

switch(room) {
	case room_pizzaria:
		if (ds_list_find_index(availableRooms, RoomChoices.TOADS) != -1) {
			ds_list_add(choiceList, RoomChoices.TOADS) }
		break;
	case room_house_toad:
			ds_list_add(choiceList, RoomChoices.PIZZERIA)
		break;
}

if (ds_list_size(choiceList) == 0) {
	instantiate_partner_no_rooms_discovered_hint();
	instance_destroy(self);
}
lowerPos = 0;
upperPos = 4;

addX = 20;
addY = 10;

box_width = sprite_get_width(spr_choice_list_background) - (2*addX);
