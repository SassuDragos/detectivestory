/// @function get_name_for_room_choice(roomChoice)

/*
	Function get a RoomChoice enum and returns the string version of the room name.
*/

switch(argument0) {
	case RoomChoices.TOADS:
		return "Last delivery address";
	case room_body_inspection:
	case room_organigram:
	case room_Computer:
	case RoomChoices.PIZZERIA:
		return "Pizzeria (Ground Floor)";
	case RoomChoices.STORAGE:
		return "Storage (1st Floor)";
	case RoomChoices.APARTMENTS:
		return "Living Room (2nd Floor)";
	case room_keyLock:
	case RoomChoices.OFFICE:
		return "Office (1st Floor)";
	case RoomChoices.SAFE_ROOM:
		return "Safe Room (2nd Floor)";
	case mirror_scene:
	case RoomChoices.BATHROOM:
		return "Bathroom (2nd Floor)";
	case room_interrogation:
		return "Interrogation Room";
	case room_bedroom_mario:
		return "Marcelo's room";
	case room_bedroom_luigi:
		return "Leonardo's room";
	default:
		return "Unknown Room";
}