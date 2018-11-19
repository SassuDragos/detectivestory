/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event


myText = [];
if(!other.grab) {
	if(other.id == obj_mug.id && noTea == true) {
		myText[0] = "I made some tea. Maybe if I give this to the little girl, she'll calm down a bit.";
		noTea = false;
		obj_mug.image_index = 1;
		ReAddObjectToInventory(obj_mug);
	} else {
		myText[0] = "This doesn't seem to fit...";
		ReAddObjectToInventory(other);
	}
}

event_inherited();

myText = orig_text;
