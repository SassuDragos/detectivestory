switch(room) {
	case room_body_inspection:
		if(!ds_map_find_value(global.cluesMap, "has_bruiser_ring_in_inventory") ||
		   !ds_map_find_value(global.cluesMap, "has_weapon_in_inventory")) {
			   character_says(obj_partner_detective, "I think you missed some important evidence...");
			   return;
		}
	case mirror_scene:
		room_goto(room_bathroom);
		break;
	default:
		room_goto(room_pizzaria);
}

variable_global_set("actions_allowed", true);
