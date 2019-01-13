/// @description Insert description here
// You can write your code in this editor

// cutscene
startgame = false

obj_dialog.firstCut = false;
obj_dialog.lastCut = false;

// partner
obj_partnerCutscenes.walkSpeed = 2;
f_p_stop = false; 
objective = 1200;
going_left = true;
f_p_walking = false;

f_qqcoisa = true;
f_alarm_set = false;

f_dialog = false;

// zooms
obj_camera.zoomBegi = true;
obj_camera.zoomOut = false;
obj_camera.zoomPlayer = false;
obj_camera.zoomChange = false;

// detective
lookingUp = true;
detectiveWalking = false;
detectiveWalking2 = false;
detectiveWalking3 = false;
objectiveD = 704;
objectiveD2 = 340;
objectiveD3 = 1145;

// world effects
obj_sunburst.sunburst = false;
obj_camera.rain = true;


// sounds
if(obj_camera.rain == true)
{
	audio_play_sound(snd_rain, 10, true);
}else if(obj_camera.rain == false) {
	audio_stop_sound(snd_rain);
}


