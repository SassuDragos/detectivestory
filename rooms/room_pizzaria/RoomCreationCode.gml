switch(global.game_stage) {
	case 4:
	case 3:
		upstairs_available();
	case 2:
		add_available_location(noone, Where.OUTSIDE, RoomChoices.TOADS);
	case 1:
}