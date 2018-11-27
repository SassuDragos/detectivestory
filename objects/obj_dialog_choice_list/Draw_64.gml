var choiceListLength = array_length_1d(choice_list);
if (choiceListLength > 0)
{	
	backgroundBorder = 4;
	backgroundHeight = self.sprite_height - 2 * backgroundBorder;
	startingY = room_height/2 + 270 + backgroundBorder;
	bottomMargin = startingY + backgroundHeight; 
    var x1 = room_width/2 - 400 + backgroundBorder;
    var x2 = room_width/2 + 400 - backgroundBorder;
	var scrollOffset = min(upperPos - lowerPos, choiceListLength);


    for (var index = 0; index < scrollOffset; index++) {
        var pos = lowerPos + index;
        var y1 = startingY + index * 20;
        var y2 = min(y1 + 19, bottomMargin);
		draw_set_colour(c_white);
        draw_rectangle(x1, y1, x2, y2, 1);
       
        var entry = choice_list[pos];
		
		draw_set_halign(fa_left);
		draw_set_colour(c_yellow);
        draw_text(x1 + 20, y1, string(entry));
       
        if (point_in_rectangle(mouse_x, mouse_y, x1, y1, x2, y2) && entry != "")
        {   		
			draw_set_colour(c_red);
            draw_rectangle(x1, y1, x2, y2, 1);
			if (mouse_check_button_pressed(mb_left)) {
                // action_choice_selected(index + scrollOffset);
                action_choice_selected();

            }
        }
    }
}
