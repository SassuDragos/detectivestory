// Block player
global.actions_allowed = false;
stop_player_movement();

// Initialise UI elements
textBoxObject = instance_create_layer(room_width/2 - 200, room_height/2 + 50 , "layer_dialog", obj_textbox);
avatarBorderObject = instance_create_layer(textBoxObject.x - sprite_get_width(spr_avatar_frame), textBoxObject.y, "layer_dialog", obj_avatar_frame);
avatarBoxObject = instance_create_depth(avatarBorderObject.x + 8, avatarBorderObject.y + 8, -1, obj_avatar_container);
choiceBoxObject = instance_create_layer(avatarBorderObject.x, textBoxObject.y + sprite_get_height(spr_avatar_frame), "layer_dialog", obj_dialog_choice_list);

