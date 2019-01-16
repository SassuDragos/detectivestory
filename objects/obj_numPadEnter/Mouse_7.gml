switch(room) {
	case room_Computer:
		if(obj_digits.digit = "2677"){
			obj_compHUD.image_index = 3;
			ds_map_set(global.cluesMap, "knows_toad_location", true);
			add_available_location(noone, Where.OUTSIDE, RoomChoices.TOADS);
			character_says(obj_player, "Hum, so it seems this was the last delivery address for Miss Clementine. Maybe we should visit this place.");
		}else if(obj_digits.digit = "2767"){
			obj_compHUD.image_index = 2;
		}else{
			obj_compHUD.image_index = 1;
		}
		break;
	case room_keyLock:
		if(obj_digits.digit = "2639") {
			ds_map_set(global.cluesMap, "safe_puzzle_done", true);
			add_available_location(RoomChoices.APARTMENTS, Where.INNER, RoomChoices.SAFE_ROOM);
			character_says(obj_player, "Weird, the code is right but door didn't open ... I believe I heard a noise coming from upstairs, though. I should check it out.");
		}
		break;
	
}

	