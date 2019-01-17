/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

switch(room) {
	case room_house_toad:
		if(!inInventory) {
			AddObjectToInventory(self, true);
		}
		break;
}

