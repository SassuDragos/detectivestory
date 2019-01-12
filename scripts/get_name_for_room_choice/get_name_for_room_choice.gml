/// @function get_name_for_room_choice(roomChoice)

/*
	Function get a RoomChoice enum and returns the string version of the room name.
*/

switch(argument0) {
	case RoomChoices.TOADS:
		return "Last delivery address";
		break
	case RoomChoices.PIZZERIA:
		return "Pizzeria (Ground Floor)";
		break;
	case RoomChoices.STORAGE:
		return "Storage (1st Floor)";
		break;
	case RoomChoices.APARTMENTS:
		return "Apartments (2nd Floor)";
		break;
}