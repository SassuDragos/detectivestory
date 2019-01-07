instance_create_layer(285, 0, layer_fade, obj_fade);

partner_detective_body_information();

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