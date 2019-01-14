event_inherited();

if(!inInventory) {
	//change_clue_status("has_bruiser_ring_in_inventory", true);
	AddObjectToInventory(self);
	//instance_destroy(global.dialog_engine);
	//character_says(obj_player, "");
}