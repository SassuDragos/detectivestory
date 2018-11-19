/// @description Move to target

if(move) {
	
	if(mouse_x >= x) {
		image_xscale = -1;
		side = "right";
	} else {
		image_xscale = 1;
		side = "left";
	}

	if(mouse_y <= y) {
		sprite_index = WalkNW;	
	} else {
		sprite_index = WalkSW;
	}

	image_index = 0;

	direction = point_direction(x, y, mouse_x, mouse_y);

	destination_x = mouse_x;
	destination_y = mouse_y;

	if(speed < 7.5) {
		speed += 2.5 ;
	}
	
}