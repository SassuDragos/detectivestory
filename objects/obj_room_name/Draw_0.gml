/// @description Insert description here
// You can write your code in this editor
draw_self();

var room_display = get_name_for_room_choice(room);

draw_set_font(fnt_darling);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_text(x, y, string(room_display));
draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);
draw_set_color(-1);