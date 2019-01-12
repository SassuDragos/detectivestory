draw_self();	

var nw_x = x - sprite_width / 2;
var nw_y = y - sprite_height / 2
var se_x = x + sprite_width / 2;
var se_y = y + sprite_height / 2;

if (point_in_rectangle(mouse_x, mouse_y, nw_x, nw_y, se_x, se_y)) {   
	draw_rectangle_colour(nw_x + 2, nw_y + 2, se_x - 2, se_y - 2, c_red, c_red, c_red, c_red, 1);
}

draw_set_colour(c_yellow);
draw_text(nw_x + 15, nw_y + 5, text); 

