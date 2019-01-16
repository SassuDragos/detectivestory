/// @description Insert description here
// You can write your code in this editor
firstCut = !variable_global_exists("cluesMap") || !ds_map_exists(global.cluesMap, "good_ending");
lastCut = !firstCut && global.cluesMap[? "good_ending"];
badEnding = !firstCut && !global.cluesMap[? "good_ending"];
//
obj_boxOpen.image_speed = 0;

//

//

if(lastCut == true ){
	obj_boxOpen.image_alpha = 1;
	obj_playerCutscenes.walkSpeed = 2;
	audio_stop_sound(snd_rain);
	audio_play_sound(snd_birds, 10, true);
	obj_playerCutscenes.x = 956;
	obj_playerCutscenes.y = 695;
	obj_sunburst.sunburst = true;
	obj_camera.rain = false;
	//
	detective = true;
	obj_cutscene.startgame = true;
	obj_camera.target = obj_playerCutscenes;
	obj_camera.zoomBegi = false;
	obj_camera.zoomOut = false;
	obj_camera.zoomPlayer = false;
	obj_cutscene.lookingUp = false;
	instance_destroy(obj_partnerCutscenes);
}else if(badEnding == true){
	obj_boxOpen.image_alpha = 1;
	obj_playerCutscenes.walkSpeed = 2;
	//audio_stop_sound(snd_rain);
	//audio_play_sound(snd_birds, 10, true);
	obj_playerCutscenes.x = 956;
	obj_playerCutscenes.y = 695;
	//obj_sunburst.sunburst = true;
	obj_camera.rain = true;
	//
	detective = true;
	obj_cutscene.startgame = true;
	obj_camera.target = obj_playerCutscenes;
	obj_camera.zoomBegi = false;
	obj_camera.zoomOut = false;
	obj_camera.zoomPlayer = false;
	obj_cutscene.lookingUp = false;
	instance_destroy(obj_partnerCutscenes);
}


rainsnd = false;

detective = true;

xpos = 640;
a= 1;
fadeout = 0 ;
str = "";
print = "";

strTitle = "A Detective Story";
startGameStr = "press space to start game";

l=0;
next=0

holdspace = 0;

strDetectiveName = "Don: ";
strPartner = "Max: ";

strDotsDetective = strDetectiveName + "...";
strDotsPartner = strPartner + "...";


//thunder
triggerLig1 = strDetectiveName + "... Her husband DEAD on the floor!!";
triggerLigStop = strDetectiveName + "  ...  ";

triggerLig2 = "Damn, I though it would come on time...";

ligColor = false;

//detective dialog
detectiveDialog0 = strDetectiveName + "Hmm ...";
detectiveDialog1 = strDetectiveName + "... Well, go on.";
detectiveDialog2 = strDetectiveName + "Anything else, Max?";
detectiveDialog3 = strDetectiveName + "WE WILL TAKE THAT CASE!";

//partner dialog
partnerDialog0 = strPartner + "I have news, good or bad depends on the perspective ...";
partnerDialog1 = strPartner + "Picture this, a family pizzaria owned by two brothers, \na normal business day, slow as usual.";
partnerDialog2 = strPartner + "The older brother's wife\n enters the pizzeria when it is already closed...";
partnerDialog3 = strPartner + "wanting to have a goodnight sleep she goes for the stairs, \nthat connect their apartment and the pizzeria,";
partnerDialog4 = strPartner + "But as she goes thru the room she looks down and finds ...";
partnerDialog5 = strPartner + "Well she calls the police, the police calls the coroner's phone...";
partnerDialog6 = strPartner + "... where I happen to be standing next to, \nand the coroner as usual answers it on speaker mode...";;
partnerDialog7 = strPartner + "...so I hear everything and call dibs. And ta-da, we are here.";
partnerDialog8 = strPartner + "So the wife says she last saw her husband an hour before and that he was fine... ";
partnerDialog9 = strPartner + "... Oh *disappointed*, she says that they received an unordered box... ";
partnerDialog10 = strPartner + "Yeah, thought so... WAIT, what!? Are we taking the case, really!?";
partnerDialog11 = strPartner + "This case will be a piece of... ";
partnerDialog12 = strPartner + "... PIZZA";
partnerDialog13 = strPartner + "Damn, I though the thunder would come on time...";

// dialogue

// first cut

strings[0] = detectiveDialog0;//"Hmm ...";//detective0

strings[1] =partnerDialog0;//"I have news, good or bad depends on the perspective ...";//partner0

strings[2] = strDotsDetective;//detective

strings[3] = partnerDialog1;//"Picture this, a family pizzaria owned by two brothers, a normal business day, slow as usual.";//partner1

