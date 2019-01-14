/// @description Insert description here
// You can write your code in this editor
draw_self();

var on = global.detective_eye;
var str = "Detec. Eye: ";
str += on ?  "ON" : "OFF";

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_darling);
draw_set_color(on ? c_green : c_red);
draw_text(x, y, str);
draw_set_color(-1);
draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);