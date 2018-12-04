switch(room) {
	case body_inspection_room:
		if(!ds_map_find_value(global.cluesMap, "has_bruiser_ring_in_inventory") ||
		   !ds_map_find_value(global.cluesMap, "has_weapon_in_inventory")) {
			   partner_detective_did_not_find_all_clues();
			   return;
		}
	default:
		room_goto(room_pizzaria);
}

variable_global_set("actions_allowed", true);

