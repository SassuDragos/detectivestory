

//TODO: Find a better way to compare objects other then sprites
if (argument0.sprite_index == spr_board) {
	room_goto(room_organigram);
} else if (argument0.sprite_index == spr_deliveryBook) {
	room_goto(room_Computer);
} else if (argument0.sprite_index == spr_safePaper) {
	room_goto(room_safePaper);
} else if (argument0.sprite_index == spr_safePaper) {
	room_goto(room_safePaper_burnt);
} else if (argument0.sprite_index == spr_marcelo_full) {
	room_goto(room_body_inspection);
} else if (argument0.sprite_index == spr_piano){
	character_says(obj_player, "")
} else if (argument0.sprite_index == spr_mirror_bath){
	room_goto(mirror_scene);
} /* else if (argument0.sprite_index == spr_code){
	room_goto();
}*/