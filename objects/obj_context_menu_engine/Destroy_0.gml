var inputTypeListLength = array_length_1d(buttonList);
for (var typeIndex = 0; typeIndex < inputTypeListLength; typeIndex += 1) {
	instance_destroy(buttonList[typeIndex]);
}

variable_global_set("context_menu_engine", noone);

obj_player.canMove = true
global.actions_allowed = true;