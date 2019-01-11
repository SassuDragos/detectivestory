instance_destroy(textBoxObject);
instance_destroy(mouseClickObject);
instance_destroy(avatarBoxObject);
instance_destroy(avatarBorderObject);
instance_destroy(avatarBgObject);
instance_destroy(choiceBoxObject);

variable_global_set("dialog_engine", noone);
allow_character_actions()