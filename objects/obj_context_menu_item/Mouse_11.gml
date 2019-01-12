/// @description Insert description here
// You can write your code in this editor
if(action != action_go_to) {
	return;
}

if(!point_in_rectangle(mouse_x, mouse_y,
						room_picker.x,
						room_picker.y,
						room_picker.x + sprite_get_width(spr_room_picker_item),
						room_picker.y + sprite_get_height(spr_room_picker_item) * ds_list_size(room_picker.choiceList))) {
	instance_destroy(room_picker);
}