if(obj_potion.inInventory == false){
	with(other){
		instance_destroy();
		
		if (instance_exists(obj_key) && obj_key.x == 73 && obj_key.y == 612){ instance_create_depth(103, 569, -1, obj_potion); }
		else { instance_create_depth(29, 569, -1, obj_potion); }
		
		obj_potion.inInventory = true;
	}
}