/// @description Insert description here
// You can write your code in this editor
switch(room) {
	case room_pizzaria:
		global.tutorial_active = false;
	default:
		fade_change_to_room(room_pizzaria);
		break;
}