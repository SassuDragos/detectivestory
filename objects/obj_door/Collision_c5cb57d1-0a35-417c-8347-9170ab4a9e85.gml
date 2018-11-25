/// @description Insert description here
// You can write your code in this editor

myText = [];
if(!other.grab) {
	if(other.id == obj_key.id && global.keyLock) {
		if(global.elecLock) {
			myText[0] = "It does seem to be the right key, but another lock is still activated.";
			myText[1] = "Maybe it's got something to do with the keypad next to the door?";
		} else {
			myText[0] = "The door is now unlocked, we can get out!";	
		}
		global.keyLock = false;
		audio_play_sound(snd_unlock, 1, false);
		RemoveObjectFromInventory(other);
	} else {
		myText[0] = "This doesn't seem to fit...";
		ReAddObjectToInventory(other);
	}
	
	if(myText != []) {
		event_inherited();
		myText = orig_text;
	}
}