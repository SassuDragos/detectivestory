var choiceListLength = array_length_1d(choice_list);
if (choiceListLength > 0)
{	
	backgroundBorder = 4;
	backgroundHeight = self.sprite_height - 2 * backgroundBorder;
	startingY = room_height/2 + 270 + backgroundBorder;
	bottomMargin = startingY + backgroundHeight; 
    var x1 = room_width/2 - 400 + backgroundBorder;
    var x2 = room_width/2 + 400 - backgroundBorder;
	
    for (var i = 0; i < upperPos - lowerPos; i++)
    {
        var pos = lowerPos + i;
        var y1 = startingY + i * 20;
        var y2 = min(y1 + 19, bottomMargin);
        draw_rectangle(x1, y1, x2, y2, 1);
       
        var entry = choice_list[pos];
		
		draw_set_halign(fa_left);
		draw_set_colour(c_white);
		// textPart = string_copy(text_body, 1, char_count);
		// draw_text_ext(x1 + addX, y1 + text_line_height + 4*addY, string(entry), text_line_height, 796);

        draw_text(x1 + 20, y1, string(entry));
       
        if (point_in_rectangle(mouse_x, mouse_y, x1, y1, x2, y2) && entry != "")
        {   
            draw_rectangle(x1+1, y1+1, x2-1, y2-1, 1);
            if (mouse_check_button_pressed(mb_left))
            {
				// Selection actions
                //showList = false;
                //selectedValue = choice_list[pos];
            }
        }
    }
}
