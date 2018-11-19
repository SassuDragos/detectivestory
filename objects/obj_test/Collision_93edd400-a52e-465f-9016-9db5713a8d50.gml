/// @description Insert description here
// You can write your code in this editor

myText = [];
if(!other.grab) {
	if(other.id == obj_mug.id && obj_kettle.noTea == false) {
		myText[0] = "I'll tell you everything :D";
		RemoveObjectFromInventory(other);
	} else {
		myText[0] = "That doesn't seem to right...";
		ReAddObjectToInventory(other);
	}
}

event_inherited();

myText = orig_text;



