// Block player
obj_player.canMove = false;

// Initialise UI elements
textBoxObject = instance_create_layer(room_width/2 - 200, room_height/2 + 150 , "Textbox_Layer", obj_textbox);
avatarBorderObject = instance_create_layer(room_width/2 - 400, room_height/2 + 150, "avatar_layer", obj_avatar_border);
avatarBoxObject = instance_create_depth(avatarBorderObject.x + 5, avatarBorderObject.y + 10, -1, obj_avatar);

