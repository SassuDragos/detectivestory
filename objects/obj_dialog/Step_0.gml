

if(lastCut == false && firstCut == true && obj_cutscene.startgame == true){
	l += 1;//time between dialogue

	print = string_copy(str,1,l)

	var tempStr = str;
			if(next == array_length_1d(strings)-2){
		firstCut = false;
		fade_change_to_room(room_pizzaria);
		
		}
	if (l > string_length(str)+100) && (next <array_length_1d(strings)-1)
	{
		l = 0;
		next++;
		if(next == array_length_1d(strings)-1) holdspace++;
		
		
	}
	str = strings[next];
	
	if(tempStr == str)
		return;
	
	//changing text color
	if(strings[next] == partnerDialog0){ //
		//detective = false
	}
	
	if(strings[next] == strDotsDetective || strings[next] == detectiveDialog0 || 
	strings[next] == detectiveDialog1 || strings[next] == detectiveDialog2 ||
	strings[next] == detectiveDialog3 || strings[next] == strDotsDetective){
		detective = true;
		ligColor = false;
	}else {
		detective = false;
	}
	
	if(strings[next] == partnerDialog1 || strings[next] == partnerDialog3 ||
	strings[next] == partnerDialog6 || strings[next] == partnerDialog8 ){
		l -= 0.7;
		
		l+= 0.7;
	
	}
	//example to show how to use dailogue for events
	//thunder
	/*
	if(strings[next] = triggerLig1){
		//detective = false;
		
		//zoom
		obj_camera.target = obj_partner;
		obj_camera.zoomBegi = false;
		obj_camera.zoomOut = false;
		obj_camera.zoomPlayer = true;
		//
		obj_cutscene.f_p_walking = false;
		ligColor = true;
		obj_partner.flag_dramatic = true;
		
		l += 3;
		obj_thunder.triggerLight = true;
		obj_thunder.image_alpha = 0.8;
		l -= 3;
		
	}
	*/
	if(strings[next] == triggerLig1){
		//detective = false;
		
		//zoom
		l += 3;
		obj_camera.target = obj_partnerCutscenes;
		obj_camera.zoomBegi = false;
		obj_camera.zoomOut = false;
		obj_camera.zoomPlayer = true;
		//
		obj_cutscene.f_p_walking = false;
		ligColor = true;
		obj_partnerCutscenes.flag_dramatic = true;
		//thunder

		
		obj_thunder.alarm[0] = 2;
		//obj_thunder.alarm[1] = room_speed * 2;
		obj_thunder.image_alpha = 0.8;
		l -= 3;
		
		
	}/*else if(strings[next] == triggerLig2){//going to change something so the thunder comes late
		
		//zoom
		
		//ligColor = true;
		l += 3;
		obj_thunder.alarm[0] = 2;
		obj_thunder.image_alpha = 0.8;
		l -= 3;
	}else*/ if(strings[next] == partnerDialog12){
		obj_camera.target = obj_partnerCutscenes;
		obj_camera.zoomBegi = false;
		obj_camera.zoomOut = false;
		obj_camera.zoomPlayer = true;
		
		
		
		obj_partnerCutscenes.flag_dramatic = true;
	}
	
	// movements
	if(strings[next] == detectiveDialog1){
		obj_partnerCutscenes.flag_stop = true;
		obj_partnerCutscenes.flag_dramatic = false;
	}
	if(strings[next] == partnerDialog5){
		obj_cutscene.flag_stop = false;
		//obj_cutscene.f_p_walking = true;
	}
	
	
	if(strings[next] == detectiveDialog3){
		//thunder
		obj_thunder.alarm[0] = 2;
		//obj_thunder.alarm[1] = room_speed * 2;
		obj_thunder.image_alpha = 0.8;
		
		obj_camera.target = obj_playerCutscenes;
		obj_camera.zoomBegi = false;
		obj_camera.zoomOut = false;
		obj_camera.zoomPlayer = true;
	}
	
	if(strings[next] == partnerDialog10){
		obj_camera.target = obj_playerCutscenes;
		obj_camera.zoomBegi = false;
		obj_camera.zoomPlayer = false;
		obj_camera.zoomOut = true;
		obj_cutscene.detectiveWalking = true;
		
	}
	//zooms
	
	if(strings[next] == partnerDialog0){
		
		obj_cutscene.f_p_walking = true;
		obj_camera.zoomBegi = false;
		obj_camera.zoomOut = true;
		obj_cutscene.lookingUp = false;
		
	}
	
	if(strings[next] == triggerLigStop){
		ligColor = false;
		obj_partnerCutscenes.flag_stop = true;
		obj_partnerCutscenes.flag_dramatic = false;
		//zoom
		obj_camera.target = obj_playerCutscenes;
		obj_camera.zoomBegi = false;
		obj_camera.zoomOut = true;
		obj_camera.zoomPlayer = false;
	}
	
	//timing dialog
	if(strings[next] == detectiveDialog0){
		l -= 1
		alarm[2] = room_speed * 2;
	}
	if(strings[next] == partnerDialog0){
		l += 1
	}

	///
}/*else if(obj_cutscene.startgame == false){
	
	print = string_copy(startGameStr,1,string_length(startGameStr))
}*/

