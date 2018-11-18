if(obj_key.inInventory == false){
	with(other){
		instance_destroy();
		if (instance_exists(obj_potion) &&  obj_potion.x == 29 && obj_potion.y == 569){ instance_create_depth(146, 612, -1, obj_key); }
			else { instance_create_depth(73, 612, -1, obj_key); }
		obj_key.inInventory = true;
	}
}
