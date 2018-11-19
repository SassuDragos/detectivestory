
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
myCharactersSequence[0] = id;
myCharactersSequence[1] = obj_player.id;
myCharactersSequence[2] = id;
myCharactersSequence[3] = obj_player.id;

