

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
	character_says(obj_player, "There seems to be a music sheet here. It's titled 'Piano Sonata No. 11'.")
} else if (argument0.sprite_index == spr_mirror_bath){
	room_goto(mirror_scene);
} else if (argument0.sprite_index == spr_code){
	room_goto(room_keyLock);
} else if (argument0.sprite_index == spr_gramaphone){
	audio_play_sound(snd_mambo, 10, false);
} else if(argument0.sprite_index == spr_puzzleGuide1){
	character_says(obj_player, "The paper reads: 'A - You look good today, you should check yourself. B - The song we always play. C - Do the mambo. D - I always wonder how many plants we have.")
	ds_map_set(global.cluesMap, "picked_guide_paper", true);
} else if(argument0.sprite_index == spr_puzzleForm){
	character_says(obj_player, "The paper reads: '(A x B + C) x D' ")
} else if(argument0.sprite_index == spr_door_violet){
	if(variable_global_get("door_open")=false){
		character_says(obj_player, "The door is locked, we should find a way to break in.");
	}else{
		room_goto(room_bedroom_luigi);
	}

} else if(argument0.sprite_index == spr_violet_note){
	character_says(obj_player, ["It reads 'I’m sorry Leonardo I love you so much but I can’t take it any longer. Ever since we received that stupid game I kept thinking so negatively about everyone and he treated you so badly.", "I forgive what you did, just forget this last month ever happened. Go to another country and start a new life just forget that Clementine exists. Yours Truly Violet.'"])
}