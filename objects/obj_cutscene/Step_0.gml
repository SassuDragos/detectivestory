/// @description Insert description here
// You can write your code in this editor

//start game
if(keyboard_check(vk_space)){
	
	startgame = true;
	var gameManager = instance_create_depth(10, 10, 10, obj_game_manager);
	variable_global_set("game_manager", gameManager);
	with(obj_fade) {
		image_alpha = 0;	
	}
}


//detective
if(lookingUp == true) {
	obj_playerCutscenes.sprite_index = spr_detective_walking_up_cutscene;
	obj_playerCutscenes.image_speed = 0;
}else{
	obj_playerCutscenes.sprite_index = spr_detective_still_cutscene;	
}

while(f_qqcoisa == true){
	alarm[0] = room_speed * 4;
	f_qqcoisa = false;
}


	
if (detectiveWalking == true && obj_playerCutscenes.y <= objectiveD){
	obj_playerCutscenes.y += obj_playerCutscenes.walkSpeed;
	obj_playerCutscenes.image_speed = obj_playerCutscenes.walkSpeed / 3; // makes animation smooth
	obj_playerCutscenes.sprite_index = spr_detective_walking_down_cutscene;
}else detectiveWalking = false;

if(obj_dialog.lastCut = true){
if (detectiveWalking2 == true && obj_playerCutscenes.y >= objectiveD2){
	obj_playerCutscenes.y -= obj_playerCutscenes.walkSpeed;
	obj_playerCutscenes.image_speed = obj_playerCutscenes.walkSpeed / 3; // makes animation smooth
	obj_playerCutscenes.sprite_index = spr_detective_walking_up_cutscene;
}else detectiveWalking2 = false
if (detectiveWalking2 == false && obj_playerCutscenes.y <= objectiveD2){
	
	obj_playerCutscenes.sprite_index = spr_detective_walking_left_cutscene;
	obj_playerCutscenes.image_xscale = -1;
	obj_playerCutscenes.image_speed = 0;
} 
if (detectiveWalking3 == true && obj_playerCutscenes.x <= objectiveD3){
	obj_playerCutscenes.x += obj_playerCutscenes.walkSpeed;
	obj_playerCutscenes.image_xscale = -1;
	obj_playerCutscenes.image_speed = obj_playerCutscenes.walkSpeed / 3; // makes animation smooth
	obj_playerCutscenes.sprite_index = spr_detective_walking_left_cutscene;
} else detectiveWalking3 = false;
if (detectiveWalking3 == false && obj_playerCutscenes.x >= objectiveD3){
	
	obj_playerCutscenes.sprite_index = spr_detective_walking_down_cutscene;
	
	obj_playerCutscenes.image_speed = 0;
}
}



//partner
if (f_p_walking == true){
	if(going_left == true){
		if (obj_partnerCutscenes.x <= objective){
			obj_partnerCutscenes.x += obj_partnerCutscenes.walkSpeed;
			obj_partnerCutscenes.image_speed = obj_partnerCutscenes.walkSpeed / 3; // makes animation smooth
			obj_partnerCutscenes.image_xscale = -1
			obj_partnerCutscenes.sprite_index = spr_partner_left;
		}
		else {
			going_left = false;
			objective = 1050;
		}
	} else if (going_left == false){ 
		if (obj_partnerCutscenes.x >= objective){
			obj_partnerCutscenes.x -= obj_partnerCutscenes.walkSpeed;
			obj_partnerCutscenes.image_speed = obj_partnerCutscenes.walkSpeed / 3; // makes animation smooth
			obj_partnerCutscenes.image_xscale = 1
			obj_partnerCutscenes.sprite_index = spr_partner_left;
		} else {
			going_left = true;
			objective = 1200;
		}
	}
}

if (f_p_stop == true){
obj_partnerCutscenes.sprite_index = spr_partner_still;
}