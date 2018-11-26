draw_self();	

if (point_in_rectangle(mouse_x, mouse_y, x, y, x + 154, y + 32)) {   
	draw_rectangle_colour(x + 2, y + 2, x - 2 + 154, y + 32 - 2, c_black, c_black, c_black, c_black, 1);
}

draw_set_colour(c_yellow);
draw_text(x + 15, y + 5, text); 

