/// @description Insert description here
// You can write your code in this editor

if(start || room_to_go > -1) {
	
	global.actions_allowed = false;
	
	var factor = start ? -0.1 : 0.1;
	image_alpha = clamp(image_alpha + (factor / fade_speed), 0, 1);
	if(image_alpha == 1) {
		room_goto(room_to_go);
		room_to_go = -1;
		start = true;
	} else if(image_alpha == 0) {
		start = false;
		global.actions_allowed = true;
		fade_speed = original_fade_speed;
	}
	
}

draw_self();