if(destination_x != reset_destination_x && global.actions_allowed) {
	
	if((side == "left" && x <= destination_x) || (side == "right" && x >= destination_x) ||
	   (side == "up" && y <= destination_y) || (side == "down" && y >= destination_y)) {
		   // We should stop
		   spd = 0;
		switch(side) {
			case "down": image_index = 0; break;
			case "up": image_index = 1; break;
			case "right": image_xscale = -1; image_index = 2; break;
			case "left": image_xscale = 1; image_index = 2; break;
		}
		sprite_index = spr_detective_still;
		destination_x = reset_destination_x;
		destination_y = reset_destination_y;
	} else {
		if(abs(destination_x - x) > abs(destination_y - y)) {
			side = x > destination_x ? "left" : "right";	
		} else {
			side = y < destination_y ? "down" : "up";	
		}
	
		sprite_index = getSpriteForCharacter(spd, side);
	}
	
}