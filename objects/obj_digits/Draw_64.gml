/// @description Insert description here
// You can write your code in this editor
switch(room) {
	case room_Computer:
		draw_set_font(fnt_game);
		draw_set_color(c_black);
		draw_text(985,305,digit);
		draw_set_font(-1);
		draw_set_color(-1);
		break;
	case room_keyLock:
		draw_set_font(fnt_title)
		draw_set_color(c_white);
		draw_text(985,313,digit);
		draw_set_font(-1);
		draw_set_color(-1);
		break;
		
}