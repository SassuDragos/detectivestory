

//TODO: Find a better way to compare objects other then sprites
if (argument0.sprite_index == spr_board) {
	room_goto(organigram_room);
} else if (argument0.sprite_index == spr_deliveryBook) {
	room_goto(deliveryLedger_room);
} else if (argument0.sprite_index == spr_safePaper) {
	room_goto(SafePaper_room);
} else if (argument0.sprite_index == spr_safePaper) {
	room_goto(SafePaperBurnt_room);
}