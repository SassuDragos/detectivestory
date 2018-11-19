/// @description  to target

if(canMove) {
	
	if(mouse_x >= x) {
		image_xscale = -1;
		side = "right";
	} else {
		image_xscale = 1;
		side = "left";
	}

	if(mouse_y <= y) {
		sprite_index = spr_detective_walk_nw;	
	} else {
		sprite_index = spr_detective_walk_sw;
	}

	image_index = 0;

	direction = point_direction(x, y, mouse_x, mouse_y);

	destination_x = mouse_x;
	destination_y = mouse_y;

	speed = 3;
	
}
