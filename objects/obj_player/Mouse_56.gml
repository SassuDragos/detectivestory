/// @description  to target

if(global.actions_allowed) {
	
	destination_x = mouse_x;
	destination_y = mouse_y;
	
	direction = point_direction(x, y ,mouse_x, mouse_y);
	
	speed = speed < 6 ? speed + 3 : 6;
	
	if(abs(destination_x - x) > abs(destination_y - y)) {
		side = x > destination_x ? "left" : "right";	
	} else {
		side = y < destination_y ? "down" : "up";	
	}
	
	sprite_index = getSpriteForCharacter();
	
}
