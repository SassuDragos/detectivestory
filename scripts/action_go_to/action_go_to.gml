/// @function action_go_to()

//TODO: Hack solve and make a single picker!!!
switch(argument0.sprite_index ) {
	case spr_door:
		
		instance_create_layer(room_width/2, room_height/2, "layer_dialog", obj_room_picker)
		break;
	case spr_stairs_1:
		instance_create_layer(room_width/2, room_height/2, "layer_dialog", obj_room_picker_inside)
		break;
	case spr_stairs_2:
		var instance = instance_create_layer(room_width/2, room_height/2, "layer_dialog", obj_room_picker_inside)
		break;
}

