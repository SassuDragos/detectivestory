/// @description Create door

event_inherited();

myText[0] = "It's locked.";
myText[1] = "Oddly enough, the door seem to have no handle. Only a keyhole...";

orig_text = myText;

if(!variable_global_exists("elecLock")) {
	variable_global_set("elecLock", true);
}
if(!variable_global_exists("keyLock")) {
	variable_global_set("keyLock", true);
}
if(!variable_global_exists("done")) {
	variable_global_set("done", false);
}