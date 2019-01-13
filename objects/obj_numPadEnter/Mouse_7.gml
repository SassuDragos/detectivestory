if(obj_digits.digit = "2677"){
	obj_compHUD.image_index = 3;
	ds_map_set(global.cluesMap, "knows_toad_location", true);
	add_available_location(noone, Where.OUTSIDE, RoomChoices.TOADS);
	}else if(obj_digits.digit = "2767"){
		obj_compHUD.image_index = 2;
	}else{
		obj_compHUD.image_index = 1;
	}
	