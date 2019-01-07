/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(inInventory) {
	if(place_meeting(x,y,obj_michigan)) {
		action_givepizza();
		RemoveObjectFromInventory(self, true);
	}
}

