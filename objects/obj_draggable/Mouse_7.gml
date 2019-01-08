/// @description When we let go of object

if(inInventory) {
	grab = false;
	if(!place_meeting(x,y,obj_interactable)) {
		ReAddObjectToInventory();
		alarm[0] = 5;
	}
//depth = 0;
}