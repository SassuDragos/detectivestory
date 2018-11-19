/// @description When we let go of object

if(inInventory) {
	grab = false;
	if(place_empty(x,y)) {
		ReAddObjectToInventory(self);
		obj_player.move = true;
	}
//depth = 0;
}