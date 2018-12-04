//TODO: INIT ROOM REQURIED, remove this after that

if (!variable_global_exists("game_stage")) {
	initialize_global_variables();
}

if(global.game_stage > 1) {
	instance_destroy(self);
}