/// @description Player movement

// Set mouse position
if (!point_in_rectangle(mouse_x, mouse_y, 0, 519, 355, 768)){
	if (mouse_check_button_pressed(mb_left)){
		target_x = mouse_x;
		target_y = mouse_y;
	}
	
	// move player

	if(point_distance(x, y,target_x, target_y) > 5 && target_x != noone && target_y != noone){
		image_speed = spd / 3;;
		move_towards_point(target_x, target_y, spd);
	
		// set direction sprite
	
		if (target_x <= x && target_y >= y){
			sprite_index = spr_player_SO;
		}
		if (target_x <= x && target_y <= y){
			sprite_index = spr_player_NO;
		}
		if (target_x >= x && target_y >= y){
			sprite_index = spr_player_SE;
		}
		if (target_x >= x && target_y <= y){
			sprite_index = spr_player_NE;
		}
	

	} else {
		speed = 0;
		image_index = 0;
		image_speed = 0;
		check = false;
	}
}