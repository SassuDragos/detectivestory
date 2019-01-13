/// @description Insert description here
// You can write your code in this editor

/*var view_w = camera_get_view_width(cam);
var view_h = camera_get_view_height(cam);

}*/

//view_camera[0] = camera_create_view(0, 0, 640, 480, 0, obj_player, 5, 5, -1, -1);

/*var cam_w = camera_get_view_width(view_camera[0]);
var cam_h = camera_get_view_height(view_camera[0]);

// ZOOM
camera_set_view_target(view_camera[0], target);

if (keyboard_check_pressed(ord("Z"))){
	if (target == obj_player){
	target = obj_partner;
	camera_set_view_target(view_camera[0], target);
	}
	else {
		target = obj_player;
		camera_set_view_target(view_camera[0], target);
	}
}

zoom = clamp(zoom + (mouse_wheel_down() - mouse_wheel_up()) * 5 , 0.03, 1);

var cam_w = lerp(cam_w, display_get_gui_width()*zoom, 0.2);
var cam_h = lerp(cam_h, display_get_gui_height()*zoom, 0.2);

camera_set_view_size(view_camera[0], cam_w, cam_h);
surface_resize(application_surface, display_get_gui_width(), display_get_gui_height());
*/



//CHANGE TARGET

if (/*keyboard_check_pressed(ord("H") || */zoomChange == true){
	if (target == obj_player){
	target = obj_partner;
	camera_set_view_target(view_camera[0], target);
	}
	else {
		target = obj_player;
		camera_set_view_target(view_camera[0], target);
	}
	//keyboard_key_press(ord("E"));
}

// ZOOM
camera_set_view_target(view_camera[0], target);

if(/*keyboard_check_pressed(ord("U")) || */zoomPlayer == true){
	camera_set_view_size(view_camera[0], 80, 45);
}

if(/*keyboard_check_pressed(ord("Y")) || */zoomBegi == true){
	camera_set_view_target(view_camera[0], obj_playerCutscenes);
	camera_set_view_size(view_camera[0], 178, 100);
}

if(/*keyboard_check_pressed(ord("O")) || */zoomOut == true){
	camera_set_view_target(view_camera[0], target_original);
	camera_set_view_size(view_camera[0], original_view_wport,original_view_hport);
	camera_set_view_pos(view_camera[0], 0, 0);
	//surface_resize(application_surface, display_get_gui_width(), display_get_gui_height());
}

// RAIN
/*
if(keyboard_check_pressed(ord("I"))){
	rain = true;
	
}
*/

if (rain == true){
	
	if(obj_sunburst.length != 0){
		obj_sunburst.length -= 10;
	}
	
	effect_create_above(ef_rain, 0, 0, choose(1,2), c_gray);
}




//effect_create_above(ef_spark, bbox_left + random(sprite_width), bbox_top + random(sprite_height), 2, merge_colour(c_white, c_yellow, random(1)));

//effect_create_above(ef_star, 0, 0, choose(0, 1, 2), c_yellow);


/*if (keyboard_check(ord("T"))){
	target = obj_player;
	camera_set_view_target(view_camera[0], target);
	camera_set_view_size(view_camera[0], 50, 50);
}
if (keyboard_check(ord("X"))){
	target = obj_partner;
	camera_set_view_target(view_camera[0], target);
	camera_set_view_size(view_camera[0], 50, 50);
}
if (keyboard_check(ord("X"))){
	target = obj_partner;
	camera_set_view_target(view_camera[0], target);
	camera_set_view_size(view_camera[0], 50, 50);
}*/