// Block player
global.actions_allowed = false;
stop_player_movement();

// Initialise UI elements
var camera_width = camera_get_view_width(view_camera[0]);
var camera_height = camera_get_view_height(view_camera[0]);
var camera_xoffset = camera_get_view_x(view_camera[0]);
var camera_yoffset = camera_get_view_y(view_camera[0]);

textBoxObject = instance_create_layer(camera_xoffset + camera_width/2 + sprite_get_width(spr_avatar_frame)/2, camera_yoffset + camera_height - 150, "layer_dialog", obj_textbox);
mouseClickObject = instance_create_layer(textBoxObject.x + sprite_get_width(spr_textbox_background) / 2 - 50, textBoxObject.y + sprite_get_height(spr_textbox_background) / 2 - 50, "layer_dialog", obj_mouse);
mouseClickObject.image_xscale = 0.3;
mouseClickObject.image_yscale = 0.3;
mouseClickObject.visible = false;
mouseClickObject.depth = textBoxObject.depth - 1;
avatarBorderObject = instance_create_layer(camera_xoffset + camera_width/2 - sprite_get_width(spr_textbox_background) / 2, textBoxObject.y, "layer_dialog", obj_avatar_frame);
avatarBgObject = instance_create_layer(avatarBorderObject.x, avatarBorderObject.y, "layer_dialog", obj_avatar_bg);
avatarBoxObject = instance_create_layer(avatarBorderObject.x, avatarBorderObject.y, "layer_dialog", obj_avatar_container);
avatarBoxObject.depth--;
avatarBorderObject.depth = avatarBoxObject.depth - 1;
choiceBoxObject = instance_create_layer(camera_xoffset + camera_width/2 + sprite_get_width(spr_textbox_background) / 2 + 75, textBoxObject.y + sprite_get_height(spr_textbox_background) / 2, "layer_dialog", obj_dialog_choice_list);
choiceBoxObject.depth = textBoxObject.depth - 1;