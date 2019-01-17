event_inherited();

if(!inInventory) {
	change_clue_status("picked_crowbar", true);
	AddObjectToInventory(self, true);
	//instance_destroy(global.dialog_engine);
	//character_says(obj_player, "");
}