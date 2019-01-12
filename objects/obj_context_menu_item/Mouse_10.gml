/// @description Insert description here
// You can write your code in this editor
if(action != action_go_to) {
	return;
}
var menuHolder = global.context_menu_engine.attachedObject;
room_picker = instance_create_layer(bbox_right - 10, bbox_top, "layer_dialog", obj_room_picker);
room_picker.depth = depth - 1;
room_picker.choiceList = menuHolder.locations;
room_picker.initiator = self;