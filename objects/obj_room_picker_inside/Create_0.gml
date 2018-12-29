/// @description Insert description here
// You can write your code in this editor

choiceList = ds_list_create();
var availableRooms = global.available_locations_list;

switch(room) {
	case room_pizzaria:
		if (ds_list_find_index(availableRooms, RoomChoices.STORAGE) != -1) {
			ds_list_add(choiceList, RoomChoices.STORAGE) }	
		if (ds_list_find_index(availableRooms, RoomChoices.APARTMENTS) != -1) {
			ds_list_add(choiceList, RoomChoices.APARTMENTS) }	
		break;
	case room_living:
			ds_list_add(choiceList, RoomChoices.PIZZERIA)
		if (ds_list_find_index(availableRooms, RoomChoices.STORAGE) != -1) {
			ds_list_add(choiceList, RoomChoices.STORAGE) }
		break;
		
	case room_storage:
			ds_list_add(choiceList, RoomChoices.PIZZERIA)
			ds_list_add(choiceList, RoomChoices.APARTMENTS)
		break;
}

if (ds_list_size(choiceList) == 0) {
	partner_detective_ask_for_permision_first();
	instance_destroy(self);
}
lowerPos = 0;
upperPos = 4;

addX = 20;
addY = 10;

box_width = sprite_get_width(spr_choice_list_background) - (2*addX);
