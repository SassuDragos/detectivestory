create_event_initialise_character(id, "Don, Detective Don Nuts", c_red, spr_detective_avatar);

// Set the checking destinations to unclickable points
reset_destination_x = camera_get_view_width(view_camera[0]) + 1;
reset_destination_y = camera_get_view_height(view_camera[0]) + 1;

// Set current destination to unreachable points
destination_x = reset_destination_x;
destination_y = reset_destination_y;