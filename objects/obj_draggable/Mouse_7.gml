/// @description When we let go of object

if(inInventory) {
	grab = false;
	if(!place_meeting(x,y,obj_interactable)) {
		ReAddObjectToInventory();
		alarm[0] = 1;
	} else if(!position_meeting(mouse_x, mouse_y, obj_interactable)) {
		var inst = instance_place(x, y, obj_interactable);
		inst.alarm[0] = 1;
	}
//depth = 0;
}