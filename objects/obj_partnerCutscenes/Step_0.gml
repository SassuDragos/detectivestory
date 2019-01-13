/// @description Insert description here
// You can write your code in this editor

// MOVEMENT //

//keys

NONE = keyboard_check(vk_nokey);
SPEED = keyboard_check(vk_shift);

/*
if(keyboard_check(vk_up)){
	y -= walkSpeed;
	image_speed = walkSpeed / 3; // makes animation smooth
	//sprite_index = spr_detective_walking_up;
	
}
if(keyboard_check(vk_left)){
	x -= walkSpeed;
	image_speed = walkSpeed / 3; // makes animation smooth
	image_xscale = 1;
	sprite_index = spr_partner_left;
	
}
if(keyboard_check(vk_down)){
	y += walkSpeed;
	image_speed = walkSpeed / 3; // makes animation smooth
	//sprite_index = spr_detective_walking_down;
	
}
if(keyboard_check(vk_right)){
	x += walkSpeed;
	image_speed = walkSpeed / 3; // makes animation smooth
	image_xscale = -1
	sprite_index = spr_partner_left;
	
}
*/
if(keyboard_check(ord("Q")) || flag_dramatic == true){
	image_speed = walkSpeed / 3;
	sprite_index = spr_partner_dramatic;
	if image_index > image_number - 1{
		image_speed = 0;
	}
	
}else if(flag_stop == true){
	sprite_index = spr_partner_still;
}else if(flag_stop == false){
	sprite_index = spr_partner_left;
}
/*
if(SPEED){
	
	image_xscale = 1;
	sprite_index = spr_partner_run;
}
if(NONE){
	image_speed = 0; // makes animation smooth
	sprite_index = spr_partner_still;
	walkSpeed = 3.5;
}

*/
/*if(x <= 1240){
x += walkSpeed;
image_speed = walkSpeed / 3; // makes animation smooth
image_xscale = -1
sprite_index = spr_partner_left;

} else { flag_stop = true;}

if (flag_stop == true){
sprite_index = spr_partner_still;
}*/