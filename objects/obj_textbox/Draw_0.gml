/// @description Insert description here
// You can write your code in this editor

//draw textbox
draw_sprite(spr_textbox,0,x,y);

//increse characters
if(char_count < string_length(textBody)) char_count += 0.5;

//draw name
//draw_set_font(font_name);
draw_set_halign(fa_center);
draw_set_colour(color);
draw_text(x + box_width/2 + addX , y + 2*addY, name); 

//draw dialog
//draw_set_font(font_game);
draw_set_halign(fa_left);
draw_set_colour(c_white);
textPart = string_copy(textBody, 1, char_count);
draw_text_ext(x + addX, y + stringHeight + 4*addY, textPart, stringHeight, box_width);
