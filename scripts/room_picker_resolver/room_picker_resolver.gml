/// @function room_picker_resolver(selectedValue)

switch(argument0) {
	case RoomChoices.TOADS:
		room_goto(room_house_toad);
		break;
	case RoomChoices.PIZZERIA:
		room_goto(room_pizzaria);
		break;
}