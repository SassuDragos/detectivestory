miniroom = true;

character_says(obj_partner_detective, "The coroner said the time of death is estimated to be around 22:15...");

if(ds_map_find_value(global.cluesMap, "has_bruiser_ring_in_inventory")) {
	instance_destroy(obj_ring)
}

if(ds_map_find_value(global.cluesMap, "has_weapon_in_inventory")) {
	with obj_pipe {
		if(layer != -1) {
			instance_destroy(id)	
		}
	}
}