if(sunburst == true){
	gpu_set_blendmode(bm_add); // draw_set_blend_mode(bm_add) in GMS1.4

	// iterate over all triangles
	for(var i = 0; i < segments; i++) {
		// origin at mouse
		var x1 = 0;
		var y1 = 0; 
	
		// second corner
		var x2 = x1 + lengthdir_x(length, rotation + (angle_interval * i));
		var y2 = y1 + lengthdir_y(length, rotation + (angle_interval * i));
	
		// third corner
		var x3 = x1 + lengthdir_x(length, rotation + (angle_interval * (i+1)));
		var y3 = y1 + lengthdir_y(length, rotation + (angle_interval * (i+1)));
	
		// custom color
		var color = c_black
	
		// change color if i is odd
		if (i%2!=0) {
			color = merge_colour(c_black, c_yellow, 0.2);
		}
	
		// draw triangle with black gradient
		draw_triangle_colour(x1, y1, x2, y2, x3, y3, color, c_black, c_black, false);
	} 
	gpu_set_blendmode(bm_normal); // reset blend mode
}