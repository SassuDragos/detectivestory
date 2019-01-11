/// @description Insert description here
// You can write your code in this editor

//draw textbox
draw_sprite(spr_textbox_background,0,x,y);

if(newSequence) {
	char_count = 0;
	newSequence = false;
	obj_dialog_engine.mouseClickObject.visible = false;
}

//increse characters
if(char_count < string_length(text_body)) {
	char_count += 0.5;
}

//draw name
//draw_set_font(font_name);
draw_set_halign(fa_center);
draw_set_colour(color);
draw_text(x - (sprite_get_width(spr_textbox_background) / 2) + box_width/2 + addX , y - (sprite_get_height(spr_textbox_background) / 2) + 2*addY, name); 

//draw dialog
//draw_set_font(font_game);
draw_set_halign(fa_left);
draw_set_colour(c_white);
textPart = string_copy(text_body, 1, char_count);
draw_text_ext(x - (sprite_get_width(spr_textbox_background) / 2) + addX, y - (sprite_get_height(spr_textbox_background) / 2) + text_line_height + 3*addY, textPart, text_line_height, box_width);

if(char_count == string_length(text_body) &&
	array_length_1d(obj_dialog_engine.choiceBoxObject.choice_list) == 0) {
	obj_dialog_engine.mouseClickObject.visible = true;
}