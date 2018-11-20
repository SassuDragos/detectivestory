/// @description Insert description here
// You can write your code in this editor

myText = [];
if(!other.grab) {
	if(other.id == obj_mug.id) {
		if(!obj_kettle.noTea) {
			myText[0] = "Thank you, sir! :D";
			mySprite = spr_girl_avatar;
			hasTea = true;
			RemoveObjectFromInventory(other);
		} else {
			myText[0] = "*sob* How's an empty mug going to help me? *sob*";
			ReAddObjectToInventory(other);
		}
	} else {
		myText[0] = "That doesn't seem to be right...";
		ReAddObjectToInventory(other);
	}
}

event_inherited();

myText = orig_text;


