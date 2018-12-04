/// @function get_name_for_room_choice(roomChoice)

/*
	Function get a RoomChoice enum and returns the string version of the room name.
*/

switch(argument0) {
	case RoomChoices.TOADS:
		return "Last delivery address";
		break
	case RoomChoices.PIZZERIA:
		return "Pizzeria";
		break;
	case RoomChoices.STORAGE:
		return "Second Floor";
		break;
	case RoomChoices.APARTMENTS:
		return "Third Floor";
		break;
}