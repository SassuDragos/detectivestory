/// @description Insert description here
// You can write your code in this editor

myText = [];
if(!other.grab) {
	if(other.id == obj_mug.id && obj_kettle.noTea == false) {
		myText[0] = "Thank you, sir! :D";
		hasTea = true;
		RemoveObjectFromInventory(other);
	} else {
		myText[0] = "That doesn't seem to right...";
		ReAddObjectToInventory(other);
	}
}

event_inherited();
if (hasTea){
	myText[0] = "What will it be of me and my two little brothers?"
}


