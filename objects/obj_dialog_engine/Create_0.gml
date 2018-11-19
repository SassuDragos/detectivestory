// Block player
obj_player.move = false;

// Initialise UI elements
textBox = instance_create_layer(room_width/2 - 200, room_height/2 + 150 , "Textbox_Layer", obj_textbox);
avatarBox = instance_create_layer(room_width/2 - 400, room_height/2 + 150, "avatar_layer", obj_avatar);
instance_create_depth(avatarBox.x + 5, avatarBox.y + 10, -1, obj_ava);

