// Block player
global.actions_allowed = false;
stop_player_movement();

// Initialise UI elements
var camera_width = camera_get_view_width(view_camera[0]);
var camera_height = camera_get_view_height(view_camera[0]);
textBoxObject = instance_create_layer(camera_width/2 - 200, camera_height - 225, "layer_dialog", obj_textbox);
avatarBgObject = instance_create_layer(textBoxObject.x - sprite_get_width(spr_avatar_frame) + 10, textBoxObject.y + 10, "layer_dialog", obj_avatar_bg);
avatarBorderObject = instance_create_layer(textBoxObject.x - sprite_get_width(spr_avatar_frame), textBoxObject.y, "layer_dialog", obj_avatar_frame);
avatarBoxObject = instance_create_layer(avatarBorderObject.x + 8, avatarBorderObject.y + 8, "layer_dialog", obj_avatar_container);
avatarBoxObject.depth--;
avatarBorderObject.depth = avatarBoxObject.depth - 1;
choiceBoxObject = instance_create_layer(camera_width - 400, textBoxObject.y + sprite_get_height(spr_avatar_frame), "layer_dialog", obj_dialog_choice_list);