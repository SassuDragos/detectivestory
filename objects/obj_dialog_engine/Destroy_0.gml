instance_destroy(textBoxObject);
instance_destroy(avatarBoxObject);
instance_destroy(avatarBorderObject);
instance_destroy(choiceBoxObject);

variable_global_set("dialog_engine", noone);
obj_game_manager.alarm[11] = room_speed / 2;