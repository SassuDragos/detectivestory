// Block player
global.actions_allowed = false;

// Initialise UI elements
textBoxObject = instance_create_layer(room_width/2 - 200, room_height/2 + 70 , "layer_dialog", obj_textbox);
avatarBorderObject = instance_create_layer(room_width/2 - 400, room_height/2 + 70, "layer_dialog", obj_avatar_frame);
avatarBoxObject = instance_create_depth(avatarBorderObject.x + 5, avatarBorderObject.y + 10, -1, obj_avatar_container);
choiceBoxObject = instance_create_layer(room_width/2 - 400, room_height/2 + 270, "layer_dialog", obj_dialog_choice_list);