if(lastCut == true){
	
	obj_fade.image_alpha = 0;
	// beginning 
	//effects
	//audio_stop_sound(snd_rain);
	
	//
	
	//
	l += 0.8;//time between dialogue

	print = string_copy(str,1,l)

	if (l > string_length(str)+100) && (next <array_length_1d(strings2)-1)
	{
		l = 0;
		next++;
		if(next == array_length_1d(strings2)-1) holdspace++;
		
	}
	str = strings2[next];
	//
	if(strings2[next] == dialog4 || strings2[next] == dialog5 || strings2[next] == dialog6 || strings2[next] == dialog7){
		//audio_stop_sound(snd_rain);
		//obj_sunburst.sunburst = false;
		
		obj_camera.rain = true;
		
		
		
		
	}
	if(strings2[next] == dialog4){
		rainsnd = true;
		audio_stop_sound(snd_birds);
		
	}
	if(strings2[next] == dialog2){
		rainsnd = true;
		
		
	}
	if(rainsnd == true){
		
		rainsnd = false;
		alarm[0] = 2;
		
		
	}
	if(strings2[next] == dialog7){
	
		obj_camera.zoomBegi = false;
		obj_camera.zoomOut = true;
		obj_camera.zoomPlayer = false;
		

		
	}
	if(strings2[next] == dialog6){
		obj_camera.target = obj_playerCutscenes;
		obj_camera.zoomBegi = true;
		obj_camera.zoomOut = false;
		obj_camera.zoomPlayer = false;
		obj_big_window.sprite_index = spr_dude_window;
		alarm[1] = room_speed*2;
		
		
	}
	
	if(strings2[next] == dialog0){
		l -= 0.3;
		obj_cutscene.detectiveWalking2 = true
		l += 0.3;
	}
	if(strings2[next] == dialog2){
		
		obj_cutscene.detectiveWalking3 = true
	}
	if(strings2[next] == dialog3){
		
		obj_boxOpen.image_index = 2;
	}
	
}else if(badEnding == true){
	
	obj_fade.image_alpha = 0;
	// beginning 
	//effects
	//audio_stop_sound(snd_rain);
	
	//
	
	//
	l += 0.8;//time between dialogue

	print = string_copy(str,1,l)

	if (l > string_length(str)+100) && (next <array_length_1d(strings2)-1)
	{
		l = 0;
		next++;
		if(next == array_length_1d(strings2)-1) holdspace++;
		
	}
	str = strings2[next];
	//
	if(strings2[next] == dialog4 || strings2[next] == dialog5 || strings2[next] == dialog6 || strings2[next] == dialog7){
		//audio_stop_sound(snd_rain);
		//obj_sunburst.sunburst = false;
		
		obj_camera.rain = true;
		
		
		
		
	}
	if(strings2[next] == dialog4 && badEnding == false){
		rainsnd = true;
		audio_stop_sound(snd_birds);
		
	}
	if(strings2[next] == dialog2 && badEnding == false){
		rainsnd = true;
		
		
	}
	if(rainsnd == true){
		
		rainsnd = false;
		alarm[0] = 2;
		
		
	}
	if(strings2[next] == dialog7){
	
		obj_camera.zoomBegi = false;
		obj_camera.zoomOut = true;
		obj_camera.zoomPlayer = false;
		

		
	}
	if(strings2[next] == dialog6){
		obj_camera.target = obj_playerCutscenes;
		obj_camera.zoomBegi = true;
		obj_camera.zoomOut = false;
		obj_camera.zoomPlayer = false;
		obj_big_window.sprite_index = spr_dude_window;
		alarm[1] = room_speed*2;
		
		
	}
	
	if(strings2[next] == dialog0){
		l -= 0.3;
		obj_cutscene.detectiveWalking2 = true
		l += 0.3;
	}
	if(strings2[next] == dialog2){
		
		obj_cutscene.detectiveWalking3 = true
	}
	if(strings2[next] == dialog3){
		
		obj_boxOpen.image_index = 2;
	}
	
}