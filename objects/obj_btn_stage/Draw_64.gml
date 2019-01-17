/// @description Insert description here
// You can write your code in this editor

if(drawable) {
	draw_self();

	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(fnt_ui_start_screen);
	draw_text(x, y, name);
	draw_set_font(-1);
	draw_set_halign(-1);
	draw_set_valign(-1);

	if(point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), bbox_left, bbox_top, bbox_right, bbox_bottom) && mouse_check_button_pressed(mb_left)) {
		//obj_cutscene.start_requested = true;
		var gameManager = instance_create_depth(10, 10, 10, obj_game_manager);
		variable_global_set("game_manager", gameManager);
		with(obj_fade) {
			image_alpha = 0;	
		}
		
		global.tutorial_active = false;
		global.game_stage = game_stage;
		
		fade_change_to_room(room_to_change);
	}
}