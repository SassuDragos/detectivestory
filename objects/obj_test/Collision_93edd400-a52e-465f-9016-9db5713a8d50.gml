/// @description Insert description here
// You can write your code in this editor

myText = [];
if(other.inInventory && !other.grab) {
	myText[0] = "That doesn't seem right...";
	ReAddObjectToInventory(other);
	event_inherited();
	myText = orig_text;
}



