/// @description Insert description here
// You can write your code in this editor

if(drawable && main_menu) {
	draw_self();

	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(fnt_ui_start_screen);
	draw_text(x, y, "Exit");
	draw_set_font(-1);
	draw_set_halign(-1);
	draw_set_valign(-1);

	if(point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), bbox_left, bbox_top, bbox_right, bbox_bottom) && mouse_check_button_pressed(mb_left)) {
		game_end();
	}
}