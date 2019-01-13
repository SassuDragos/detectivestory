if(global.cluesMap[? "gave_toad_pizza"]) {
	with(obj_pizza) {
		if(!inInventory) {
			instance_destroy(id);	
		}
	}
}