strings[4] = strDotsDetective;//detective

strings[5] = partnerDialog2;//"The older brother’s wife enters the pizzeria when it is already closed...";//partner2
strings[6] = partnerDialog3//"wanting to have a goodnight sleep she goes for the stairs that connect their apartment and the pizzeria.";//partner3

strings[7] = strDotsDetective;//detective

strings[8] = partnerDialog4;//"But as she goes thru the room she looks down and finds ...";//partner4

strings[9] = strDotsDetective;//detective

strings[10] = triggerLig1;//DEAD
strings[11] =  triggerLigStop;//detective 1st ...

strings[12] = strDotsPartner;//2nd ...

strings[13] =  detectiveDialog1;//"... Well, go on.";//detective1

strings[14] = partnerDialog5;//"Well she calls the police; the police calls the coroner phone...";//partner5
strings[15] = partnerDialog6;//"... where I happen to be standing next to, and the coroner as usual answers it on speaker mode...";//partner6
strings[16] = partnerDialog7//"...so I hear everything and call dibs. And ta-da, we are here.";//partner7

strings[17] = strDotsDetective;//detective

strings[18] = partnerDialog8;//"So the wife says she last saw her husband an hour before and that he was fine... ";//partner8

strings[19] = detectiveDialog2;//"Anything else, Max?";//detective2

strings[20] =  partnerDialog9;//"... Oh, she says that they received an unordered box... "//partner9

strings[21] = detectiveDialog3;//"WE WILL TAKE THAT CASE!"//detective3

strings[22] = partnerDialog10;//"Yeah, thought so... WAIT, what!? Are we taking the case, really!?";//partner10
strings[23] = partnerDialog11;//"This case will be a piece of... ";//partner11
strings[24] = partnerDialog12;//"... PIZZA";//partner12
strings[25] = partnerDialog13;//"Damn, I though it would come on time...";//partner12

strings[26] = "";
strings[27] = "";

// last cut
if(lastCut == true){
	dialog0 = strDetectiveName + "Another case solved. All is well.";
	dialog1 = strDetectiveName + "*suprised* A box...";
	dialog2 = strDetectiveName + "...";
	dialog3 = strDetectiveName + "...They left a note."
	dialog4 = strDetectiveName + "'Hello friend, your turn has finally come...'";
	dialog5 = strDetectiveName + "'...I know you always wanted to play this game because we are more alike than you think...'";
	dialog6 = strDetectiveName + "'...I hope you discover your counterpart in due time, \nwhich I believe you will because I know you are more than capable...'";
	dialog7 = strDetectiveName + "'...Yours truly Ex...'";
} else if(badEnding == true){
	dialog0 = strDetectiveName + "Another case solved... It's still raining...";
	dialog1 = strDetectiveName + "*suprised* A box...";
	dialog2 = strDetectiveName + "...";
	dialog3 = strDetectiveName + "...They left a note."
	dialog4 = strDetectiveName + "'Hello friend, I'm sad you didn't accuse the actual murderer, \nyour turn has finally come...'";
	dialog5 = strDetectiveName + "'...I know you always wanted to play this game because we are more alike than you think...'";
	dialog6 = strDetectiveName + "'...I hope you discover your counterpart in due time, \nwhich I believe you will because I know you are more than capable...'";
	dialog7 = strDetectiveName + "'...Yours truly Ex...'";
}

if(lastCut == true || badEnding == true) {

	strings2[0] = dialog0;//"All is well.";

	strings2[1] = dialog1;//"A note";
	strings2[2] = dialog2;
	strings2[3] = dialog3;//"Hello friend, your turn has finally come...";
	strings2[4] = dialog4;//"...I know you always wanted to play this game because we are more alike than you think...";
	strings2[5] = dialog5;//"...I hope you discover your counterpart in due time, which I believe you will because I know you are more than capable...”";
	strings2[6] = dialog6;
	strings2[7] = dialog7;//"...Yours truly Ex...";

}

/*
dialogB0 = strDetectiveName + "Another case solved. All is well.";
dialogB1 = strDetectiveName + "*suprised* A box...";
dialogB2 = strDetectiveName + "...";
dialogB3 = strDetectiveName + "...They left a note."
dialogB4 = strDetectiveName + "'Hello friend, your turn has finally come...'";
dialogB5 = strDetectiveName + "'...I know you always wanted to play this game because we are more alike than you think...'";
dialogB6 = strDetectiveName + "'...I hope you discover your counterpart in due time, \nwhich I believe you will because I know you are more than capable...'";
dialogB7 = strDetectiveName + "'...Yours truly Ex...'";
*/

