/// @description Insert description here
// You can write your code in this editor
switch(room) {
	case room_pizzaria:
		global.tutorial_active = false;
		//global.game_stage = 3;
		fade_change_to_room(room_pizzaria);
		return;
	default:
		fade_change_to_room(room_pizzaria);
		break;
}