/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x,y, obj_player)) {
		if(mouse_check_button_pressed(mb_right)){
			if(myTextbox == noone){
				myText[0] = "Oh, I love this song!";
			}
			isPlaying = action_on_object_with_sound(activeSound, false, isPlaying);
		}
	} else {
		instance_destroy(myTextbox);
		myTextbox = noone;
		instance_destroy(myAvatar);
		myAvatar = noone;
}

if(isPlaying == true) {
	image_speed = 8;
} else {
	image_speed = 0;
}


// Inherit the parent event
event_inherited();

