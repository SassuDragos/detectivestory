// Draw sprite
//draw_self();

var choiceListLength = ds_list_size(choice_list);
if (choiceListLength > 0)
{	
	var backgroundBorder = 4;
	var backgroundHeight = (ds_list_size(choice_list) + 2) * 25;
	image_yscale = choiceListLength / 4;
	if(newOptions) {
		newOptions = false;
		y = originalY - backgroundHeight;
	}
	var startingY = y + backgroundBorder;
	//var bottomMargin = startingY + backgroundHeight; 
    var x1 = x + backgroundBorder;
    var x2 = x + sprite_get_width(spr_choice_list_background) - 2 * backgroundBorder;
	    
    //var scrollOffset = min(upperPos - lowerPos, choiceListLength);
    //TODO: THIS IS A HACK: While this draw method is executed, a script may change the choice_list => You need to check it at every for step. . 
        
    for (var index = 0; index < ds_list_size(choice_list); index++) {
        var pos = lowerPos + index;
        var entry = ds_list_find_value(choice_list, pos);
		if(!is_array(entry)) {
			return;
		}
		var y1 = startingY + index * 25;
        var y2 = y1 + sprite_get_height(spr_dialog_choice) + 2;
		draw_sprite(spr_dialog_choice, 0, x + sprite_get_width(spr_dialog_choice) / 2, y1 + sprite_get_height(spr_dialog_choice) / 2)
		//draw_set_colour(c_white);
        //draw_rectangle(x1, y1, x2, y2, 1);
       
		var textToShow = "";
		if(entry[2] > 0) {
			textToShow = "> ";
		}
		for(var i = 1; i < entry[2]; ++i) {
			textToShow = " " + textToShow;	
		}
		textToShow += string(entry[0]);
		
		draw_set_halign(fa_left);
		draw_set_colour(entry[1] ? c_ltgray : c_yellow);
        draw_text(x1 + 20, y1, textToShow);
       
        if (point_in_rectangle(mouse_x, mouse_y, x1, y1, x2, y2) && entry[0] != "")
        {   		
			draw_set_colour(c_red);
            draw_rectangle(x, y1, x2 + backgroundBorder, y2, 1);
			if (mouse_check_button_pressed(mb_left)) {
				//Reset scroll position
                lowerPos = 0;
                upperPos = 4;
                
                // Resolve options
                if(obj_dialog_engine.dialogResolver) {
					script_execute(obj_dialog_engine.dialogResolver, entry);
				}
				
				if(global.dialog_engine) {
					obj_dialog_engine.canClick = false;
					obj_dialog_engine.alarm[0] = 5;
				}
            }
        }
    }
}
