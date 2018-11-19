
myName = "CHARACTER PLAYER";
myColor = c_blue;
myAvatar = spr_potion;


// Set the checking destinations to unclickable points
reset_destination_x = camera_get_view_width(view_camera[0]) + 1;
reset_destination_y = camera_get_view_height(view_camera[0]) + 1;

// Set current destination to unreachable points
destination_x = reset_destination_x;
destination_y = reset_destination_y;

// In the beginning, we start facing left
side = "left";

move = true;
