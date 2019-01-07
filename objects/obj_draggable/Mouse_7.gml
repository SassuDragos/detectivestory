/// @description When we let go of object

if(inInventory) {
	grab = false;
	if(place_empty(x,y) || place_meeting(x,y,obj_inventory)) {
		ReAddObjectToInventory();
		obj_player.move = true;
	}
//depth = 0;
}