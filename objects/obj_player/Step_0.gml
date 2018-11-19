// Let's see if we're walking

event_inherited()

if(destination_x != reset_destination_x) {
	
	if((side == "left" && x <= destination_x) || (side == "right" && x >= destination_x)) {
		
		// We should stop
		speed = 0;
		sprite_index = StillSW;
		image_index = 0;
		destination_x = reset_destination_x;

	}
	
	if(side == "right" && x >= destination_x) {
		image_xscale = -1;
	}
}
