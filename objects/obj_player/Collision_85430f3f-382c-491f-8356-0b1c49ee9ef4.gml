/// @description Insert description here
// You can write your code in this editor

myText = [];
if(other.inInventory && !other.grab) {
	if(other.id == obj_key.id) {
		myText[0] = "It's an ordinary key I just found lying around here...";
		ReAddObjectToInventory(other);
	}
	else if(other.id == obj_potion.id) {
		myText[0] = "Only God knows how good it feels to drink while on duty!";
		audio_play_sound(snd_drink, 1, false);
		RemoveObjectFromInventory(other);
	} else {
		myText[0] = "This doesn't seem to fit...";
		ReAddObjectToInventory(other);
	}
}

event_inherited();