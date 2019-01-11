// Draw textbox
draw_sprite(spr_room_picker_background,0,x,y);

var choiceListLength = ds_list_size(choiceList);
if (choiceListLength > 0) {	
	var backgroundBorder = 4;
	var backgroundHeight = sprite_get_height(spr_choice_list_background) - 2 * backgroundBorder;
	var startingY = y + backgroundBorder;
	var bottomMargin = startingY + backgroundHeight; 
    var x1 = x + backgroundBorder;
    var x2 = x + sprite_get_width(spr_room_picker_background) - 2 * backgroundBorder;
	    
    //var scrollOffset = min(upperPos - lowerPos, choiceListLength);
    //TODO: THIS IS A HACK: While this draw method is executed, a script may change the choice_list => You need to check it at every for step. . 
        
    for (var index = 0; index < min(upperPos - lowerPos, ds_list_size(choiceList)); index++) {
        var pos = lowerPos + index;
        var y1 = startingY + index * 20;
        var y2 = min(y1 + 19, bottomMargin);
		draw_set_colour(c_white);
        draw_rectangle(x1, y1, x2, y2, 1);
       
		var entry = ds_list_find_value(choiceList, pos);
		
		draw_set_halign(fa_left);
		draw_set_colour(c_yellow);
        draw_text(x1 + 20, y1, get_name_for_room_choice(entry));
       
        if (point_in_rectangle(mouse_x, mouse_y, x1, y1, x2, y2) && entry != "")
        {   		
			draw_set_colour(c_red);
            draw_rectangle(x1, y1, x2, y2, 1);
			if (mouse_check_button_pressed(mb_left)) {
				//Reset scroll position
                lowerPos = 0;
                upperPos = 4;
                
                // Resolve options
                fade_change_to_room(entry);
				
				instance_destroy();
            }
        }
    }
}
