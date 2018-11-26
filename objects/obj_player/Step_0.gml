// Let's see if we're walking

/*if(destinations.length > 0) {
	
	
	if((side == "left" && x <= destination_x) || (side == "right" && x >= destination_x)) {
		
		// We should stop
		speed = 0;
		sprite_index = spr_detective_still_sw;
		image_index = 0;
		destination_x = reset_destination_x;

	}
	
	if(side == "right" && x >= destination_x) {
		image_xscale = -1;
	}
}
*/

if(destination_x != reset_destination_x) {
	
	if((side == "left" && x <= destination_x) || (side == "right" && x >= destination_x) ||
	   (side == "up" && y <= destination_y) || (side == "down" && y >= destination_y)) {
		   // We should stop
		speed = 0;
		switch(side) {
			case "down": image_index = 0; break;
			case "up": image_index = 1; break;
			case "right": image_xscale = -1; image_index = 2; break;
			case "left": image_xscale = 1; image_index = 2; break;
		}
		sprite_index = spr_detective_still;
		destination_x = reset_destination_x;
		destination_y = reset_destination_y;
	}
	
}


