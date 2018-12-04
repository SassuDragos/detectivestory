

//TODO: Find a better way to compare objects other then sprites
if (argument0.sprite_index == spr_board) {
	room_goto(organigram_room);
} else if (argument0.sprite_index == spr_deliveryBook) {
	room_goto(deliveryLedgerImcomplete);
} else if (argument0.sprite_index == spr_safePaper) {
	room_goto(SafePaper_room);
} else if (argument0.sprite_index == spr_safePaper) {
	room_goto(SafePaperBurnt_room);
} else if (argument0.sprite_index == spr_marcelo_full) {
	room_goto(body_inspection_room);
}