// Let's see if we're walking

if(destination_x != reset_destination_x) {
	
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


