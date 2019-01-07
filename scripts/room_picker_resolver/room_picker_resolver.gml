/// @function room_picker_resolver(selectedValue)

switch(argument0) {
	case RoomChoices.TOADS:
		fade_change_to_room(room_house_toad);
		break;
	case RoomChoices.PIZZERIA:
		fade_change_to_room(room_pizzaria);
		break;
	case RoomChoices.STORAGE:
		fade_change_to_room(room_storage);
		break;
	case RoomChoices.APARTMENTS:
		fade_change_to_room(room_living);
		break;
}