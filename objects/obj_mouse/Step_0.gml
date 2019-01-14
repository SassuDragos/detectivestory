/// @description Insert description here
// You can write your code in this editor
if(global.tutorial_active && image_xscale == 1 && animation > 0) {
	visible = true;
	switch(animation) {
	
		case 1:
			angle += 0.1;
			x += cos(angle) * 10;
			y += sin(angle) * 10;
			break;
		case 2:
			x = original_x;
			y = original_y;
			break;
		case 3:
			image_speed = 0;
			if(y > original_y - 300) {
				y -= 10;
				image_index = 1;
			}
			else {
				alarm[0] = 20;
				clear = true;
			}
			break;
		
	}
	
} else if(!clear) {
	visible = false;	
}