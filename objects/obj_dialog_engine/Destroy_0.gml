instance_destroy(textBoxObject);
instance_destroy(avatarBoxObject);
instance_destroy(choiceBoxObject);

variable_global_set("dialog_engine", noone);

obj_player.canMove = true;