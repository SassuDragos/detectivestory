/// @description Create door

event_inherited();

myText[0] = "It's locked.";
myText[1] = "Oddly enough, the door seem to have no handle. Only a keyhole...";

orig_text = myText;

variable_global_set("elecLock", true);
keyLock = true;