// Block player
obj_player.canMove = false;

// Initialise UI elements
textBoxObject = instance_create_layer(room_width/2 - 200, room_height/2 + 150 , "layer_dialog", obj_textbox);
avatarBorderObject = instance_create_layer(room_width/2 - 400, room_height/2 + 150, "layer_dialog", obj_avatar_frame);
avatarBoxObject = instance_create_depth(avatarBorderObject.x + 5, avatarBorderObject.y + 10, -1, obj_avatar_container);

