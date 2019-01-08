var gameManager = instance_create_depth(10, 10, 10, obj_game_manager);
variable_global_set("game_manager", gameManager);
room_goto(room_pizzaria);