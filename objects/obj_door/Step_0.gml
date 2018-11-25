/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x,y, obj_player)) {
		if(mouse_check_button_pressed(mb_right)){
			if(global.done) {
				room_goto(room_end);	
			}
			myText = [];
			if(global.elecLock && global.keyLock) {
				myText[0] = "It's locked.";
				myText[1] = "Oddly enough, the door seem to have no handle. Only a keyhole...";	
			} else if(global.elecLock) {
				myText[0] = "I've unlocked the key lock already, but there still seems to be an electronic lock";
			} else if(global.keyLock) {
				myText[0] = "I've figure out the code and input it, but there still seems to be a lock...";
			} else {
				myText[0] = "Finally, I'm out of here!";
				global.done = true;
			}
		}
}

// Inherit the parent event
event_inherited();

