
// Inherit the parent event
event_inherited();

myName = "TEST";
myColor = c_green;
myAvatar = spr_girl_avatar;

myBodyTextSequence = array_create(4);
myBodyTextSequence[0] = "[NPC]	Hello!! I'm a NPC.";
myBodyTextSequence[1] = "[PLAYER]	Nice to meet you.";
myBodyTextSequence[2] = "[NPC]	Idk what else to say... Let me just write a long line of text to see if this is working correctly. How does it look? :D"
myBodyTextSequence[3] = "[PLAYER]	This is the last line of text, I promise.";

myCharactersSequence = array_create(4);
myCharactersSequence[0] = obj_test;
myCharactersSequence[1] = obj_player;
myCharactersSequence[2] = obj_test;
myCharactersSequence[1] = obj_player;

//ds_list_add(myCharactersSequence, obj_test, , obj_test, obj_player)

