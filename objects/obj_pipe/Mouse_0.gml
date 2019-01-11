/// @description Insert description here
// You can write your code in this editor
event_inherited();

if(!inInventory) {
	change_clue_status("has_weapon_in_inventory", true);
	AddObjectToInventory(self);
	character_says(obj_player, "This seems to be the murder weapon... I should take it to evidence.");
}