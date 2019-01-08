ds_list_add(global.available_locations_list, RoomChoices.APARTMENTS);
ds_list_add(global.available_locations_list, RoomChoices.STORAGE);
effect_create_above(ef_star, obj_stairs_1.x - 30, obj_stairs_1.y - 40, 0, c_yellow);
effect_create_above(ef_star, obj_stairs_1.x + 40, obj_stairs_1.y + 30 , 0, c_yellow);
effect_create_above(ef_star, obj_stairs_1.x - 34, obj_stairs_1.y + 20, 1, c_yellow);
effect_create_above(ef_star, obj_stairs_1.x + 20, obj_stairs_1.y - 20, 1, c_yellow);
effect_create_above(ef_star, obj_stairs_1.x, obj_stairs_1.y, 2, c_yellow);